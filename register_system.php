<?php
include "db.php";

$id = $_POST['userid'];
$pw = $_POST['Uuserpw'];
$name = $_POST['username'];
$gender = $_POST['identityGender'];
$age = $_POST['foreigner'];

$sql = "INSERT INTO user VALUES('".$id."', '".$pw."', '".$name."', '".$gender."','".$age."')";

$result = mysqli_query($conn,$sql);
//$create = mysqli_query($conn,$table);


if($result === false){
  echo 'ERROR';
  error_log(mysqli_error($conn));
} else{
  ?>
  <script>
        alert("회원가입에 성공하였습니다.")
        location.href = "ccc_login.html"; //로그인페이지로
    </script>
    <?php
//echo '회원가입 되었습니다. <a href="index.php">처음으로</a>';

}
mysqli_close($conn);
?>
