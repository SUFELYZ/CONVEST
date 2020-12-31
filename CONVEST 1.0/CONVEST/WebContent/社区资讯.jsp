<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
          <div class="container"><a href="首页.jsp" class="navbar-brand home"><img src="img/logo.png" alt="Universal logo" class="d-none d-md-inline-block"><img src="img/logo-small.png" alt="Universal logo" class="d-inline-block d-md-none"><span class="sr-only">CONVEST - go to homepage</span></a>
            <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
            <div id="navigation" class="navbar-collapse collapse">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item dropdown menu-large"><a href="首页.jsp" >首 页 <b class="caret"></b></a>
                  
                </li>
                <li class="nav-item dropdown menu-large"><a href="高管信息.jsp">高管信息 <b class="caret"></b></a>
                  
                </li>
                <li class="nav-item dropdown menu-large"><a href="股票信息.jsp" >股票信息<b class="caret"></b></a>
                  
                </li>
                <li class="nav-item dropdown active"><a href="社区资讯.jsp" >社区资讯 <b class="caret"></b></a>
                  
                </li>
                
                <li class="nav-item dropdown menu-large"><a href="个人中心.jsp" >个人中心 <b class="caret"></b></a>
                  
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
              <h1 class="h2">看一看：财圈新鲜事</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="首页.jsp">首页</a></li>
                <li class="breadcrumb-item active">社区资讯</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <section class="bar no-padding-bottom">
            <div class="row">
              <div class="col-md-12">
              </div>
            </div>
          </section>
          <section class="bar">
            <div class="row portfolio-project">
              
              
              <div class="col-sm-12">
                <div class="heading">
                  <h3>美油上攻41关口，但上行仍面临重大阻力</h3>
                </div>
                <p>周二(11月10日)欧市盘中，美国原油期货于上涨近1%上攻41美元，周一(11月9日)一度上涨超10%创下5月以来最大涨幅，因新冠疫苗取得重大突破的消息极大的提振了市场乐观情绪，不过当前投资者已消化了疫苗相关的利好，仍忧心欧美经济受疫情冲击恐影响近期需求，可能令油价涨势受限。自10月初以来，由于欧洲和美国以及亚洲部分地区的第二波疫情浪潮有可能破坏第二季的需求复苏，市场越来越担心近期的石油需求。

截至发稿，美国原油期货价格报40.56美元/桶，涨0.67%；布伦特原油期货价格报42.79美元/桶，涨0.92%。</p>
                <p>周一辉瑞表示，根据初步试验结果，旗下实验性新冠疫苗的有效性超过90%。这是抗击疫情的重大进展，新冠大流行在美国造成超过23.7万人丧生，数百万人失业。

摩根大通在一份报告中指出，一种可行的疫苗无疑会改变石油市场的趋势，因为石油市场一半的需求来自于市场环境。但正如以前所写的那样，石油是一种现货资产，必须首先消除当前的供需失衡，才能实现一到两年后的价格上涨。

花旗集团的分析师也仍保持谨慎情绪，称2021年国际原油供需两线的消息面前景对于油市多头而言仍然严峻。虽然疫苗研发正在取得突破进展，但是实现全民免疫仍是个任重道远的过程，在此之前，疫情仍会进一步扩散。与此同时面，许多行业，如航空和旅游业，已在疫情期间遭受重创后全民重挫，即使疫情消失，面对市场的新常态，其也料难立刻恢复，这对油市需求仍将构成持久的拖累。而与之相反则是，OPEC+各国在2021年进一步恢复产能也将是势在必行的预料中状况。

在上述状况背景下，花旗将其原先对国际油价给出的预估进一步下修，预计布伦特与美国原油在2021年全年的均价将仅为54美元和49美元，相比当前反弹幅度也就25%左右。</p>
              </div>
            </div>
          </section>
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