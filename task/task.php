<?php
include '../koneksi.php';

session_start();

$id_admin = $_SESSION["id"];
$time = date("Y-m-d");

// if ($ass1 != null) {
//     $_SESSION["suhu"] = $ass1["suhu"];
//     $_SESSION["tempat"] = $ass1["tempat"];
//     $_SESSION["status"] = $ass1["status"];
//     header("Location: http://localhost/siperpus/index.php");
// }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://localhost/covid/asset/jquery.js"></script>
    <link rel="stylesheet" href="http://localhost/covid/asset/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost/covid/asset/task.css">
    <link rel="stylesheet" href="http://localhost/covid/asset/fontawesome/css/all.min.css">
</head>

<body>


    <div class="modul mod1" id="modul" style="display: block">
        <div id="modul-content">
            <div class="modul-header d-flex justify-content bg-danger">
                <h1><i class="fas fa-plus"></i>Information</h1>

            </div>
            <div class="content justify-content-center">
                <div class="row ml-5" style="font-size:10px">
                    <h5>Apakah anda mengalami gejala dibawah ini?</h5>
                </div>
                <div class="row ml-5 mr-5" style="font-size:15px">
                    <?php
                    $sql = mysqli_query($connect, "SELECT kondisi1 from status where id_status=1");
                    $sql = mysqli_fetch_assoc($sql);
                    ?>
                    <p>
                        <?= $sql["kondisi1"] ?>
                    </p>
                </div>
            </div>
            <div class="modul-footer d-flex justify-content-end " id="mod1">
                <form action="proses.php" method="post">
                    <input type="text" name="id" value="1" hidden>
                    <button type="button" class="btn-danger clos" name="tidak">Tidak</button>
                    <button type="submit" class=" btn-primary  border-primary" name="btn">Iya</button>
                </form>
            </div>
        </div>
    </div>
    <div class="modul mod2" id="modul">
        <div id="modul-content">
            <div class="modul-header d-flex justify-content bg-danger">
                <h1><i class="fas fa-plus"></i>Information</h1>

            </div>
            <div class="content justify-content-center">
                <div class="row ml-5" style="font-size:10px">
                    <h5>Apakah anda mengalami gejala dibawah ini?</h5>
                </div>
                <div class="row ml-5 mr-5" style="font-size:15px">
                    <?php
                    $sql = mysqli_query($connect, "SELECT kondisi2 from status where id_status=1");
                    $sql = mysqli_fetch_assoc($sql);
                    ?>
                    <p>
                        <?= $sql["kondisi2"] ?>
                    </p>
                </div>
            </div>
            <div class="modul-footer d-flex justify-content-end " id="mod2">
                <form action="proses.php" method="post">
                    <input type="text" name="id" value="1" hidden>
                    <button type="button" class="btn-danger clos" name="tidak">Tidak</button>
                    <button type="submit" class=" btn-primary  border-primary" name="btn">Iya</button>
                </form>
            </div>
        </div>
    </div>
    <div class="modul mod3" id="modul">
        <div id="modul-content">
            <div class="modul-header d-flex justify-content bg-danger">
                <h1><i class="fas fa-plus"></i>Information</h1>

            </div>
            <div class="content justify-content-center">
                <div class="row ml-5" style="font-size:10px">
                    <h5>Apakah anda mengalami gejala dibawah ini?</h5>
                </div>
                <div class="row ml-5 mr-5" style="font-size:15px">
                    <?php
                    $sql = mysqli_query($connect, "SELECT kondisi1 from status where id_status=2");
                    $sql = mysqli_fetch_assoc($sql);
                    ?>
                    <p>
                        <?= $sql["kondisi1"] ?>
                    </p>
                </div>
            </div>
            <div class="modul-footer d-flex justify-content-end "id="mod3">
                <form action="proses.php" method="post">
                    <input type="text" name="id" value="2" hidden>
                    <button type="button" class="btn-danger clos" name="tidak">Tidak</button>
                    <button type="submit" class=" btn-primary  border-primary" name="btn">Iya</button>
                </form>
            </div>
        </div>
    </div>
    <div class="modul mod4" id="modul">
        <div id="modul-content">
            <div class="modul-header d-flex justify-content bg-danger">
                <h1><i class="fas fa-plus"></i>Information</h1>

            </div>
            <div class="content justify-content-center ">
                <div class="row ml-5" style="font-size:10px">
                    <h5>Apakah anda mengalami gejala dibawah ini?</h5>
                </div>
                <div class="row ml-5 mr-5" style="font-size:15px">
                    <?php
                    $sql = mysqli_query($connect, "SELECT kondisi2 from status where id_status=2");
                    $sql = mysqli_fetch_assoc($sql);
                    ?>
                    <p>
                        <?= $sql["kondisi2"] ?>
                    </p>
                </div>
            </div>
            <div class="modul-footer d-flex justify-content-end "id="mod4">
                <form action="proses.php" method="post">
                    <input type="text" name="id" value="2" hidden>
                    <button type="button" class="btn-danger clos" name="tidak">Tidak</button>
                    <button type="submit" class=" btn-primary  border-primary" name="btn">Iya</button>
                </form>
            </div>
        </div>
    </div>
    <div class="modul mod5" id="modul">
        <div id="modul-content">
            <div class="modul-header d-flex justify-content bg-danger">
                <h1><i class="fas fa-plus"></i>Information</h1>

            </div>
            <div class="content justify-content-center">
                <div class="row ml-5 mr-5" style="font-size:10px">
                    <h5>Apakah anda mengalami gejala dibawah ini?</h5>
                </div>
                <div class="row ml-5" style="font-size:15px">
                    <?php
                    $sql = mysqli_query($connect, "SELECT kondisi1 from status where id_status=3");
                    $sql = mysqli_fetch_assoc($sql);
                    ?>
                    <p>
                        <?= $sql["kondisi1"] ?>
                    </p>
                </div>
            </div>
            <div class="modul-footer d-flex justify-content-end "id="mod5">

                <button type="button" class="btn-danger clos" name="tidak">Tidak</button>
                <button type="button" class=" btn-primary acc border-primary" name="btn">Iya</button>
            
            </div>
        </div>
    </div>
    <div class="modul mod6" id="modul">
        <div id="modul-content">
            <div class="modul-header d-flex justify-content bg-danger">
                <h1><i class="fas fa-plus"></i>Information</h1>

            </div>
            <div class="content justify-content-center">
                <div class="row ml-5 mr-5" style="font-size:10px">
                    <h5>Apakah anda mengalami gejala dibawah ini?</h5>
                </div>
                <div class="row ml-5" style="font-size:15px">
                    <?php
                    $sql = mysqli_query($connect, "SELECT kondisi2 from status where id_status=3");
                    $sql = mysqli_fetch_assoc($sql);
                    ?>
                    <p>
                        <?= $sql["kondisi2"] ?>
                    </p>
                </div>
            </div>
            <div class="modul-footer d-flex justify-content-end "id="mod6">

                <button type="button" class="btn-danger clos" name="tidak">Tidak</button>
                <button type="button" class=" btn-primary acc border-primary" name="btn">Iya</button>
            </div>
        </div>
    </div>


    <div class="container">

        <div class="row mt-5 pt-5 text-align ">
            <div class="col-md-12 text-center">
                <h1 class="text-white">Test Your Temperature</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="margin-left:15px">
                <div class="card w-100 mt-5 pt-5 mb-5 pt-5 rounded-0" style="padding-bottom:75.1px;box-shadow:-1px 1px 5px 10px #D7DDE8">
                    <div class="card-body mt-5 pb-5 mt-5 mb-5">
                        <h2 class="text-danger ml-5">Welcome To Our Check Healty</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-6 " style="margin-left: -30px;z-index:20;">
                <div class="card w-100 mt-5 bg-dark rounded-0" style=" box-shadow:-1px 1px 5px 10px #D7DDE8">
                    <h3 class="pl-4 text-white mt-3">Keep Your Healty</h3>
                    <div class="card-body">
                        <div class="container">
                            <div class="row ">
                                <div class="col-md-2">
                                    <div>
                                        <i class="fas fa-thermometer-empty text-danger" style="font-size: 40px"></i>
                                    </div>
                                    <div>
                                        <i class="fas fa-map-marker-alt text-danger  " style="font-size: 40px;margin-top:42px"></i>
                                    </div>
                                </div>
                                <div class="col-md-10" style="left: -30px">
                                    <form method="post" action="proses.php">
                                        <div class="d-flex justify-content-center my-2 border-white" style="margin-left: -125px">
                                            <div class="d-flex slidercontent mr-4">
                                                <input type="range" min="37" max="42" class="c" name="range" id="range">
                                            </div>
                                            <span class="font-weight-bold text-white ml-2 valueSpan2" id="nilai">40°C</span>
                                        </div>
                                        <input type="text" name="id" value="3" hidden>
                                        <select class="custom-select bg-tranparent text-info  mt-5 mb-5 bg-transparent" id="prov" style="margin-top: -65px;width:150px">
                                        
                                            <option selected>Province</option>
                                            <?php $sql = mysqli_query($connect, "SELECT * FROM provinsi");
                                            while ($city = mysqli_fetch_assoc($sql)) : ?>
                                                <option value=" <?= $city['id_provinsi']; ?>"> <?= $city['provinsi']; ?></option>
                                            <?php endwhile; ?>
                                        </select>
                                        <div class="row ml-1">
                                            <button type="submit" class="btn text-danger pl-5 pr-5 pt-3 pb-3 " style="border-radius: 90px" id="task" name="btn3">Check In</button>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="http://localhost/covid/asset/all.js"></script>
</body>

</html>