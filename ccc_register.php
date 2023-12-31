<?php
include "db.php";
?>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>ㅊㅊㅊ-회원가입</title>
    <link rel="stylesheet" type="text/css" href="ccc_register.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
    <div class="register-container">
        <div class="inner">
            <a href="ccc_main_log.html">
                <img src="ccc_image/logo.png" alt="Logo" class="logo">
            </a>
            <div class="content">
                <form id="join_form" method="post" action="register_system.php" class="form">
                    <div class="form_content">
                        <div class="form_section">
                            <div class="form_list">
                                <div class="form_item user" id="divId">
                                    <input type="text" id="id" name="userid" placeholder="아이디" class="input" value=""
                                        maxlength="20" autocapitalize="off">
                                </div>
                                <div class="form_item lock password" id="divPasswd">
                                    <input type="password" id="pswd1" name="userpw" placeholder="비밀번호" class="input"
                                        value="" maxlength="16" autocomplete="new-password">
                                </div>

                            </div>

                            <div class="form_list">
                                <div class="form_item user" id="divName">
                                    <input type="text" id="name" name="username" placeholder="이름" class="input" value=""
                                        maxlength="20">
                                </div>


                                <div class="form_item adult" id="divIdentityGender">
                                    <ul class="adult_list" id="listIdentityGender">
                                        <li class="radio_item frist">
                                            <input type="radio" id="identityGender1" name="identityGender" value="M"
                                                class="blind">
                                            <label for="identityGender1">남자</label>
                                        </li>
                                        <li class="radio_item frist">
                                            <input type="radio" id="identityGender2" name="identityGender" value="F"
                                                class="blind">
                                            <label for="identityGender2">여자</label>
                                        </li>
                                    </ul>
                                    <ul class="adult_list" id="listForeigner">
                                        <li class="radio_item second">
                                            <input type="radio" id="foreigner1" name="foreigner" value="K" checked=""
                                                class="blind">
                                            <label for="foreigner1">연령대</label>
                                        </li>
                                        <li class="radio_item2 second">
                                            <select id="foreigner2" name="foreigner" class="custom-select">
                                                <option value="">선택하세요▽</option>
                                                <option value="10">10대</option>
                                                <option value="20">20대</option>
                                                <option value="30">30대</option>
                                                <option value="40">40대</option>
                                                <option value="50">50대</option>
                                                <option value="60">60대</option>
                                                <option value="70">70대</option>
                                                <option value="80">80대</option>
                                            </select>
                                            <label for="foreigner2"></label>
                                            <script>
                                                $(document).ready(function () {
                                                    $("#foreigner2").change(function () {
                                                        if ($(this).val() != "") {
                                                            $(this).css({ "color": "#692ead", "font-weight": "700" });
                                                        } else {
                                                            $(this).css({ "color": "#929294", "font-weight": "normal" });
                                                        }
                                                    });
                                                });
                                            </script>
                                        </li>
                                    </ul>
                                </div>

                            </div>

                        </div>
                    </div>
                    <div class="btn_submit_wrap" id="divBtnAuth">
                        <button type="button" class="btn_submit" id="btnSend">회원가입</button>
                        
                    </div>
                     <script>
                        document.getElementById("btnSend").onclick = function () {
                            location.href = "ccc_poll.html";
                        };
                    </script>

                </form>
            </div>
        </div>
    </div>

</body>

</html>