<?php

namespace App\Traits;

use Illuminate\Http\JsonResponse;

trait ApiHelpers
{
    protected function isAdmin($user): bool
    {
        if (!empty($user)) {            
            $role_id = '25e162e8-0450-44be-8ab8-b88abc007ca7';
            if($role_id === $user->role_id){
                return true;
            }            
        }

        return false;
    }

    protected function isProductOwner($user): bool
    {

        if (!empty($user)) {            
            $role_id = '1379cf73-7b7d-4ac7-a39d-13e5af17aef4';
            if($role_id === $user->role_id){
                return true;
            }            
        }

        return false;
    }

    protected function isTeamMember($user): bool
    {
        if (!empty($user)) {            
            $role_id = '71fd4c65-b7e0-448c-a2d6-f2d28f482ebc';
            if($role_id === $user->role_id){
                return true;
            }            
        }

        return false;
    }

    protected function onSuccess($data, string $message = '', int $code = 200): JsonResponse
    {
        if(empty($data))
        {
            $message = 'No data found';
            $data = array();
        }
        return response()->json([
            'status' => $code,
            'message' => $message,
            'data' => $data,
        ], $code);
    }

    protected function onError(int $code, string $message = ''): JsonResponse
    {
        return response()->json([
            'status' => $code,
            'message' => $message,
        ], $code);
    }

    protected function postValidationRules(): array
    {
        return [
            'title' => 'required|string',
            'content' => 'required|string',
        ];
    }

    protected function userValidatedRules(): array
    {
        return [
            'name' => ['required'],
            'email' => ['required'],
            'password' => ['required'],
        ];
    }
}