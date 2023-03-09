<?php

namespace App\Http\Controllers\API\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\JsonResponse;
use Validator;
use App\Traits\ApiHelpers;

use App\Models\User;

class UserController extends Controller
{
    use ApiHelpers;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($this->isAdmin($request->user())) {
            $data = User::all();
            return $this->onSuccess($data, 'Users Retrieved');
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
        if ($this->isAdmin($request->user())) {
            $validator = Validator::make($request->all(), [ 
                'username' => 'required',
                'password' => 'required',
                'role_id' => 'required',
            ]);
            if ($validator->fails()) { 
                return $this->onError(400, $validator->errors());            
            }
            $input = $request->all();
            $input['password'] = bcrypt($input['password']); 
            $data = User::create($input);

            return $this->onSuccess($data, 'User Created');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request , $id)
    {
        if ($this->isAdmin($request->user())) {
            $data = User::find($id);
            return $this->onSuccess($data, 'User Retrieved');
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
        if ($this->isAdmin($request->user())) {

            $validator = Validator::make($request->all(), [ 
                'username' => 'required'
            ]);
            if ($validator->fails()) { 
                return $this->onError(400, $validator->errors());            
            }

            $user = User::find($id);
            $data = $user->update($request->all());
            return $this->onSuccess($user, 'User Updated');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        if ($this->isAdmin($request->user())) {
            $user = User::find($id);
            $user->delete();
            return $this->onSuccess($user, 'User Deleted');
        }

        return $this->onError(401, 'Unauthorized Access'); 
    }
}
