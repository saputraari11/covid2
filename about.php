<?php
include "asset/header.php";
?>
<div class="container-fluid">
    <div class="row about">
        <div class="col-md">
            <div class="container">
                <div class="row " style="padding-bottom: 150px">
                    <div class="col-md text-center">
                        <div class="div text-center pt-5 mt-2 pb-4">
                            <h1 style="color:#24FE41">CHECK YOURSELF</h1>
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
                    Our Hope
                    </div>
                </div>
            </div>
            <div class="row mb-5 text-success">
            <div class="col-md-7">
            <img src="asset/img/cor.svg" alt="" style="width: 500px">
            </div>
                <div class="col-md-5 text-center">
<h5>Kita akan selalu membuat pengguna aplikasi akan selalu senang dengan pelayanan kita.melawan keadaan yang sedang melanda dunia hingga akhirnya kita akan kembali seperti keaadaan normal. </h5>
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
                    <h3>Guru Pembimbing</h3>
                </div>
            </div>
        </div>
        <div class="row text-center mb-4">
        <div class="col-md">
        <img src="asset/img/teach.svg" alt="" style="width: 600px">
        </div>
        </div>
        <div class="row mb-5 text-success">
            <div class="col-md-4">
                <h2>Whyna Agustin, S.Pd</h2>
            </div>
            <div class="col-md-4">
                <h2>Muhammad Sonhaji Akbar, M.Kom.</h2>

            </div>
            <div class="col-md-4">
                <h2>David Bayu Firmansyah, M.Kom.</h2>

            </div>
        </div>
    </div>
</div>

</div>
<?php
include "asset/footer.php";
?>