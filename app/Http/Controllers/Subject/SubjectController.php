<?php

namespace App\Http\Controllers\Subject;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class SubjectController extends Controller
{
    public function createSubject()
    { 
        $data['division'] = DB::table('college_division')->get();
        // $data['subject'] = DB::table('college_subject')->get();

        // // return response()->json([
        // //      'data'=> $data

        // // ]);

        // return DataTables::of($data)->addIndexColumn()->make();
        return view('admin.pages.quiz.subject',$data);

    }
    public function showSubject()
    { 
        $division = DB::table('college_division')->get();
        $data = DB::table('college_subject')->join('college_division', 'college_division.college_div_id','=', 'college_subject.college_subject_div')->get();
        return DataTables::of($data)->addColumn('namelink', function ($data) {
    return '<a href="' . url('create-subjective-quiz', $data->college_sub_id) .'" class="btn btn-sm btn-outline-info" newattr="'.$data->college_sub_id.'">'."Create Quiz".'</a>'; 
})->rawColumns(['namelink'])->addIndexColumn()->make();

    }

    public function postSubject(Request $request)
    {

        DB::table('college_subject')->insert([

            'college_subject_name'  => $request->college_subject_name,
            'college_subject_div'   => $request->college_subject_div,
            'college_subject_desc'  => $request->college_subject_desc,
            'college_subject_code'  => $request->college_subject_code,
        ]);

        
        
    }
    
     public function proman()
    {
       // return "pro";

        return view('admin.pages.quiz.admin-main');
    }


    public function addVerfied()
    {
        $data['subject'] = DB::table('subjective_quiz_table')->get();
        return view('admin.pages.quiz.add-verified-user',$data);
    }

    public function addVerfiedStore(Request $request)
    {
        $request->validate([
            'user_number' => 'required|unique:check_user_table',
            'sub_id' => 'required',
        ]);

        DB::table('check_user_table')->insert([

            'user_number'  => $request->user_number,
            'sub_id'  => $request->sub_id,


        ]);
    }

    public function varifiedList()
    {
        $data['check'] = DB::table('check_user_table')->where('status',1)->get();
       // $data['subject'] = DB::table('college_subject')->get();
        return view('admin.pages.quiz.verified-user-list', $data);
    }


    public function editVerfied($id)
    {
        $data['check'] = DB::table('check_user_table')->where('check_user_id',$id)->where('status', 1)->first();
        $data['subject'] = DB::table('subjective_quiz_table')->get();
       // $data['subject'] = DB::table('college_subject')->get();
        return view('admin.pages.quiz.verified-user-edit', $data);
    }

    
    public function deleteVerfied($id)
    {
        $data['check'] = DB::table('check_user_table')->where('check_user_id',$id)->update([
            'status' => 0
        ]);
        // $data['subject'] = DB::table('subjective_quiz_table')->get();
       // $data['subject'] = DB::table('college_subject')->get();
        return redirect()->route('list-get');
    }
    
    
    
  public function updateVarified(Request $request,$id)
    {
     DB::table('check_user_table')->where('check_user_id',$request->check_user_id)->update([
            'user_number' => $request->user_number,
            'sub_id'     =>$request->sub_id
        ]);

    }
}
