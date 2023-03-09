<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Validator;
use App\Traits\ApiHelpers;

use App\Models\Project;
use App\Models\UserProject;

class ProjectController extends Controller
{
    use ApiHelpers;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($this->isProductOwner($request->user())) {
            $data = Project::all();
            return $this->onSuccess($data, 'Projects Retrieved');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($this->isProductOwner($request->user())) {
            $input = $request->all();
            $name = $input['name'];

            $validator = Validator::make(array('name'=>$name), [ 
                'name' => 'required'
            ]);
            if ($validator->fails()) { 
                return $this->onError(400, $validator->errors());            
            }
            
            $data = Project::create(array('name'=>$name));
            
            if(!empty($input['assign_users']))
            {
                $assign_data=array();
                $assign_users = $input['assign_users'];
                foreach($assign_users as $au)
                {
                    $assign_data[] = array(
                        'project_id'=>$data->id,
                        'user_id'=>$au
                    );
                }
                UserProject::insert($assign_data);
            }

            return $this->onSuccess($data, 'Project Created');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request , $id)
    {
        if ($this->isProductOwner($request->user())) {
            $data = Project::find($id);
            return $this->onSuccess($data, 'Project Retrieved');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if ($this->isProductOwner($request->user())) {

            $input = $request->all();
            $name = $input['name'];

            $validator = Validator::make(array('name'=>$name), [ 
                'name' => 'required'
            ]);
            if ($validator->fails()) { 
                return $this->onError(400, $validator->errors());            
            }

            $project = Project::find($id);
            $data = $project->update($request->all());
            return $this->onSuccess($project, 'Project Updated');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($this->isProductOwner($request->user())) {
            UserProject::where("project_id", $id)->delete();
            $project = Project::find($id);
            $project->delete();
            
            return $this->onSuccess($project, 'Project Deleted');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }
}
