<?php

namespace App\Http\Controllers\Result;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class ResultController extends Controller
{
    public function combinedResult($id)
    {
        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $id)->get();
        $data['subject'] = $table_info[0];
        $answer_table = $table_info[0]->answer_table;
        $data['users_get'] = DB::table($answer_table)->orderBy('total_marks','desc')->orderBy('takentime', 'asc')->groupBy('answerd_by')->get();

        return view('admin.pages.quiz.comb_result', $data);

      
    }
    public function individualResult($id,$user_id)
    {
        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $id)->get();
        $data['subject'] = $table_info[0];
        $answer_table = $table_info[0]->answer_table;
        $data['users_get'] = DB::table($answer_table)->where('answerd_by',Auth::user()->id)->get();
        $data['max'] = DB::table($answer_table)->max('total_marks');
        $all = DB::table($answer_table)->select('total_marks')->orderBy('total_marks', 'desc')->get();
        $all_arr = json_decode(json_encode($all, true), true);
        $all_values = array_column($all_arr,'total_marks');


        $data['get_position'] = array_search($data['users_get'][0]->total_marks,$all_values);




        //$meows = array_keys($all_values);
        // echo '<pre>';
        // print_r($get_position);
        // die;

        return view('admin.pages.quiz.indiv_result', $data);

      
    }
        public function getLeaderBoard($id)
    {
        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $id)->get();
        
        
        $data['subject'] = $table_info[0];
        $answer_table = $table_info[0]->answer_table;
        
        
        // $data['users_get'] = DB::table($answer_table)->where('answerd_by',Auth::user()->id)->get();
        // $data['max'] = DB::table($answer_table)->max('total_marks');
        // $all = DB::table($answer_table)->select('total_marks')->orderBy('total_marks', 'desc')->get();
        // $all_arr = json_decode(json_encode($all, true), true);
        // $all_values = array_column($all_arr,'total_marks');


        // $data['get_position'] = array_search($data['users_get'][0]->total_marks,$all_values);




        //$meows = array_keys($table_info);
        echo '<pre>';
        print_r($answer_table);
        die;

        return view('admin.pages.quiz.indiv_result', $data);

      
    }
    
    
}
