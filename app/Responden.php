<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Responden extends Model
{

    protected $fillable = [
        'user_id', 'nama', 'nik', 'tempat_lahir', 'tanggal_lahir', 'jenis_kelamin', 'alamat', 'jenis_kelamin',
        'alamat', 'rt', 'rw', 'desa', 'kecamatan', 'kabupaten', 'provinsi', 'agama', 'status_perkawinan', 'pekerjaan',
        'kewarganegaraan'
    ];

    public function StatusCode()
    {
        return $this->belongsTo(StatusCode::Class);
    }

    public function statusKTP()
    {
        $responden = $this;
        if($responden->status_code_id == NULL){
            $value = 'Pending';
        }else{
            $value = "<b class='primary-text'>".$responden->StatusCode->name."</b>";
        }
        return $value;
    }
}
