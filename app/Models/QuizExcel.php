<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuizExcel extends Model
{
    protected $table = null;

    protected $guarded = [];

    // public function setTable($tableName)
    // {
    //     $this->table = $tableName;
    // }

    // public function scopeTable($query, $tableName)
    // {
    //     $query->getQuery()->from = $tableName;
    //     return $query;
    // }

    public function __construct(array $attributes = [])
    {
        parent::construct($attributes);
        if (array_key_exists('table', $attributes)) {
            $this->setTable($attributes['table']);
        } else {
            // do staff when table is not specified 
        }
    }


    // public function scopeTable($query, $tableName)
    // {
    //     $query->from($tableName);
    // }



    
}
