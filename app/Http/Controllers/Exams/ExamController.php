<?php

namespace App\Http\Controllers\Exams;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class ExamController extends Controller
{
    public function enrolledExams()
    {
        $data['subject'] = DB::table('college_subject')->get();
        return view('admin.pages.quiz.exams',$data);
    }

    public function studetnQuizes($subject_id)
    {
        $data['subject'] = DB::table('subjective_quiz_table')->where('subjective_sub_id',$subject_id)->get();
        $table_name = $data['subject'][0]->answer_table;
        $data['check'] = DB::table($table_name)->where('answerd_by',Auth::user()->id)->count();
        return view('admin.pages.quiz.exams_quizes',$data);
    }
}
