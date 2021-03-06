<span style="font-size:12px;"><span style="font-size:14px;"></span>
<%@ page language = "java" import="java.sql.*,java.util.*" contentType = "text/html;charset =utf-8" pageEncoding = "utf-8"%>
<%
 String path =request.getContextPath();
 String  basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   登陆页面
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <link href="./assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
  <link href="./assets/demo/demo.css" rel="stylesheet" />
</head>
<body class="index-page sidebar-collapse">
  <div class="page-header header-filter clear-filter  info-filter" data-parallax="true" style="background-image: url('./assets/img/leaf.jpg');">
    <div class="container">
      <div class="row">
        <div class="col-md-8 ml-auto mr-auto">
          <div class="brand">
            <h1>绿查管理系统</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="section section-signup page-header" style="background-image: url('./assets/img/leaf.jpg');">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 ml-auto mr-auto">
          <div class="card card-login">
            <form class="form" method="post" action="receive.jsp">
              <div class="card-header card-header-primary text-center">
                <h4 class="card-title">Login</h4>
              </div>
              <div class="card-body">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                     <div>用户名</div>
                    </span>
                  </div>
                  <input type="text" class="form-control" name = "username" placeholder="Username...">
                </div>
          
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                <div>密码&nbsp&nbsp;</div>
                    </span>
                  </div>
                  <input type="password" class="form-control" name = "password" placeholder="Password...">
                
                </div>
                <div id="button>s" class="cd-section offset-md-4">
                  <button class="btn btn-primary btn-link "><h3>登录</h3></button>
              </div>
              </div>
              

            
            </div>

                  </div>

                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="./assets/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="./assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="./assets/js/material-kit.js?v=2.0.5" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      //init DateTimePickers
      materialKit.initFormExtendedDatetimepickers();

      // Sliders Init
      materialKit.initSliders();
    });


    function scrollToDownload() {
      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }

  </script>
</body>

</html>
