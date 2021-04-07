<?php 
include 'komponen/inc/koneksi.php'; 
session_start();
if(isset($_SESSION["admin"]))
{
    echo "<script>alert('Anda Sudah Login');</script>";
    header('location:komponen/index.php');
    exit;
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Simkah</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"> -->
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Quicksand&family=Work+Sans:wght@600&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Quicksand', sans-serif;
    }

    .login-box {
      width: 330px;
    }

    b {
      font-weight: 700;
    }

    .rounded-big {
      border-radius: 12px !important;
    }
  </style>
</head>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <img src="dist/img/logo.png" alt="Logo" width="100"><br>
      <a href=""><b>SIMKAH</b>
      <br>KUA Kecamatan Kemangkon</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="card px-3 shadow rounded-big">
      <div class="card-body login-card-body">
        <p class="login-box-msg"></p>

        <form method="post">
          <label for="">Username</label>
          <div class="input-group mb-3">
            <input type="text" class="form-control" name="username" placeholder="Username" autofocus>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <label for="">Password</label>
          <div class="input-group mb-3">
            <input type="password" class="form-control" name="password" placeholder="********">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="submit" class="btn btn-primary btn-block" value="Login" name="login">
          </div>
        </form>
        <?php
                  if (isset($_POST['login'])) 
                  {
                      $username = $_POST["username"];
                      $password = $_POST["password"];
                      $sql_admin = mysqli_query($koneksi,"SELECT * FROM admin WHERE username = '$username' AND password = '$password'");
                      $cocok = mysqli_num_rows($sql_admin);
                      if ($cocok==1)
                      {
                          $_SESSION['admin']=mysqli_fetch_assoc($sql_admin);
                          echo "<script>alert('Login Anda Berhasil');</script>";
                          echo "<meta http-equiv='refresh' content='1;url=komponen/index.php'</div>";
                      }
                      else
                      {
                          echo "<script>alert('Username atau password salah');</script>";
                          echo "<meta http-equiv='refresh' content='2 ;url=login.php'</div>";
                      }
                  }
        ?>
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->

  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>

</body>

</html>