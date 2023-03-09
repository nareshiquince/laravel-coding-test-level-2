<?php

namespace Tests\Feature;

use Laravel\Sanctum\Sanctum;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

use App\Models\Project;
use App\Models\User;
use App\Models\Task;
use App\Models\UserProject;
use Carbon\Carbon;

class ProjectTest extends TestCase
{
    /**
     * A feature test to add a user
     *
     * @return void
     */
    public function test_for_add_user()
    {
        $user=array(
            'username' => rand(),
            'password' => bcrypt('testing123'),
            'role_id' => "71fd4c65-b7e0-448c-a2d6-f2d28f482ebc",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        );

        $suser=array(
            'username' => rand(),
            'password' => bcrypt('testing123'),
            'role_id' => "25e162e8-0450-44be-8ab8-b88abc007ca7",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        );

        Sanctum::actingAs(User::create($suser));
        $this->json('POST', 'api/v1/users', $user)
             ->assertStatus(200);
    }

    /**
     * A feature test to add project and assign two users
     *
     * @return void
     */
    public function test_for_add_project()
    {
        $project_data=array(
            'name' => rand(),
            'assign_users'=>array("e4e794ee-e84e-44e9-99da-baa8b0123954", "d562c5bf-a272-4696-a0d4-50ca7652f58c"),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        );

        $suser=array(
            'username' => rand(),
            'password' => bcrypt('testing123'),
            'role_id' => "1379cf73-7b7d-4ac7-a39d-13e5af17aef4",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        );

        Sanctum::actingAs(User::create($suser));
        $this->json('POST', 'api/v1/project', $project_data)
             ->assertStatus(200);
    }

    /**
     * A feature test for User change the status of a task assigned to themselves
     *
     * @return void
     */
    public function test_for_change_task_status()
    {
        $user=array(
            'username' => rand(),
            'password' => bcrypt('testing123'),
            'role_id' => "71fd4c65-b7e0-448c-a2d6-f2d28f482ebc",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        );

        $saved_member = User::create($user);
        Sanctum::actingAs($saved_member);

        $project = Project::create([
            'name' => rand(),
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        $task = Task::create([
            'title' => rand(),
            'description' => "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            'status' =>'NOT_STARTED',
            'project_id' =>$project->id,
            'user_id' =>$saved_member->id,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        $task_data=array(
            'title' => $task->title,
            'description'=>$task->description,
            'status'=>'READY_FOR_TEST',
            'updated_at' => Carbon::now()
        );

        
        $this->json('PUT', 'api/v1/team/'.$task->id, $task_data)
             ->assertStatus(200);
    }

}
