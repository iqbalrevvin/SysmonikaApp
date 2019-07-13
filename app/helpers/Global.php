<?php

function valueIdentity($value){
    if ($value == NULL) {
        $val = 'Perlu Diperbarui';
    }else{
        $val = $value; 
    }
    return $val;
}

function valueIdentityCapil($value){
    if ($value == NULL) {
        $val = 'Belum Diperbarui Oleh Admin';
    }else{
        $val = $value; 
    }
    return $val;
}