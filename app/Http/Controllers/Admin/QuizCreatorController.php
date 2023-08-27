<?php

namespace App\Http\Controllers\Admin;

use App\Events\Notification;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Session;


class QuizCreatorController extends Controller
{
    public function QCupdate(Request $request)
    {



        $user = new User;
        $oldimage = User::where('id',Auth::user()->id)->get();
        if ($request->company_image) {
            $imageName = time() . '.' . $request->company_image->extension();
            $request->company_image->move(public_path('user_images'), $imageName);
            $user->image = $imageName;
            DB::table('users')->where('id', $request->q_creator_id)->update([
                'user_category' => 100,
                'image'         => $imageName

            ]);

            DB::table('company_table')->insert([
                'q_creator_id'          => $request->q_creator_id,
                'creator_type'          => $request->creator_type,
                'company_name'          => $request->company_name,
                'creator_email'         => $request->creator_email,
                'company_phone'         => $request->company_phone,
                'company_image'         => $imageName

            ]);

            DB::table('user_type')->update([
                'user_status' => true

            ]);
            
        }else{
            DB::table('user_type')->update([
                'user_status' => true

            ]);

            DB::table('company_table')->insert([
                'q_creator_id'          => $request->q_creator_id,
                'creator_type'          => $request->creator_type,
                'company_name'          => $request->company_name,
                'creator_email'         => $request->creator_email,
                'company_phone'         => $request->company_phone,
                'company_image'         => $oldimage[0]->image

            ]);

        }



        // $to_user_data = Auth::user()->id;
        // $sendNotification = Auth::user()->name . "has appointed as Creator.";
        // $link = 'https://quiz360.online/';
        // event(new Notification(\Illuminate\Support\Facades\Auth::user()->id, $to_user_data, $sendNotification, $link));
        // Session::put(['title' => 'Alert', 'message' =>  'Form has been updated successfully!']);






        // return redirect()->back();
    }
}
