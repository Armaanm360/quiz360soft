<?php

namespace App\Http\Controllers\Answer;

use Rakibhstu\Banglanumber\NumberToBangla;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class AnswerController extends Controller
{
    public function seeAnswers($id)
    {
        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $id)->get();
        $question_table = $table_info[0]->question_table;
        $answer_table = $table_info[0]->answer_table;
        $data['answers'] = DB::table($question_table)->get();
        $data['assanswers']= json_decode(json_encode($data['answers']), true);

/* information */
        $data['quiz_name'] = $table_info[0]->subjective_quiz_name;
        $subject_id = $table_info[0]->subjective_sub_id;
        $get_subject = DB::table('college_subject')->where('college_sub_id', $subject_id)->get();
        $data['subject_name'] = $get_subject[0]->college_subject_name;
        $get_division = $get_subject[0]->college_subject_div;
        $getting = DB::table('college_division')->where('college_div_id', $get_division)->get();
        $data['division'] = $getting[0]->college_division;



        $data['marks'] = $table_info[0]->quiz_number;
        $data['code'] = $table_info[0]->quiz_code;
/* information */

        $data['user_answers'] = DB::table($answer_table)->where('answerd_by', Auth::user()->id)->get();
        $user_array = json_decode(json_encode($data['user_answers'][0]), true);
        $user_array_slice = array_slice($user_array, 1, -5);
        $users_obj = json_decode(json_encode($user_array_slice));
        $svage     = json_encode($users_obj);
        $data['luts']      = json_decode($svage);

        return view('admin.pages.quiz.answers',$data);

    }
}
