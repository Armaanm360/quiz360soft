<?php

namespace App\Http\Controllers\SubjectiveQuiz;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class QuizController extends Controller
{

    public function createSubjectiveQuiz($id)
    {
        $data['info'] = DB::table('subjective_quiz_table')->where('subjective_sub_id', $id)->get();
        $data['sub_info'] = DB::table('college_subject')->where('college_sub_id', $id)->get();
        return view('admin.pages.quiz.subjective-quiz', $data);
    }

    public function createSubjectiveQuizPost(Request $request)
    {
        // echo '<pre>';
        // print_r($request->all());
        // die;





        $table_name = $request->table_name_prefix;
        $sub_name   = substr($request->quiz_name, 0, 3);
        $qui_code   = $request->quiz_code;
        $qui_number   = $request->quiz_number;
        $question_table = strtolower($table_name . '_' . $sub_name . '_' . $qui_code . '_' . $qui_number . '_' . 'question');
        $answer_table = strtolower($table_name . '_' . $sub_name . '_' . $qui_code . '_' . $qui_number . '_' . 'answer');
           

        $createTableSqlString = "CREATE TABLE $question_table (
              quiz_id INT AUTO_INCREMENT primary key NOT NULL,
              quiz_code varchar(255),
              quiz_sub_name varchar(255),
              quiz_sub_id varchar(255),
              quiz_question LONGTEXT,
              quiz_option_1 LONGTEXT,
              quiz_option_2 LONGTEXT,
              quiz_option_3 LONGTEXT,
              quiz_option_4 LONGTEXT,
              quiz_answer LONGTEXT,
              quiz_remarks LONGTEXT)";










        $createTableSqlStringAnswer = "CREATE TABLE $answer_table (quiz_ans_id INT AUTO_INCREMENT primary key NOT NULL,";

        for ($i = 1; $i <= $qui_number; $i++) {
            $createTableSqlStringAnswer .= " ans_$i LONGTEXT,";
        }

        $createTableSqlStringAnswer .= "takentime FLOAT,answerd_by int(11),right_ans int(11),wrong_ans int(11),skipped_ans int(11),total_marks int(11))";

        DB::statement($createTableSqlString);
        DB::statement($createTableSqlStringAnswer);
        DB::table('subjective_quiz_table')->insert([
            'subjective_sub_id' => $request->quiz_sub_name,
            'quiz_creator_id' => 2,
            'quiz_number' => $request->quiz_number,
            'quiz_code'      => $request->quiz_code,
            'question_table'    => $question_table,
            'answer_table'      => $answer_table,
            'subjective_quiz_name' => $request->quiz_name,
            'quiz_time'         => $request->quiz_time,
            'quiz_result_hour'  => str_replace('T',',', $request->quiz_result_hour)

        ]);
        
    }


    /* subwise collect data */


    public function quizData()
    {

        $data = DB::table('subjective_quiz_table')->get();
        return DataTables::of($data)->addColumn('namelink', function ($data) {
            return '<a href="' . url('create-subjective-question', $data->subjective_quiz_id) . '" class="btn btn-sm btn-outline-info" newattr="' . $data->subjective_quiz_id . '">' . "Create Question" . '</a>';
        })->rawColumns(['namelink'])->addIndexColumn()->make();
    }





}
