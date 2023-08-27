<?php

namespace App\Imports;

use App\Models\QuizExcel;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class QuizExcelImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        
        return new QuizExcel([
            'quiz_question' => $row['quiz_question'],
            'quiz_option_1' => $row['quiz_option_1'],
            'quiz_option_2' => $row['quiz_option_2'],
            'quiz_option_3' => $row['quiz_option_3'],
            'quiz_option_4' => $row['quiz_option_4'],
            'quiz_answer'   => $row['quiz_answer'],
            'quiz_remarks' => $row['quiz_remarks']
        ]);
    }
}
