<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\DB;
use File;

class SocialController extends Controller
{
    public function facebookRedirect()
    {
        return Socialite::driver('facebook')->redirect();
    }

    public function loginWithFacebook()
    {
        $user = Socialite::driver('facebook')->stateless()->user();
        $fileContents = file_get_contents($user->getAvatar());
        File::put(public_path() . '/user_images/' . $user->getId() . ".jpg", $fileContents);
        $userid = $user->name . rand(99, 9999);
        //To show picture 
        $picture = '/' . $user->getId() . ".jpg";
        $finduser = User::where('facebook_id', $user->id)->first();
        if ($finduser) {
            Auth::login($finduser);
            return redirect('/home');
        } else {
            $new_user = new User();
            $new_user->name = $user->name;
            $new_user->email = $user->email;
            $new_user->facebook_id = $user->id;
            $new_user->password = bcrypt('123456');
            $new_user->user_type = 'student';
            $new_user->image = $picture;
            $new_user->role = 18;
            $new_user->user_id = str_replace(' ', '_', $userid);
            $new_user->status = true;
            $new_user->save();
            Auth::login($new_user);
            return redirect('/home');
        }
    }

    public function googleRedirect()
    {
        return Socialite::driver('google')->redirect();
    }

    public function loginWithGoogle()
    {

        $user = Socialite::driver('google')->stateless()->user();
        $fileContents = file_get_contents($user->getAvatar());
        File::put(public_path() . '/user_images/' . $user->getId() . ".jpg", $fileContents);

        $userid = $user->name . rand(99, 9999);

        //To show picture 
        $picture = '/' . $user->getId() . ".jpg";
        $finduser = User::where('google_id', $user->id)->first();
        if ($finduser) {
            Auth::login($finduser);
            return redirect('/home');
        } else {


            $new_user = new User();
            $new_user->name = $user->name;
            $new_user->email = $user->email;
            $new_user->google_id = $user->id;
            $new_user->password = bcrypt('123456');
            $new_user->user_type = 'student';
            $new_user->image = $picture;
            $new_user->user_id = str_replace(' ', '_', $userid);
            $new_user->status = true;
            $new_user->save();
            DB::table('users_roles')->insert(['user_id' => $new_user->id, 'role_id' => 19]);
            DB::table('user_type')->insert(['sl_user_id' => $new_user->id]);
            Auth::login($new_user);
            return redirect('/home');
        }
    }
}
