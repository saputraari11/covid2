<?php
include "asset/header.php";
?>
<div class="container-fluid">
    <div class="row content">
        <div class="col-md">
            <div class="container">
                <div class="row mt-5 " style="padding-bottom: 150px">
                    <div class="col-md-5">
                        <img src="asset/img/corona3.png" alt="" style="width: 350px;">
                    </div>
                    <div class="col-md-7 text-center">
                        <div class="div text-center pt-5 mt-2 pb-4">
                            <h1 class="text-white">Lebih jauh lagi mengenai corona</h1>
                        </div>
                        <a href="#corona" style="text-decoration: none;color:white"><button class="btn bt7 bg-tranparent" style="width:125px;border-radius:90px;">More</button></a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="row mt-5 pt-5" style="margin-bottom: 150px">
        <div class="container">

            <div class="row mb-5" id="corona">
                <div class="col-md-6 text-right">

                    <img src="asset/img/corona.jpg" alt="" style="width: 500px">
                    <?php
         if (isset($_SESSION["id"])) :

        ?>
                   <a href="http://localhost/covid/task/task.php"><button class="btn bt5 btn-tranparent mt-5" style="border-radius:90px;width:200px">Check Self</button></a> 
                   <?php endif;?>
                   <?php
         if (!isset($_SESSION["id"])) :

        ?>
                   <a href="http://localhost/covid/login/form-login.php"><button class="btn bt5 btn-tranparent mt-5" style="border-radius:90px;width:200px">Check Self</button></a> 
                   <?php endif;?>
                </div>
                <div class="col-md-6">
                    <h1 class="text-center text-info" >Corona ?</h1>
                    <div class="mt-4" style="font-size: 25px">Coronavirus adalah kumpulan virus yang bisa menginfeksi sistem pernapasan. Pada banyak kasus, virus ini hanya menyebabkan infeksi pernapasan ringan, seperti flu. Namun, virus ini juga bisa menyebabkan infeksi pernapasan berat, seperti infeksi paru-paru (pneumonia).</div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5 pt-5" style="background-color: #F2F2F2;padding-bottom:250px">
        <div class="container mt-5">
            <div class="row text-center">
                <div class="col-md">
                    <h1 class="text-info">Gejala Secara Umum</h1>
                </div>
            </div>
            <div class="row text-center mt-5">
                <div class="col-md">
                    <img src="asset/img/gejala.svg" alt="" style="width: 350px">
                </div>
            </div>
            <div class="row mt-5 text-center">
                <div class="col-md-4">
                    <img src="asset/img/batuk.jpg" alt="">
                    <h1>Batuk</h1>
                </div>
                <div class="col-md-4">
                    <img src="asset/img/demam.jpg" alt="" style="width: 276px">
                    <h1>Demam</h1>
                </div>
                <div class="col-md-4">
                    <img src="asset/img/pilek.jpg" alt="" style="width: 276px">
                    <h1>Pilek</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5 pt-5" style="margin-bottom: 150px">
        <div class="container">

            <div class="row mb-5" id="corona">
                <div class="col-md-6">
                    <div class="mt-4" style="font-size: 20px">Segera lakukan isolasi mandiri bila Anda mengalami gejala infeksi virus Corona (COVID-19) seperti yang telah disebutkan di atas, terutama jika dalam 2 minggu terakhir Anda berada di daerah yang memiliki kasus COVID-19 atau kontak dengan penderita COVID-19.
                        terpapar virus Corona namun tidak mengalami gejala apa pun cukup tinggal di rumah selama 14 hari dan membatasi kontak dengan orang lain.

                        Melakukan pemeriksaan langsung oleh dokter, jangan langsung ke rumah sakit karena itu akan meningkatkan risiko Anda tertular atau menularkan virus Corona ke orang lain. Anda bisa membuat janji konsultasi dengan dokter di rumah sakit dengan menghubungi dokter-dokter terdekat.</div>
                </div>
                <div class="col-md-6 text-right">
                    <h1 style="margin-top: -20px" class="text-info">Mengapa harus ke dokter ?</h1>
                    <img src="asset/img/doccon.svg" alt="" style="width: 500px" class="mt-5">

                </div>

            </div>
        </div>
    </div>
    <div class="row mt-5 pt-5" style="background-color: #F2F2F2;padding-bottom:250px">
        <div class="container mt-5">
            <div class="row text-center">
                <div class="col-md">
                    <h1 class="text-info">Pencegahan</h1>
                </div>
            </div>
            <div class="row mt-5 text-center ml-3">
                <div class="col-md-2 mr-5">
                    <img src="asset/img/distanc.svg" alt="" style="width: 150px">
                    <h4>Sosial Disctancing</h4>
                </div>
                <div class="col-md-2  mr-3">
                    <img src="asset/img/clean.png" alt="" style="width: 130px">
                    <h4>Mencuci Tangan</h4>
                </div>
                <div class="col-md-2  mr-3">
                    <img src="asset/img/bersih.png" alt="" style="width: 175px">
                    <h4>Jaga Kebersihan</h4>
                </div>
                <div class="col-md-2  mr-5">
                    <img src="asset/img/daya.png" alt="" style="width: 130px">
                    <h4>Tingkatkan Daya Tahan Tubuh</h4>
                </div>
                <div class="col-md-2">
                    <img src="asset/img/masker.png" alt=""style="width: 130px">
                    <h4>Menggunakan Masker</h4>
                </div>
            </div>
        </div>
    </div>
    </div>
   
</div>
<?php
include "asset/footer.php";
?>