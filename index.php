<?php
include "asset/header.php";
?>
<div class="container-fluid">
    <div class="row pembuka">
        <div class="col-md">
            <div class="container">
                <div class="row " style="padding-bottom: 150px">
                    <div class="col-md text-center">
                        <div class="div text-center pt-5 mt-2 pb-4">
                            <h1 style="color: #FDFC47;">HELLO</h1>
                            <h1 style="color:#24FE41">EVERYBODY COME TO US CHECK HEALTY</h1>
                        </div>
                        <?php
                        if (isset($_SESSION["id"])) :

                        ?>
                            <a href="http://localhost/covid/task/task.php"><button class="btn bt1 bg-tranparent" style="width:125px;border-radius:90px;">CHECK</button></a>
                        <?php endif; ?>
                        <?php
                        if (!isset($_SESSION["id"])) :

                        ?>
                            <a href="http://localhost/covid/login/form-login.php"><button class="btn bt1 bg-tranparent" style="width:125px;border-radius:90px;">CHECK</button></a>
                        <?php endif; ?>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="row mt-5 " style="margin-bottom: 150px">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col-md text-wrap">
                    <div class="text-info">
                        <h3>Simple Products will make everyone happy when launching it</h3>
                    </div>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col-md-6">
                    <h4>About Us</h4>
                    <h2>The RPL Team Created Several Products That Are Always A New Technology</h2>
                    <div>
                        Projek kami kali ini menyangkut mengenai bagaimana seseorang tahu bahwa mereka terinfeksi corona atau disebut sebagai odp.tim RPL kali ini menciptakan sistem pengecekan corona dengan data dari dokter yang telah disebarkan melalui jejaring sosial media.
                    </div>
                    <a href="http://localhost/covid/about.php"> <button class="btn bt5 btn-tranparent mt-5" style="border-radius:90px;">About Us</button></a>
                </div>
                <div class="col-md-6">
                    <img src="asset/img/team.jpg" alt="" style="width: 500px">
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5 pt-5" style="background-color: #F2F2F2;padding-bottom:250px">
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6">
                    <h3>Corona</h3>
                    <div>Coronavirus adalah kumpulan virus yang bisa menginfeksi sistem pernapasan. Pada banyak kasus, virus ini hanya menyebabkan infeksi pernapasan ringan, seperti flu. Namun, virus ini juga bisa menyebabkan infeksi pernapasan berat, seperti infeksi paru-paru (pneumonia).</div>
                    <a href="http://localhost/covid/content.php"> <button class="btn bt6 btn-tranparent mt-5" style="border-radius:90px;">More <i class="fas fa-angle-double-right"></i></button></a>
                </div>
                <div class="col-md-6">
                    <img src="asset/img/corona.jpg" alt="" style="width: 500px">
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include "asset/footer.php";
?>