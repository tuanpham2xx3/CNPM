<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Đổi thông tin người dùng</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .box-content{
                margin: 0 auto;
                width: 800px;
                border: 1px solid #ccc;
                text-align: center;
                padding: 20px;
            }
            #edit_user form{
                width: 200px;
                margin: 40px auto;
            }
            #edit_user form input{
                margin: 5px 0;
            }
        </style>
    </head>
    <body>
        <?php
        include './connect_db.php';
        $error = false;
        if (isset($_GET['action']) && $_GET['action'] == 'edit') {
            if (isset($_POST['user_id']) && !empty($_POST['user_id']) && isset($_POST['password']) && !empty($_POST['password'])) {
                $result = mysqli_query($con, "UPDATE `user` SET `password` = MD5('" . $_POST['password'] . "'),   `last_updated`=" . time() . " WHERE `user`.`id` = " . $_POST['user_id'] . ";");
                if (!$result) {
                    $error = "Không thể cập nhật tài khoản";
                }
                mysqli_close($con);
                if ($error !== false) {
                    ?>
                    <div id="error-notify" class="box-content">
                        <h1>Thông báo</h1>
                        <h4><?= $error ?></h4>
                        <a href="./khachhang.php" style="text-decoration: none">Danh sách tài khoản</a>
                    </div>
                <?php } else { ?>
                    <div id="edit-notify" class="box-content" style="background-color: #e9d8f4; width:70%">
                        <h1><?= ($error !== false) ? $error : "Sửa tài khoản thành công" ?></h1>
                        <a href="./khachhang.php" style="text-decoration: none">Danh sách tài khoản</a>
                    </div>
                <?php } ?>
            <?php } else { ?>
                <div id="edit-notify" class="box-content">
                    <h1 style="font-family: Helvetica, Arial, Tahoma, sans-serif;">Vui lòng nhập đủ thông tin để sửa tài khoản</h1>
                    <a href="./khachhang.php?id=<?= $_POST['user_id'] ?>" style="text-decoration: none">Quay lại sửa tài khoản</a>
                </div>
            <?php
            }
        } else {
            $result = mysqli_query($con, "SELECT * FROM user where `id`=" . $_GET['id']);
            $user = $result->fetch_assoc();
            mysqli_close($con);
            if (!empty($user)) {
                ?>
                <div id="edit_user" class="box-content" style="background-color: #e9d8f4; width:70% ">
                    <h1 style="font-family: Helvetica, Arial, Tahoma, sans-serif;">Sửa tài khoản "<a style="color:red ;"><?= $user['username'] ?></a>"</h1>
                    <form action="./edit_user.php?action=edit" method="Post" autocomplete="off">
                        <label style="font-family: Helvetica, Arial, Tahoma, sans-serif;">Password</label></br>
                        <input type="hidden" name="user_id" value="<?= $user['id'] ?>"/>
                        <input type="password" name="password" value="" style=" width: 100%;  padding: 12px 20px;  margin: 8px 0;  box-sizing: border-box; border: 2px solid purple;  border-radius: 4px;"/>
                        <select name="status">
                            <option <?php if (!empty($user['status'])) { ?> selected <?php } ?> value="1">Kích hoạt</option>

                            <option <?php if (empty($user['status'])) { ?> selected <?php } ?>  value="0">Block</option>
                        </select>
                        <br><br>
                        <input type="submit" value="Xác nhận" style="width: 80%;  background-color: #58257b;  color: white;  padding: 14px 20px;  margin: 8px 0;  border: none;  border-radius: 4px;  cursor: pointer;"/>
                    </form>
                </div>
            <?php
            }
        }
        ?>
    </body>
</html>
