<?php
$id = $_GET["id"];
include "../koneksi.php";
$sql = mysqli_query($connect, "SELECT * FROM tempat where id_provinsi=$id");
?> 
<select class="custom-select bg-transparent text-info" id="city" style="margin-top:-65px;width:155px" name="tempat">
    <option>City</option>
    <?php while ($city = mysqli_fetch_assoc($sql)) : ?>
        <option value=" <?= $city['id_tempat']; ?>"> <?= $city['kota']; ?></option>
    <?php endwhile; ?>
</select>