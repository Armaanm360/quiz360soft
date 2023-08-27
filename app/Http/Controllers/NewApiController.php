<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Models\User;

use Illuminate\Support\Facades\DB;



class NewApiController extends Controller
{

    public function showUser($id = null)
    {
        if ($id == '') {
            $users = User::get();
            return response()->json(['users'=>$users],200);
        }else{
            $users = User::find($id);
            return response()->json(['users' => $users], 200);
        }
    }


    public function createNewQuiz(Request $request)
    {

          if ($request->isMethod('post')) {
           DB::table('quiz_ques')->insert([
                'question' => $request->question,
                'option_1' => $request->option_1,
                'option_2' => $request->option_2,
                'option_3' => $request->option_3,
                'option_4' => $request->option_4,
                'answer'   => $request->answer,
            ]);

            $message = 'Quiz Created Successfully';

            return response()->json(['message'=>$message],201);
          }


    }
}
