<?php
include "koneksi.php";
include "asset/header.php";
?>
<div class="container-fluid">

    <div class="row mt-5 " style="margin-bottom: 150px">
        <div class="container">
            <div class="row text-center mb-5">
                <div class="col-md text-wrap">
                    <div class="text-info">
                        <h1>Hasil Test</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mt-5 " style="margin-bottom: 150px">
        <div class="container ">
            <div class="row mb-5 text-success text-center">
                <div class="col-md-12">

                    <div class="card" style="width: 70rem;">
                      
                        <div class="card-body">
                            <p class="card-text">
                            <?php
                        if (isset($_SESSION["id"])) :
                              
                        ?>
                        <?php 
                        $time=date("Y-m-d");
                        $id_admin=$_SESSION["id"];
                        $sql=mysqli_query($connect,"SELECT * from karantina where id_petugas=$id_admin and tanggal='$time' ");
                        $sql=mysqli_fetch_assoc($sql);
                        if($sql != null):
                        ?>
                          <h1>Covid19</h1>
                          <?php $sql=mysqli_query($connect,"SELECT s.nama as status,j.jenis as jenis,k.suhu,concat(t.kota,',',p.provinsi) as tempat,k.keterangan,k.tanggal  from karantina k join status s USING(id_status) join jenis j using(id_jenis) join tempat t USING(id_tempat) join provinsi p USING(id_provinsi) where id_petugas=$id_admin AND tanggal='$time' ");
                          $sql=mysqli_fetch_assoc($sql);
                          ?>
                        <table class="table table-bordered">
                                    <tr>
                                        <td><strong>Status Covid</strong></td>
                                        <td><?=$sql["status"]?></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Status</strong></td>
                                        <td><?=$sql["jenis"]?></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Suhu</strong></td>
                                        <td><?=$sql["suhu"]?></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Tempat</strong></td>
                                        <td>
                                        <?=$sql["tempat"]?>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Tanggal</strong></td>
                                        <td id="denda"><?=$sql["tanggal"]?></td>
                                    </tr>
                                  
            
			
            </table>
            <h5><?=$sql["keterangan"];?></h5>
                        <?php endif;?>

                       
                        <?php if($sql==null):?>
                            <h1>Ups anda belum Check up hari ini...</h1>
                            <a href="http://localhost/covid/task/task.php"><button class="btn bt1 bg-tranparent" style="width:125px;border-radius:90px;">Check Up</button></a>
                        <?php endif;?>
                            <?php endif; ?>
                        <?php
                        if (!isset($_SESSION["id"])) :

                        ?>
                                                  <h1>Ups anda belum login...</h1>
                            <a href="http://localhost/covid/login/form-login.php"><button class="btn bt1 bg-tranparent" style="width:125px;border-radius:90px;">Login</button></a>
                        <?php endif; ?>
                                
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<?php
include "asset/footer.php";
?>