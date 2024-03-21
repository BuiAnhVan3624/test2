<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Đăng nhập</title>
    <link href="css/styles.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #fff;
            border-bottom: none;
        }

        .card-body {
            padding: 2rem;
        }

        .form-floating {
            margin-bottom: 1.5rem;
        }

        .btn-primary {
            background-color: #2b4f65;
            border-color: #2b4f65;
            width: 100%;
            padding: 0.75rem;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn-primary:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
        }

        .btn-cancel {
            background-color: transparent;
            color: #2b4f65;
            border-color: #2b4f65;
            width: 100%;
            padding: 0.75rem;
            border-radius: 5px;
            font-size: 16px;
            text-decoration: none;
            text-align: center;
            display: inline-block;
        }

        .btn-cancel:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>

<body>
    <form action="xli_login.php" method="post">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="card mt-5">
                        <div class="card-header">
                            <h3 class="text-center font-weight-light my-4">Đăng nhập</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-floating mb-3">
                                <input class="form-control" id="txtTenDangNhap" type="text" name="txtTenDangNhap" placeholder="">
                                <label for="txtTenDangNhap">Tên đăng nhập</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="txtMatKhau" type="password" name="txtMatKhau" placeholder="Password">
                                <label for="txtMatKhau">Mật khẩu</label>
                            </div>
                            <div class="form-floating mb-3">
                                <button class="btn btn-primary" type="submit">Đăng nhập</button>
                                <a class="btn-cancel" href="">Huỷ bỏ</a>
                            </div>
                        </div>
                        <div class="card-footer text-center py-3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>
