<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>CONVEST</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div id="all">
      <!-- Top bar-->
      <div class="top-bar">
        <div class="container">
          <div class="row d-flex align-items-center">
            <div class="col-md-6 d-md-block d-none">
              <p>联系我们 +86 123456789 或者发送email至convest@gmail.com</p>
            </div>
            <div class="col-md-6">
              <div class="d-flex justify-content-md-end justify-content-between">
                <ul class="list-inline contact-info d-block d-md-none">
                  <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                  <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                </ul>
                <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">登录</span></a><a href="customer-register.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">注册</span></a></div>
                
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top bar end-->
      <!-- Login Modal-->
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 id="login-modalLabel" class="modal-title">用户登录</h4>
              <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
              <form action="个人中心.jsp" method="get">
                <div class="form-group">
                  <input id="email_modal" type="text" placeholder="email" class="form-control">
                </div>
                <div class="form-group">
                  <input id="password_modal" type="password" placeholder="密码" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> 登录</button>
                </p>
              </form>
              <p class="text-center text-muted">还没注册？</p>
              <p class="text-center text-muted"><a href="customer-register.jsp"><strong>即刻注册</strong></a>! 只需一分钟，体验更多功能！</p>
            </div>
          </div>
        </div>
      </div>
      <!-- Login modal end-->
        <!-- Navbar Start-->
        <header class="nav-holder make-sticky">
          <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
            <div class="container"><a href="首页.jsp" class="navbar-brand home"><img src="img/logo.png" alt="Universal logo" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">Universal - go to homepage</span></a>
              <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
              <div id="navigation" class="navbar-collapse collapse">
                <ul class="nav navbar-nav ml-auto">
                  <li class="nav-item dropdown menu-large"><a href="首页.jsp" >首 页 <b class="caret"></b></a>
                    
                  </li>
                  <li class="nav-item dropdown menu-large"><a href="高管信息.jsp">高管信息 <b class="caret"></b></a>
                    
                  </li>
                  <li class="nav-item dropdown menu-large"><a href="股票信息.jsp" >股票信息<b class="caret"></b></a>
                    
                  </li>
                  <li class="nav-item dropdown menu-large"><a href="社区资讯.jsp" >社区资讯 <b class="caret"></b></a>
                    
                  </li>
                  
                  <li class="nav-item dropdown active"><a href="个人中心.jsp" >个人中心 <b class="caret"></b></a>
                    
                  </li>
                  <!-- ========== Contact dropdown end ==================-->
              </ul>
            </div>
            <div id="search" class="collapse clearfix">
              <form role="search" class="navbar-form">
                <div class="input-group">
                  <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                </div>
              </form>
            </div>
          </div>
        </div>
      </header>
      <!-- Navbar End-->
      
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">收藏夹</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="首页.jsp">首 页</a></li>
                <li class="breadcrumb-item active">收藏夹</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row bar">
            <div class="col-lg-9">
              <p class="lead">我的收藏夹收藏了下列资讯：</p>
              
              <div class="col-sm-12">
                <div class="heading">
                  <h3>苹果产业链概念股大跌 正业科技等个股纷纷下挫</h3>
                </div>
                <p>11月11日午后，苹果产业链概念股大跌，横店东磁（002056）股价暴跌超过8%，信维通信（300136）跌逾7%，领益智造（002600）、精测电子（300567）、劲拓股份（300400）、正业科技（300410）、东山精密（002384）跌幅超过5%，国光电器（002045）、宇环数控（002903）等个股也有不同程度的下跌。</p>
              <br>
              </div>

              <div class="col-sm-12">
                <div class="heading">
                  <h3>利扬芯片今日上市交易 首日上涨近300%</h3>
                </div>
                <p>利扬芯片今日上市交易，作为首家在科创板上市的独立第三方集成电路测试企业，本次利扬芯片以15.72元/股的价格发行3410万股，公司证券代码为688135，发行市盈率36.58倍。</p>
              <br>
              </div>

              <div class="col-sm-12">
                <div class="heading">
                  <h3>新东方二次赴港上市 开盘股价达到1381港元</h3>
                </div>
                <p>11月9日，老牌教培巨头新东方正式登陆港交所，上市首日开盘价较发行价涨16%，股价达到1381港元，目前市值超2335亿港元。相比蚂蚁IPO，新东方回港二次上市则十分低调，新东方方面并未针对上市有更多回应。</p>
              <br>
              </div>

              

            </div>
            <div class="col-lg-3 mt-4 mt-lg-0">
              <!-- CUSTOMER MENU -->
              <div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">Customer section</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="个人中心.jsp" class="nav-link "><i class="fa fa-list"></i> 个人信息</a></li>
                    <li class="nav-item"><a href="customer-wishlist.jsp" class="nav-link active"><i class="fa fa-heart"></i> 收藏夹</a></li>
           
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     
      <!-- FOOTER -->
      <footer class="main-footer">
        <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <h4 class="h6">联系方式</h4>
              <p>企业邮箱：<a href="mailto:CONVEST@gmail.com" rel="nofollow">CONVEST@gmail.com</a></p>
              <p>联系电话：+86 1234567</p>
              <p>工作时间：周一至周五：9:30-17:00</p>
              <hr>
              <h4 class="h6">真诚欢迎合作者的到来！</h4>
              
              <hr class="d-block d-lg-none">
            </div>
            <div class="col-lg-3">
              <h4 class="h6">数据来源</h4>
              <p><a href="http://zxgk.court.gov.cn/" target="_blank" rel="nofollow">中国执行信息公开网</a></p>
              <p><a href="http://www.sipo.gov.cn/" target="_blank" rel="nofollow">国家知识产权局</a></p>
              <p><a href="http://sbj.cnipa.gov.cn/" target="_blank" rel="nofollow">商标局</a></p>
              <p><a href="http://www.ncac.gov.cn/" target="_blank" rel="nofollow">版权局</a></p>
              
            </div>
           
            <div class="col-lg-3">
              <h4 class="h6">办公地址</h4>
              <p class="text-uppercase"><strong>中国上海杨浦区</strong><br>国定路777号 <br>上海财经大学<br>信息管理与工程学院<br><strong></strong></p><a href="contact.jsp" class="btn btn-template-main">前往联系界面</a>
              <hr class="d-block d-lg-none">
            </div>
            
          </div>
        </div>
        <div class="copyrights">
          <div class="container">
            <div class="row">
              <div class="col-lg-4 text-center-md">
                <p>&copy; 2020. CONVEST</p>
              </div>
              
            </div>
          </div>
        </div>
      </footer>
    </div>
    <!-- Javascript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper.js/umd/popper.min.js"> </script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
    <script src="vendor/jquery.counterup/jquery.counterup.min.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <script src="vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>