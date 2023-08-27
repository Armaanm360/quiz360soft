<?php

namespace App\Http\Controllers\Question;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Imports\QuizExcelImport;
use Maatwebsite\Excel\Facades\Excel;

class QuestionController extends Controller
{
    public function createSubjectiveQuestion($id)
    {
        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $id)->get();
        $question_table = $table_info[0]->question_table;
        $data['info'] = DB::table($question_table)->get();
        $data['tabinfo'] = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $id)->get();
        $data['q_count'] = DB::table($question_table)->count();
        return view('admin.pages.quiz.question', $data);
    }

    public function createSubjectiveQuestionStore(Request $request)
    {
         $subjective_quiz_id = $request->subjective_quiz_id;

        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $subjective_quiz_id)->get();
        $question_table = $table_info[0]->question_table;
        // echo '<pre>';
        // print_r($question_table);
        // die;

        $question = DB::table($question_table)->insert([
            'quiz_question' => $request->quiz_question,
            'quiz_option_1' => $request->quiz_option_1,
            'quiz_option_2' => $request->quiz_option_2,
            'quiz_option_3' => $request->quiz_option_3,
            'quiz_option_4' => $request->quiz_option_4,
            'quiz_answer'   => $request->quiz_answer,
            'quiz_remarks'   => $request->quiz_remarks,
        ]);

        //   if ($request->hasFile('file')) {
        //         $path = $request->file('file')->getRealPath();
        //         $data = Excel::import(new QuizExcelImport, $path);

        //         // return $data;
        //   }
        // Excel::load($path)->get();

        // $question = DB::table($question_table)->insert([
        //     'quiz_question' => $request->quiz_question,
        //     'quiz_option_1' => $request->quiz_option_1,
        //     'quiz_option_2' => $request->quiz_option_2,
        //     'quiz_option_3' => $request->quiz_option_3,
        //     'quiz_option_4' => $request->quiz_option_4,
        //     'quiz_answer'   => $request->quiz_answer,
        //     'quiz_remarks'   => $request->quiz_remarks,
        // ]);

        // echo '<pre>';
        // print_r($question_table);
        // die;
    }

    /* test function */

    public function resetDb()
    {
       $question = DB::table('subjective_quiz_table')->select('question_table')->get();
       $answer = DB::table('subjective_quiz_table')->select('answer_table')->get();


       foreach ($question as $question) {
            $table = $question->question_table;
            $once = "DROP TABLE $table";
            DB::statement($once);
         
       }
       foreach ($answer as $answer) {
            $table = $answer->answer_table;
            $once = "DROP TABLE $table";
            DB::statement($once);
       }

      $trauncate_subjective = "TRUNCATE TABLE subjective_quiz_table";
      DB::statement($trauncate_subjective);

      $trauncate_college_subject = "TRUNCATE TABLE college_subject";
      DB::statement($trauncate_college_subject);


    }
}
