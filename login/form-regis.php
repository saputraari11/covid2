<?php
include "../koneksi.php";
$sql = mysqli_query($connect, "SELECT * FROM provinsi");
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="http://localhost/covid/asset/number/dist/jquery-input-mask-phone-number.js"></script>
    <script src="http://localhost/covid/asset/jquery.js"></script>
    <link rel="stylesheet" href="http://localhost/covid/asset/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://localhost/covid/asset/all.css">
    <link rel="stylesheet" href="http://localhost/covid/asset/fontawesome/css/all.min.css">
    <title>Karantina</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-2">
            </div>
            <div class="col-md-8">
                <div class="row" style="margin-top:120px;box-shadow:-1px 1px 50px 10px black;padding-right:50px;border-radius:90px">
                    <div class="col-md-6">
                        <img src="http://localhost/covid/asset/img/regis.svg" alt="">
                    </div>
                    <div class="col-md-6 mt-3">
                        <ul>
                            <a href="form-login.php">Sign in </a>
                            <a class="text-white" disabled> / </a>
                            <a href="#" style="border-bottom:3px solid #2ebf91;padding:10px;color:#2ebf91"> Sign Up</a>
                        </ul>
                        <form action="proses.php" class="pb-5" method="post">
                            <div class="input">
                                <div>
                                    <div class="i">
                                        <i class="fas fa-address-card"></i>
                                    </div>
                                    <h5>Name</h5>
                                    <input type="text" class=" input" name="nama">

                                </div>
                            </div>
                            <div class="input mb-5">
                                <div>
                                    <div class="i">
                                        <i class="fas fa-phone-square-alt"></i>
                                    </div>
                                    <h5>Number-Phone</h5>
                                    <input type="tel" class="input" name="number" id="telp" required>
                                    <small>Format: 123-456-7890</small>
                                </div>
                            </div>

                            <div class="input mb-2 pb-3 o">
                                <div>
                                    <div class="i">
                                        <i class="fas fa-city"></i>
                                    </div>

                                    <select class="custom-select bg-tranparent text-info ml-3 bg-transparent" id="prov" style="margin-top: -65px;width:150px">
                                        <option selected>Province</option>
                                        <?php while ($city = mysqli_fetch_assoc($sql)) : ?>
                                            <option value=" <?= $city['id_provinsi']; ?>"> <?= $city['provinsi']; ?></option>
                                        <?php endwhile; ?>
                                    </select>


                                </div>
                            </div>


                            <div class="input">
                                <div>
                                    <div class="i">
                                        <i class="fas fa-user"></i>
                                    </div>
                                    <h5>Username</h5>
                                    <input type="email" class=" input" name="user">

                                </div>
                            </div>
                            <div class="input">

                                <div>
                                    <div class="i">
                                        <i class="fas fa-lock"></i>
                                    </div>
                                    <h5>Password</h5>
                                    <input type="password" class="input" name="password">
                                </div>
                            </div>
                            <a href="">
                            <button class="btn btn-info" type="submit" name="signup">SIGN UP</button>
                        </a>
                        </form>

                      
                    </div>

                </div>
                <!-- close -->
            </div>
            <div class="col-md-2"></div>
        </div>

    </div>
    <script src="login.js"></script>
</body>

</html>