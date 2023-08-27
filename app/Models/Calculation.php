<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class Calculation extends Model
{

    public $timestamps = false;

    // turn off only updated_at
    const UPDATED_AT = false;

    public function getGrad($acheived, $total)
    {
        // return $acheived_percentage = ($acheived * 100) / $total;
        // die;


        $grad_f = $total * (32.99 / 100);
        $grad_d = $total * (39.99 / 100);
        $grad_c = $total * (49.99 / 100);
        $grad_b = $total * (59.99 / 100);
        $grad_a_minus = $total * (69.99 / 100);
        $grad_a = $total * (79.99 / 100);
        $grad_a_plus = $total * (99.99 / 100);



        // if ($acheived <= $grad_f) {
        //     return "Fail";
        // }elseif ($acheived > $grad_f and $acheived <= $grad_d) {
        //     return "D";
        // }elseif($acheived > $grad_d and $acheived <= $grad_c){
        //     return "C";
        // }elseif($acheived > $grad_c and $acheived <= $grad_b){
        //     return "B";
        // }elseif($acheived > $grad_b and $acheived <= $grad_a_minus){
        //     return "A-";
        // }elseif ($acheived > $grad_a_minus and $acheived <= $grad_a) {
        //     return "A";
        // }elseif ($acheived > $grad_a and $acheived <= $grad_a_plus) {
        //     return "A+";
        // }elseif ($acheived == $total) {
        //     return "A+";
        // }

        if ($acheived == $total) {
            return "A+";
        }elseif($acheived > $grad_a and $acheived <= $grad_a_plus){
            return "A+";
        }elseif($acheived > $grad_a_minus and $acheived <= $grad_a){
            return "A";
        }elseif ($acheived > $grad_b and $acheived <= $grad_a_minus) {
           return "A-";
        }elseif ($acheived > $grad_c and $acheived <= $grad_b) {
            return "B";
        }elseif ($acheived > $grad_d and $acheived <= $grad_c) {
            return "C";
        }elseif ($acheived > $grad_f and $acheived <= $grad_d) {
            return "D";
        }
        else{
            return "F";
        }



        // switch ($acheived) {
        //     case $acheived <= $grad_f:
        //         return "Fail";
        //         break;
        //     case $acheived > $grad_f and $acheived <= $grad_d:
        //         return "D";
        //         break;
        //     case $acheived > $grad_d and $acheived <= $grad_c:
        //         return "C";
        //         break;
        //     case $acheived > $grad_c and $acheived <= $grad_b:
        //         return "B";
        //         break;
        //     case $acheived > $grad_b and $acheived <= $grad_a_minus:
        //         return "A-";
        //         break;
        //     case $acheived > $grad_a_minus and $acheived <= $grad_a:
        //         return "A";
        //         break;
        //     case $acheived > $grad_a and $acheived <= $grad_a_plus:
        //         return "A+";
        //         break;
        // }
    }
}
