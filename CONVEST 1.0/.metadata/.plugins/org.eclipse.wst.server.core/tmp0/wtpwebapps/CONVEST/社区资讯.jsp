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
      <div id="login-modal" tabindex="-1" role="dialog" aria-labelledFrom="login-modalLabel" aria-hidden="true" class="modal fade">
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
                    <button type="button" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
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
            
              
      <!-- LEFT COLUMN _________________________________________________________-->
              <div id="blog-listing-big" class="col-md-9">
                  <div class="post" id="qeone">
                      <h2><a>推荐资讯</a></h2>
                    
                          
                         <br>
                   <div class="post" id="qeone">
                      <h3><a id="title1">我国国防法修订 明年1月1日起施行</a></h3>
                       <div class="row">
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name1">新华社 刘硕</a></p>
                              <p>据介绍，此次主要修改内容包括：确立了习近平新时代中国特色社会主义思想在国防活动中的指导地位；结合党和国家机构改革、国防和军队改革实际，调整了国家机构的国防职权，增加了军委主席负责制的内容；充实了武装力量的任务和建设目标；着眼新型安全领域活动和利益的防卫需要，明确了重大安全领域防卫政策；根据国防教育和国防动员领导管理体制改革实际，充实完善了国防教育和国防动员制度；着眼“使军人成为全社会尊崇的职业”，强化了对军人地位和权益的保护；贯彻总体国家安全观和习近平外交思想，充实了对外军事关系方面的政策制度。
                          </div>
                          
                      </div>
                  </div>
                  <div class="post" id="qetwo">
                      <h3><a id="title2">2021年商务工作要干这些事</a></h3>
                      <div class="row" >
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name2">新华社 于佳欣 王雨萧</a></p>
                              <p>这是商务部于26日召开的全国商务工作电视电话会议释放的信息。会议指出，尽管面对严峻复杂的国际形势特别是新冠肺炎疫情严重冲击，我国稳住外贸外资基本盘，推动消费回升，实现了商务发展回稳向好、好于预期。 </p>
                          </div>                 
                      </div> 
                  </div>
                  
                  
                  <div class="post" id="qethree">
                      <h3><a id="title3">广西两个铁路项目26日开工建设</a></h3>
                      <div class="row">
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name3">新华社 林凡诗</a></p>
                              <p>新建柳州至广州铁路柳州至梧州段为我国中长期铁路网规划中柳州至广州铁路的组成部分，项目正线全长237.8公里，沿线经柳州、来宾、贵港、梧州4市，为国铁I级、双线电气化、客货共线铁路，设计时速160公里，批复建设工期4年。</p>
                          </div>
                      </div>
                  </div>
                  <div class="post" id="qefour">
                      <h3><a id="title4">“新媒体影响力指数”TOP10、“微信原创传播力指数”TOP10榜单揭晓</a></h3>
                      <div class="row">
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name4">传媒茶话会微信公众号</a></p>
                            
                          </div>
                      </div>
                  </div>
                  
                   <div class="post" id="qefive">
                      <h3><a id="title5">特写：面对审计整改追问，部长们这样回答</a></h3>
                      <div class="row">
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name5">新华社 刘红霞</a></p>
                              <p>“请问国家发展改革委，部分项目未按时开工的原因是什么？针对地方实施的项目存在开工慢，或者未开工的情况是如何跟踪督促整改的？请问财政部，部分项目资金拨付进度滞后的原因是什么？在加快项目资金拨付进度方面，将采取哪些措施？两个部门在加强部门间协调沟通方面，有哪些举措？”面对国务院相关部门主要负责同志，全国人大常委会委员吕薇连发五问。</p>
                          </div>
                      </div>
                  </div>
                  <div class="post" id="qesix">
                      <h3><a id="title6">通过！我国出台长江保护法守护母亲河</a></h3>
                      <div class="row">
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name6">新华社 高敬</a></p>
                              <p>长江保护法包括总则、规划与管控、资源保护、水污染防治、生态环境修复、绿色发展、保障与监督、法律责任和附则9章，共96条。</p>
                          </div>
                      </div>
                  </div>
                  <div class="post" id="qeseven">
                      <h3><a id="title7">北京：加紧精准流调溯源和应检尽检</a></h3>
                      <div class="row" >
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name7">新华社 赵旭 孙蕾 田晨旭</a></p>
                              <p>北京市疾病预防控制中心副主任庞星火在发布会上介绍，根据疫情防控工作需要，北京市对朝阳区3个街道、顺义区12个街道乡镇和天竺综保区相关人员进行核酸检测，实行应检尽检。经过初步检测，有5人核酸检测为阳性，均为25日北京确诊病例的密切接触者，市、区疾控机构、医疗机构正在进行复核与诊断，结果待报，不排除进一步发现病例的可能。</p>
                          </div>
                      </div>
                  </div>                
                  <div class="post" id="qeeight" style="display:none">
                      <h3><a id="title8">武汉城市圈第5条城际铁路正式开通运营</a></h3>
                      <div class="row" >
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name8">新华社 王贤</a></p>
                              <p>新建仙桃城际线全长近17公里，标准等级为双线城际铁路，设计行车时速200公里，自汉川站至天门南站间的大福村接轨引入汉宜铁路。这条铁路线新建大福、仙桃两个车站，其中仙桃站为尽头式客运站，大福站为列车会让站不办理客运业务。武（汉）仙（桃）城际铁路线由新建仙桃城际线和既有汉宜铁路线组成，全程87公里，最快历时41分钟。</p>
                          </div>
                      </div>
                  </div>
                  <div class="post" id="qenine" style="display:none">
                      <h3><a id="title12">全国商务工作电视电话会议召开 部署2021年重点工作</a></h3>
                      <div class="row" >
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name9">上海证券报·中国证券网</a></p>
                              <p>会议指出，今年以来，面对严峻复杂的国际形势特别是新冠肺炎疫情严重冲击，在以习近平同志为核心的党中央坚强领导下，全国商务系统认真落实党中央、国务院决策部署，统筹疫情防控和商务发展，团结奋进、迎难而上，稳住了外贸外资基本盘，推动了消费回升，实现了商务发展回稳向好、好于预期。消费稳步复苏，新业态新模式蓬勃发展。外贸再创新高，结构进一步优化。利用外资逆势增长，大项目稳步推进。对外投资有序发展。多双边经贸合作取得新突破。</p>
                          </div>
                      </div>
                  </div>
                 
                   <div class="post" id="qeten" style="display:none">
                      <h3><a id="title10">三个月时间，广州浪奇“黑洞”扩大了50%，何时是尽头？</a></h3>
                       <div class="row" >
                          <div class="col-sm-12">
                              <p class="author-category">From <a id="name10">上海证券报微信公众号 邱德坤</a></p>
                              <p>不断扩大的“黑洞”，正在吞噬广州浪奇60年时光积淀的声誉和财富，也给广州浪奇的命运蒙上了不可预知的阴影。</p>
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
<script src="js/jquery.dataTables.min.js"></script>
    <script src="js/template.js"></script>
     <script>
     function login(){
 		var myusername = $("#myusername").val();
 		var mypassword = $("#mypassword").val();
 		
 		 if(myusername == "")
 			   {
 			   alert("请填写用户名！");
 			   }
 		   else if(mypassword == "")
 			  {
 			 	alert("请填写密码！");
 			  }
 		   else {
 		$.ajax({
 			url:"login",   
 			type:"post",
 			data:{
 	    		   Name: myusername,
 	    		   Password:mypassword,
 	    		},
 	    	async:false,
 			success:function(data){
 				if(data != ""){
 					alert("登录成功");
 					window.location.href="首页.jsp";
 				}else{
 					alert("登录失败");
 				}
 			},
 			error:function(XMLHttpRequest, textStatus, errorThrown) {
 				alert("系统错误");
 			}
 		});  
 	   		   
 	   	   }
 		
 	}
     </script>
  </body>
</html>

