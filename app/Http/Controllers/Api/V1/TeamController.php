<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Validator;
use App\Traits\ApiHelpers;

use App\Models\Task;
use App\Models\UserProject;

class TeamController extends Controller
{
    use ApiHelpers;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $user_id = $request->user()->id;
        if ($this->isTeamMember($request->user())) {
            $data = Task::where('user_id', $user_id)->get();
            return $this->onSuccess($data, 'Tasks Retrieved');
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, $id)
    {
        if ($this->isTeamMember($request->user())) {
            $data = Task::find($id);
            return $this->onSuccess($data, 'Task Retrieved');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if ($this->isTeamMember($request->user())) {

            $input = $request->all();
            $task_inputs = array(
                'title'=>$input['title'],
                'description'=>$input['description'],
                'status'=>$input['status']
            );

            $validator = Validator::make($task_inputs, [ 
                'title' => 'required',
                'status'=> 'required'
            ]);
            if ($validator->fails()) { 
                return $this->onError(400, $validator->errors());            
            }

            $task = Task::find($id);
            $data = $task->update($task_inputs);
            return $this->onSuccess($task, 'Task Updated');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
