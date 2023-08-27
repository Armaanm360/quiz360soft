<?php

namespace App\Http\Controllers\Certificate;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class CertificateController extends Controller
{
    public function viewCertificate($quizid,$userid)
    {
        $table_info = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $quizid)->get();
        $data['info'] = DB::table('subjective_quiz_table')->where('subjective_quiz_id', $quizid)->get();
        $data['subject'] = $table_info[0];

        $answer_table = $table_info[0]->answer_table;
        $data['users_get'] = DB::table($answer_table)->where('answerd_by',$userid)->get();

       return view('admin.pages.certificate.certificate',$data);
    }
}
