<?php

namespace App\Http\Controllers\ModelTest;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\ModelTest;
use Illuminate\Support\Facades\Auth;

class ModelTestController extends Controller
{
    public function createModelTest()
    {
        $data['division'] = DB::table('college_division')->get();
        $data['subject'] = DB::table('college_subject')->get();
        $data['modeltest'] = DB::table('model_test_table')->get();
        $data['fullinfo'] = DB::table('model_test_table')->join('mt_subject', 'mt_subject.model_test_id', '=', 'model_test_table.id')->join('subjective_quiz_table', 'subjective_quiz_table.subjective_sub_id','=', 'mt_subject.model_sub_id')->get();

        return view('admin.pages.quiz.modeltest', $data);
    }


    /* student model test */
    
    public function studentModelTest()
    {
        $data['division'] = DB::table('college_division')->get();
        $data['subject'] = DB::table('college_subject')->get();
        $data['modeltest'] = DB::table('model_test_table')->get();
        $data['fullinfo'] = DB::table('model_test_table')->join('mt_subject', 'mt_subject.model_test_id', '=', 'model_test_table.id')->join('subjective_quiz_table', 'subjective_quiz_table.subjective_sub_id', '=', 'mt_subject.model_sub_id')->get();

        // $data['subjective_quiz_table'] = DB::table('subjective_quiz_table')->whereIn('subjective_sub_id', array(9, 10, 11))->get();
        // echo '<pre>';
        // print_r($data['subjective_quiz_table']);
        // die;

        // $progress = 0;
        // foreach ($data['subjective_quiz_table'] as $key) {
        // // echo $key->answer_table;
        // $answerd_quiz = DB::table($key->answer_table)->where('answerd_by', Auth::user()->id)->count();
        //  $progress += $answerd_quiz;
        // }
        // return $progress;
        // die;

        // echo '<pre>';
        // print_r($data['fullinfo']);
        // die;
        return view('admin.pages.quiz.modeltest_stu', $data);
    }


    public function studentTestId($testid)
    {
        $data['division'] = DB::table('college_division')->get();
        $data['subject'] = DB::table('college_subject')->get();
        $data['modeltest'] = DB::table('model_test_table')->get();
        $data['fullinfo'] = DB::table('model_test_table')->join('mt_subject', 'mt_subject.model_test_id', '=', 'model_test_table.id')->join('subjective_quiz_table', 'subjective_quiz_table.subjective_sub_id', '=', 'mt_subject.model_sub_id')->where('model_test_id', $testid)->get();
        $total = 0; 
        foreach ($data['fullinfo'] as $protin) {
            $dollar = DB::table($protin->answer_table)->where('answerd_by', Auth::user()->id)->count();
            $total += $dollar;
         }
         $data['total'] = $total;


         $mt_subject = DB::table('mt_subject')->where('model_test_id',$testid)->get();
         $arraymt = json_decode(json_encode($mt_subject), true);
         $mtcolumn = array_column($arraymt, 'model_sub_id');
         $quizcount = DB::table('subjective_quiz_table')->whereIn('subjective_sub_id', $mtcolumn)->count();

         $userinfoget = DB::table('subjective_quiz_table')->whereIn('subjective_sub_id', $mtcolumn)->get();
         
         $finalcount = 0;
         foreach ($userinfoget as $currentuser) {
          $countsub =  DB::table($currentuser->answer_table)->where('answerd_by', Auth::user()->id)->count();
          $finalcount += $countsub;
         }

        return $gather = 100 / $quizcount;die;
          $finalcount * $gather;die;

       
         return $lovish = $gather* $finalcount; die;

        //  return $finalcount;die;
        // die;
        // echo '<pre>';
        // print_r($userinfoget);
        // die;
        return view('admin.pages.quiz.modeltest_quiz', $data);
    }







    public function selectedDivWiseSubject(Request $request)
    {
        // print_r($request->sub_form_id);die;
        $selected_div_id = '';
        $sub_forms = DB::table('college_subject')
        ->where('college_subject_div', $request->div_id)
            ->get();
        $output = '';
        foreach ($sub_forms as $row) {
            $output .= '<option value="' . $row->college_sub_id  . '">' . $row->college_subject_name . '</option>';
        }
            //   print_r($output);
        return $output;
    }


    public function postModelTest(Request $request)
    {

        $modelTest = new ModelTest;
        $modelTest->model_test_name = $request->model_test_name;
        $modelTest->model_test_division = $request->college_subject_div;
        $modelTest->pass_percen = $request->pass_per;
        $modelTest->save();

        $subjects = $request->selectdivget;

        foreach ($subjects as $row) {
            $data['model_test_id'] = $modelTest->id;
            $data['model_sub_id']  = $row;

            DB::table('mt_subject')->insert($data);
        }
    }
}
