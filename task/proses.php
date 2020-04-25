<?php 

include '../koneksi.php';

session_start();

if(isset($_POST["btn"])){
     $id_status=$_POST["id"];
$range=38;
$time=date("Y-m-d");
$sql=mysqli_query($connect,'SELECT id_tempat FROM user');
$sql=mysqli_fetch_assoc($sql);
$tempat=$sql["id_tempat"];
$id_admin=$_SESSION["id"];
$keterangan="Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelepon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat.";
$cek=mysqli_query($connect,"SELECT * from karantina where id_petugas=$id_admin and tanggal='$time' ");
$cek=mysqli_fetch_assoc($cek);
if(isset($cek)){
mysqli_query($connect,"UPDATE karantina SET id_status=$id_status,suhu=$range,id_tempat=$tempat,keterangan='$keterangan' where id_petugas=$id_admin and tanggal='$time' ");
header("location:http://localhost/covid/index.php");
}
else{
  mysqli_query($connect,"INSERT INTO karantina VALUES('',$id_admin,$id_status,$range,$tempat,'$time','$keterangan')");

$count=mysqli_affected_rows($connect);

            if($count == 1){
header("location:http://localhost/covid/index.php");
            }else{
                header("location:http://localhost/covid/index.php");
                }
    }
}

elseif(isset($_POST["btn3"])){
    $id_status=$_POST["id"];
    $range=$_POST["range"];
    $tempat=$_POST["tempat"];
$time=date("Y-m-d");
$id_admin=$_SESSION["id"];


$cek=mysqli_query($connect,"SELECT * from karantina where id_petugas=$id_admin and tanggal='$time' ");
$cek=mysqli_fetch_assoc($cek);
if(isset($cek)){
    if($range>=38){
        
$keterangan="Status Tidak Valid.Silahkan kunjungi dokter terdekat yang ada didaerah kalian.";
mysqli_query($connect,"UPDATE karantina SET id_status=$id_status,suhu=$range,id_tempat=$tempat,keterangan='$keterangan' where id_petugas=$id_admin and tanggal='$time' ");
header("location:http://localhost/covid/index.php");
    }
    else{
        $keterangan="Tetap berada dirumah dan selalu jaga kondisi anda:)";
        mysqli_query($connect,"UPDATE karantina SET id_status=$id_status,suhu=$range,id_tempat=$tempat,keterangan='$keterangan' where id_petugas=$id_admin and tanggal='$time' ");
        header("location:http://localhost/covid/index.php");
    }
}
else{
    if($range>=38){
    $id_status=1;
$keterangan="Status Tidak Valid.Silahkan kunjungi dokter terdekat yang ada didaerah kalian.";
mysqli_query($connect,"INSERT INTO karantina VALUES('',$id_admin,$id_status,$range,$tempat,'$time','$keterangan')");
    }
    else{
    $keterangan="Tetap berada dirumah dan selalu jaga kondisi anda:)";
    mysqli_query($connect,"INSERT INTO karantina VALUES('',$id_admin,$id_status,$range,$tempat,'$time','$keterangan')");  
    }
$count=mysqli_affected_rows($connect);

if($count == 1){
    header("location:http://localhost/covid/index.php");
  
    }else{
        header("location:http://localhost/covid/index.php");
         }
    }

}



?>