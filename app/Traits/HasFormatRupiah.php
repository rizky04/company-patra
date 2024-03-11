<?php
namespace App\Traits;

trait HasFormatRupiah{
    function formatRupiah($filed, $prefix = null){
        $prefix = $prefix ? $prefix : 'Rp. ';
        $nominal = $this->attributes[$filed];
        return $prefix . number_format($nominal, 0, ',', '.');
    }
}
?>
