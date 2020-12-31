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
                <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">登录</span></a><a href="customer-register.jsp
                " class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">注册</span></a></div>
                
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
                <p cl/////ass="text-center">
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
      
      <div id="heading-breadcrumbs" class="brder-top-0 border-bottom-0">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">联系我们</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="首页.jsp">主页</a></li>
                <li class="breadcrumb-item active">联系我们</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div id="contact" class="container">
          <section class="bar">
            <div class="row">
              <div class="col-md-12">
                <div class="heading">
                  <h2>我们愿意与您成为合作伙伴</h2>
                </div>
                <p class="lead">Are you curious about something? Do you have some kind of problem with our products? As am hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but built gay party world. Of so am he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne is vicinity.</p>
                <p class="text-sm">Please feel free to contact us, our customer service center is working for you 24/7.</p>
              </div>
            </div>
          </section>
          <section>
            <div class="row text-center">
              <div class="col-md-4">
                <div class="box-simple">
                  <div class="icon-outlined"><i class="fa fa-map-marker"></i></div>
                  <h3 class="h4">地址</h3>
                  <p>中国上海杨浦区<br>                                        国定路777号上海财经大学<br>                                        信息管理与工程学院 <strong>520室</strong></p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box-simple">
                  <div class="icon-outlined"><i class="fa fa-phone"></i></div>
                  <h3 class="h4">电话联系</h3>
                  <p>如果您在使用我们产品的过程中遇到问题或想提出建议，您可以免费联系我们。</p>
                  <p><strong>+86 123456789</strong></p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="box-simple">
                  <div class="icon-outlined"><i class="fa fa-envelope"></i></div>
                  <h3 class="h4">电子邮件</h3>
                  <p></p>
                  <ul class="list-unstyled text-sm">
                    <p>您可以发送信息到我们的工作邮箱，我们会及时回复。</p>
                    <li><strong><a href="mailto:">CONVEST@gmail.com</a></strong></li>
                   
                  </ul>
                </div>
              </div>
            </div>
          </section>
          <section class="bar pt-0">
            <div class="row">
              <div class="col-md-12">
                <div class="heading text-center">
                  <h2>联系表</h2>
                </div>
              </div>
              <div class="col-md-8 mx-auto">
                <form>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="firstname">姓</label>
                        <input id="firstname" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="lastname">名</label>
                        <input id="lastname" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label for="subject">公司</label>
                        <input id="subject" type="text" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label for="message">留言</label>
                        <textarea id="message" class="form-control"></textarea>
                      </div>
                    </div>
                    <div class="col-sm-12 text-center">
                      <button type="submit" class="btn btn-template-outlined"><i class="fa fa-envelope-o"></i> 发送表单</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </section>
        </div>



<!--引用百度地图API-->

<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

  <!--百度地图容器-->
  <div class="row" >
  <div style="width:1900px;height:250px;margin=auto"  id="dituContent"></div>
  </div>

<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(121.504758,31.308203);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT,type:BMAP_NAVIGATION_CONTROL_SMALL});
	map.addControl(ctrl_nav);
                //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"CONVEST",content:"我们的地址",point:"121.504556|31.308504",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
    <script src="js/gmaps.js"></script>
    <script src="js/gmaps.init.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>