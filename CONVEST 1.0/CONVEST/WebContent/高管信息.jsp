<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CONVEST</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Roboto-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<!-- Bootstrap Select-->
<link rel="stylesheet"
	href="vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- owl carousel-->
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="vendor/owl.carousel/assets/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="img/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="img/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="img/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="img/apple-touch-icon-152x152.png">
<!--import d3 version 5-->
<script type="text/javascript" src="js/d3.min.js"></script>
<!--import jquery3.3.1-->
<script type="text/javascript" src="js/jquery.js"></script>
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
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
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-phone"></i></a></li>
								<li class="list-inline-item"><a href="#"><i
										class="fa fa-envelope"></i></a></li>
							</ul>
							<div class="login">
								<a href="#" data-toggle="modal" data-target="#login-modal"
									class="login-btn"><i class="fa fa-sign-in"></i><span
									class="d-none d-md-inline-block">登录</span></a><a
									href="customer-register.jsp" class="signup-btn"><i
									class="fa fa-user"></i><span class="d-none d-md-inline-block">注册</span></a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top bar end-->
		<!-- Login Modal-->
		<div id="login-modal" tabindex="-1" role="dialog"
			aria-labelledby="login-modalLabel" aria-hidden="true"
			class="modal fade">
			<div role="document" class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 id="login-modalLabel" class="modal-title">用户登录</h4>
						<button type="button" data-dismiss="modal" aria-label="Close"
							class="close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="个人中心.jsp" method="get">
                <div class="form-group">
                  <input id="myusername" type="text" placeholder="用户名" class="form-control">
                </div>
                <div class="form-group">
                  <input id="mypassword" type="password" placeholder="密码" class="form-control">
                </div>
                <p class="text-center">
                  <button class="btn btn-template-outlined" onclick="login()"><i class="fa fa-sign-in"></i> 登录</button>
                </p>
              </form>
						<p class="text-center text-muted">还没注册？</p>
						<p class="text-center text-muted">
							<a href="customer-register.jsp"><strong>即刻注册</strong></a>!
							只需一分钟，体验更多功能！
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Login modal end-->
		<!-- Navbar Start-->
		<header class="nav-holder make-sticky">
			<div id="navbar" role="navigation" class="navbar navbar-expand-lg">
				<div class="container">
					<a href="首页.jsp" class="navbar-brand home"><img
						src="img/logo.png" alt="Universal logo"
						class="d-none d-md-inline-block"><img
						src="img/logo-small.png" alt="Universal logo"
						class="d-inline-block d-md-none"><span class="sr-only">Universal
							- go to homepage</span></a>
					<button type="button" data-toggle="collapse"
						data-target="#navigation"
						class="navbar-toggler btn-template-outlined">
						<span class="sr-only">Toggle navigation</span><i
							class="fa fa-align-justify"></i>
					</button>
					<div id="navigation" class="navbar-collapse collapse">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item dropdown menu-large"><a href="首页.jsp">首
									页 <b class="caret"></b>
							</a></li>
							<li class="nav-item dropdown active"><a href="高管信息.jsp">高管信息
									<b class="caret"></b>
							</a></li>
							<li class="nav-item dropdown menu-large"><a href="股票信息.jsp">股票信息<b
									class="caret"></b></a></li>
							<li class="nav-item dropdown menu-large"><a href="社区资讯.jsp">社区资讯
									<b class="caret"></b>
							</a></li>

							<li class="nav-item dropdown menu-large"><a href="个人中心.jsp">个人中心
									<b class="caret"></b>
							</a></li>
							<!-- ========== Contact dropdown end ==================-->
						</ul>
					</div>
				
				</div>
			</div>
		</header>
		<!-- Navbar End-->

		<div id="heading-breadcrumbs" class="border-top-0 border-bottom-0">
			<div class="container">
				<div class="row d-flex align-items-center flex-wrap">
					<div class="col-md-7">
						<h1 class="h2">查一查：他们之间有什么关系</h1>
					</div>
					<div class="col-md-5">
						<ul class="breadcrumb d-flex justify-content-end">
							<li class="breadcrumb-item"><a href="首页.jsp">首页</a></li>
							<li class="breadcrumb-item active">高管信息网</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="content">
			<div class="container">
				<div class="row bar">
					<div id="blog-listing-medium" class="col-md-9">

						<section class="post">
							<h2>高管信息网</h2>

							<div class="image">
								<svg alt="Example blog post alt" class="img-fluid" id="svg1"></svg>
							</div>

						</section>

					</div>
					<div class="col-md-3">

						<div class="panel panel-default sidebar-menu">
							<div class="panel-heading">
								<h3 class="h4 panel-title">输入高管名/企业名/股票代码</h3>
							</div>
							<div class="panel-body">
								 <form role="search" >
                    <div class="input-group" >
                      <input type="text" placeholder="输入企业名称" class="form-control" id="myinput"><span class="input-group-btn" id="template">
                        <button type="button" class="btn btn-template-main"><i class="fa fa-search" onclick="checkbutton()"></i></button></span>
                    </div>
                  </form>
                  
							<script>
        //get json file
$('body').on('click', '#template', function () {  
	
      
	$("#svg1").empty();
	   var myinput = jQuery("#myinput").val();
	   //System.out.println(myinput);
	          	
        myinput=myinput.concat(".json");
       
       d3.json(myinput).then(function(dataJson){
        	
            //GroupExplorer constructing function
            //this is one way to create a javascript object
            function GroupExplorer(data){
                //create an object-include some data
                //this is an another way to create a javascript object
              
                var defaultConfig = {
                    data:{"nodes":[],"links":[]},//critical data set
                    windowWidth:800,
                    windowHeight:1000,
                    defaultLinkDistance:100
                }
                //because the initial "data" is null,
                //so you need use jquery syntax "extend" to merge the json data
                //below,merge "data" into "defaultWindow"
                //"true" mean do not cover
                //details see jquery API document
                $.extend(true,defaultConfig,data);

                //so now we get the json file that we need
                //now let`s begin,transform json file to force graph data
                //but first ,we need to get "svg"
                var svg = d3.select("svg");
                svg.attr("width",defaultConfig.windowWidth);
                svg.attr("height",defaultConfig.windowHeight);

                defaultConfig.data.links.forEach(function(e){
                    if(typeof e.source=="number"&&typeof e.target=="number"){
                        var sourceNode = defaultConfig.data.nodes.filter(function(n){
                            return n.id === e.source;
                        })[0];
                        var targetNode = defaultConfig.data.nodes.filter(function(n){
                            return n.id === e.target;
                        })[0];
                        e.source = sourceNode;
                        e.target = targetNode;
                    }
                });

                //create a force graph
                var forceSimulation = d3.forceSimulation()
                    .force("link",d3.forceLink())
                    .force("charge",d3.forceManyBody())
                    .force("center",d3.forceCenter(defaultConfig.windowWidth/2,defaultConfig.windowHeight/2));

                //transform nodes data
                forceSimulation.nodes(defaultConfig.data.nodes)
                    .on("tick",ticked);
                //tranform links data
                forceSimulation.force("link")
                    .links(defaultConfig.data.links)
                    .distance(defaultConfig.defaultLinkDistance);

                console.log(defaultConfig.data.nodes);
                console.log(defaultConfig.data.links);

                //define arrow
                svg.append("svg:defs")
                    .append("svg:marker")
                    .attr("id", "marker")
                    .attr('viewBox', '100 100 10 10')
                    .attr("refX", 20)
                    .attr("refY",0)
                    .attr('markerWidth', 10)
                    .attr('markerHeight', 10)
                    .attr('orient', 'auto')
                    .append('svg:path')
                    .attr('d', 'M0,-5L10,0L0,5')
                    .attr("fill","brown");
                //draw links
                var links = svg.append("g")
                    .selectAll("line")
                    .data(defaultConfig.data.links)
                    .enter()
                    .append("line")
                    .attr("x1",function(n){return n.source.x})
                    .attr("y1",function(n){return n.source.y})
                    .attr("x2",function(n){return n.target.x})
                    .attr("y2",function(n){return n.target.y})
                    .attr("stroke","#a5abb6")
                    .attr("stroke-width",1)
                    .attr("marker-end","url(#marker)");
                //draw links-text
                var links_text = svg.append("g")
                    .selectAll("text")
                    .data(defaultConfig.data.links)
                    .enter()
                    .append("text")
                    .attr("x",function(e){
                        return (e.source.x+e.target.x)/2;
                    })
                    .attr("y",function(e){
                        console.log(e.source.y+"+"+e.target.y)
                        return (e.source.y+e.target.y)/2;
                    })
                    .attr("font-size",10)
                    .text(function(e){return e.type});
                //draw nodes group = node+node-text
                var nodes_g = svg.append("g")
                    .selectAll("g")
                    .data(defaultConfig.data.nodes)
                    .enter()
                    .append("g")
                    .attr("transform",function(e){
                        return "translate("+e.x+","+e.y+")";
                    })
                    .call(d3.drag()
                        .on("start",started)
                        .on("drag",dragged)
                        .on("end",ended));
                //draw nodes
                nodes_g.append("circle")
                    .attr("r",20)
                    .attr("fill","#ecb5c9");
                //draw node-text
                nodes_g.append("text")
                   q .attr("x",-15)
                    .attr("y",20)
                    .attr("font-size",100)
                    .text(function(e){return e.name});

                function started(d){
                    if(!d3.event.active){
                        forceSimulation.alphaTarget(0.8).restart();
                    }
                    d.fx = d.x;
                    d.fy = d.y;
                }
                function dragged(d){
                    d.fx = d3.event.x;
                    d.fy = d3.event.y;
                }
                function ended(d) {
                    if(!d3.event.active){
                        forceSimulation.alphaTarget(0);
                    }
                    d.fx = null;
                    d.fy = null;
                }

                function ticked(){
                    links
                        .attr("x1",function(n){return n.source.x})
                        .attr("y1",function(n){return n.source.y})
                        .attr("x2",function(n){return n.target.x})
                        .attr("y2",function(n){return n.target.y})
                    links_text
                        .attr("x",function(e){
                            return (e.source.x+e.target.x)/2;
                        })
                        .attr("y",function(e){
                            return (e.source.y+e.target.y)/2;
                        })
                    nodes_g
                        .attr("transform",function(e){
                            return "translate("+e.x+","+e.y+")";
                        })
                }

            }
            //because in the way of creating a javascript object,
            //you need to use "new" to use it
            new GroupExplorer({data:dataJson});
        })
        });
    </script>
							</div>
						</div>

						<div class="panel sidebar-menu">
							<div class="panel-heading">
								<h3 class="h4 panel-title">热门搜索</h3>
							</div>
							<div class="panel-body">
								<ul class="tag-cloud list-inline">
									
									<span class="input-group-btn" id="template1"><button type="button" class="btn btn-template-main"><i class="fa fa-tags" ></i>中国平安</button></span>
								    <span class="input-group-btn" id="template2"><button type="button" class="btn btn-template-main"><i class="fa fa-tags" ></i>方正科技</button></span>
								    <span class="input-group-btn" id="template3"><button type="button" class="btn btn-template-main"><i class="fa fa-tags" ></i>古井贡酒</button></span>
								    <span class="input-group-btn" id="template4"><button type="button" class="btn btn-template-main"><i class="fa fa-tags" ></i>芒果超媒</button></span>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- GET IT-->

		<!-- FOOTER -->
		<footer class="main-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<h4 class="h6">联系方式</h4>
						<p>
							企业邮箱：<a href="mailto:CONVEST@gmail.com" rel="nofollow">CONVEST@gmail.com</a>
						</p>
						<p>联系电话：+86 1234567</p>
						<p>工作时间：周一至周五：9:30-17:00</p>
						<hr>
						<h4 class="h6">真诚欢迎合作者的到来！</h4>

						<hr class="d-block d-lg-none">
					</div>
					<div class="col-lg-3">
						<h4 class="h6">数据来源</h4>
						<p>
							<a href="http://zxgk.court.gov.cn/" target="_blank"
								rel="nofollow">中国执行信息公开网</a>
						</p>
						<p>
							<a href="http://www.sipo.gov.cn/" target="_blank" rel="nofollow">国家知识产权局</a>
						</p>
						<p>
							<a href="http://sbj.cnipa.gov.cn/" target="_blank" rel="nofollow">商标局</a>
						</p>
						<p>
							<a href="http://www.ncac.gov.cn/" target="_blank" rel="nofollow">版权局</a>
						</p>

					</div>

					<div class="col-lg-3">
						<h4 class="h6">办公地址</h4>
						<p class="text-uppercase">
							<strong>中国上海杨浦区</strong><br>国定路777号 <br>上海财经大学<br>信息管理与工程学院<br>
							<strong></strong>
						</p>
						<a href="contact.jsp" class="btn btn-template-main">前往联系界面</a>
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
	<script src="js/d3.js"></script>
	<script src="js/d3.min.js"></script>
	<script >
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
		
	  $('body').on('click', '#template1', function () {  
	      
			$("#svg1").empty();
	
       
       d3.json("中国平安.json").then(function(dataJson){
        	
            //GroupExplorer constructing function
            //this is one way to create a javascript object
            function GroupExplorer(data){
                //create an object-include some data
                //this is an another way to create a javascript object
              
                var defaultConfig = {
                    data:{"nodes":[],"links":[]},//critical data set
                    windowWidth:500,
                    windowHeight:500,
                    defaultLinkDistance:30
                }
                //because the initial "data" is null,
                //so you need use jquery syntax "extend" to merge the json data
                //below,merge "data" into "defaultWindow"
                //"true" mean do not cover
                //details see jquery API document
                $.extend(true,defaultConfig,data);

                //so now we get the json file that we need
                //now let`s begin,transform json file to force graph data
                //but first ,we need to get "svg"
                var svg = d3.select("svg");
                svg.attr("width",800);
                svg.attr("height",1000);

                defaultConfig.data.links.forEach(function(e){
                    if(typeof e.source=="number"&&typeof e.target=="number"){
                        var sourceNode = defaultConfig.data.nodes.filter(function(n){
                            return n.id === e.source;
                        })[0];
                        var targetNode = defaultConfig.data.nodes.filter(function(n){
                            return n.id === e.target;
                        })[0];
                        e.source = sourceNode;
                        e.target = targetNode;
                    }
                });

                //create a force graph
                var forceSimulation = d3.forceSimulation()
                    .force("link",d3.forceLink())
                    .force("charge",d3.forceManyBody())
                    .force("center",d3.forceCenter(defaultConfig.windowWidth/2,defaultConfig.windowHeight/2));

                //transform nodes data
                forceSimulation.nodes(defaultConfig.data.nodes)
                    .on("tick",ticked);
                //tranform links data
                forceSimulation.force("link")
                    .links(defaultConfig.data.links)
                    .distance(defaultConfig.defaultLinkDistance);

                console.log(defaultConfig.data.nodes);
                console.log(defaultConfig.data.links);

                //define arrow
                svg.append("svg:defs")
                    .append("svg:marker")
                    .attr("id", "marker")
                    .attr('viewBox', '10 10 10 10')
                    .attr("refX", 20)
                    .attr("refY",0)
                    .attr('markerWidth', 10)
                    .attr('markerHeight', 10)
                    .attr('orient', 'auto')
                    .append('svg:path')
                    .attr('d', 'M0,-5L10,0L0,5')
                    .attr("fill","brown");
                //draw links
                var links = svg.append("g")
                    .selectAll("line")
                    .data(defaultConfig.data.links)
                    .enter()
                    .append("line")
                    .attr("x1",function(n){return n.source.x})
                    .attr("y1",function(n){return n.source.y})
                    .attr("x2",function(n){return n.target.x})
                    .attr("y2",function(n){return n.target.y})
                    .attr("stroke","#a5abb6")
                    .attr("stroke-width",1)
                    .attr("marker-end","url(#marker)");
                //draw links-text
                var links_text = svg.append("g")
                    .selectAll("text")
                    .data(defaultConfig.data.links)
                    .enter()
                    .append("text")
                    .attr("x",function(e){
                        return (e.source.x+e.target.x)/2;
                    })
                    .attr("y",function(e){
                        console.log(e.source.y+"+"+e.target.y)
                        return (e.source.y+e.target.y)/2;
                    })
                    .attr("font-size",10)
                    .text(function(e){return e.type});
                //draw nodes group = node+node-text
                var nodes_g = svg.append("g")
                    .selectAll("g")
                    .data(defaultConfig.data.nodes)
                    .enter()
                    .append("g")
                    .attr("transform",function(e){
                        return "translate("+e.x+","+e.y+")";
                    })
                    .call(d3.drag()
                        .on("start",started)
                        .on("drag",dragged)
                        .on("end",ended));
                //draw nodes
                nodes_g.append("circle")
                    .attr("r",15)
                    .attr("fill","#ecb5c9");
                //draw node-text
                nodes_g.append("text")
                    .attr("x",-15)
                    .attr("y",20)
                    .attr("font-size",10)
                    .text(function(e){return e.Name});

                function started(d){
                    if(!d3.event.active){
                        forceSimulation.alphaTarget(0.8).restart();
                    }
                    d.fx = d.x;
                    d.fy = d.y;
                }
                function dragged(d){
                    d.fx = d3.event.x;
                    d.fy = d3.event.y;
                }
                function ended(d) {
                    if(!d3.event.active){
                        forceSimulation.alphaTarget(0);
                    }
                    d.fx = null;
                    d.fy = null;
                }

                function ticked(){
                    links
                        .attr("x1",function(n){return n.source.x})
                        .attr("y1",function(n){return n.source.y})
                        .attr("x2",function(n){return n.target.x})
                        .attr("y2",function(n){return n.target.y})
                    links_text
                        .attr("x",function(e){
                            return (e.source.x+e.target.x)/2;
                        })
                        .attr("y",function(e){
                            return (e.source.y+e.target.y)/2;
                        })
                    nodes_g
                        .attr("transform",function(e){
                            return "translate("+e.x+","+e.y+")";
                        })
                }

            }
            //because in the way of creating a javascript object,
            //you need to use "new" to use it
            new GroupExplorer({data:dataJson});
        })
        });
	  $('body').on('click', '#template2', function () {  
	      
			$("#svg1").empty();
	
     
     d3.json("方正科技.json").then(function(dataJson){
      	
          //GroupExplorer constructing function
          //this is one way to create a javascript object
          function GroupExplorer(data){
              //create an object-include some data
              //this is an another way to create a javascript object
            
              var defaultConfig = {
                  data:{"nodes":[],"links":[]},//critical data set
                  windowWidth:800,
                  windowHeight:1000,
                  defaultLinkDistance:150
              }
              //because the initial "data" is null,
              //so you need use jquery syntax "extend" to merge the json data
              //below,merge "data" into "defaultWindow"
              //"true" mean do not cover
              //details see jquery API document
              $.extend(true,defaultConfig,data);

              //so now we get the json file that we need
              //now let`s begin,transform json file to force graph data
              //but first ,we need to get "svg"
              var svg = d3.select("svg");
              svg.attr("width",800);
              svg.attr("height",1000);

              defaultConfig.data.links.forEach(function(e){
                  if(typeof e.source=="number"&&typeof e.target=="number"){
                      var sourceNode = defaultConfig.data.nodes.filter(function(n){
                          return n.id === e.source;
                      })[0];
                      var targetNode = defaultConfig.data.nodes.filter(function(n){
                          return n.id === e.target;
                      })[0];
                      e.source = sourceNode;
                      e.target = targetNode;
                  }
              });

              //create a force graph
              var forceSimulation = d3.forceSimulation()
                  .force("link",d3.forceLink())
                  .force("charge",d3.forceManyBody())
                  .force("center",d3.forceCenter(defaultConfig.windowWidth/2,defaultConfig.windowHeight/2));

              //transform nodes data
              forceSimulation.nodes(defaultConfig.data.nodes)
                  .on("tick",ticked);
              //tranform links data
              forceSimulation.force("link")
                  .links(defaultConfig.data.links)
                  .distance(defaultConfig.defaultLinkDistance);

              console.log(defaultConfig.data.nodes);
              console.log(defaultConfig.data.links);

              //define arrow
              svg.append("svg:defs")
                  .append("svg:marker")
                  .attr("id", "marker")
                  .attr('viewBox', '100 100 10 10')
                  .attr("refX", 20)
                  .attr("refY",0)
                  .attr('markerWidth', 10)
                  .attr('markerHeight', 10)
                  .attr('orient', 'auto')
                  .append('svg:path')
                  .attr('d', 'M0,-5L10,0L0,5')
                  .attr("fill","brown");
              //draw links
              var links = svg.append("g")
                  .selectAll("line")
                  .data(defaultConfig.data.links)
                  .enter()
                  .append("line")
                  .attr("x1",function(n){return n.source.x})
                  .attr("y1",function(n){return n.source.y})
                  .attr("x2",function(n){return n.target.x})
                  .attr("y2",function(n){return n.target.y})
                  .attr("stroke","#a5abb6")
                  .attr("stroke-width",1)
                  .attr("marker-end","url(#marker)");
              //draw links-text
              var links_text = svg.append("g")
                  .selectAll("text")
                  .data(defaultConfig.data.links)
                  .enter()
                  .append("text")
                  .attr("x",function(e){
                      return (e.source.x+e.target.x)/2;
                  })
                  .attr("y",function(e){
                      console.log(e.source.y+"+"+e.target.y)
                      return (e.source.y+e.target.y)/2;
                  })
                  .attr("font-size",10)
                  .text(function(e){return e.type});
              //draw nodes group = node+node-text
              var nodes_g = svg.append("g")
                  .selectAll("g")
                  .data(defaultConfig.data.nodes)
                  .enter()
                  .append("g")
                  .attr("transform",function(e){
                      return "translate("+e.x+","+e.y+")";
                  })
                  .call(d3.drag()
                      .on("start",started)
                      .on("drag",dragged)
                      .on("end",ended));
              //draw nodes
              nodes_g.append("circle")
                  .attr("r",20)
                  .attr("fill","#ecb5c9");
              //draw node-text
              nodes_g.append("text")
                 q .attr("x",-15)
                  .attr("y",20)
                  .attr("font-size",100)
                  .text(function(e){return e.name});

              function started(d){
                  if(!d3.event.active){
                      forceSimulation.alphaTarget(0.8).restart();
                  }
                  d.fx = d.x;
                  d.fy = d.y;
              }
              function dragged(d){
                  d.fx = d3.event.x;
                  d.fy = d3.event.y;
              }
              function ended(d) {
                  if(!d3.event.active){
                      forceSimulation.alphaTarget(0);
                  }
                  d.fx = null;
                  d.fy = null;
              }

              function ticked(){
                  links
                      .attr("x1",function(n){return n.source.x})
                      .attr("y1",function(n){return n.source.y})
                      .attr("x2",function(n){return n.target.x})
                      .attr("y2",function(n){return n.target.y})
                  links_text
                      .attr("x",function(e){
                          return (e.source.x+e.target.x)/2;
                      })
                      .attr("y",function(e){
                          return (e.source.y+e.target.y)/2;
                      })
                  nodes_g
                      .attr("transform",function(e){
                          return "translate("+e.x+","+e.y+")";
                      })
              }

          }
          //because in the way of creating a javascript object,
          //you need to use "new" to use it
          new GroupExplorer({data:dataJson});
      })
      });
	  $('body').on('click', '#template3', function () {  
	      
			$("#svg1").empty();
	
     
     d3.json("古井贡酒.json").then(function(dataJson){
      	
          //GroupExplorer constructing function
          //this is one way to create a javascript object
          function GroupExplorer(data){
              //create an object-include some data
              //this is an another way to create a javascript object
            
              var defaultConfig = {
                  data:{"nodes":[],"links":[]},//critical data set
                  windowWidth:800,
                  windowHeight:1000,
                  defaultLinkDistance:150
              }
              //because the initial "data" is null,
              //so you need use jquery syntax "extend" to merge the json data
              //below,merge "data" into "defaultWindow"
              //"true" mean do not cover
              //details see jquery API document
              $.extend(true,defaultConfig,data);

              //so now we get the json file that we need
              //now let`s begin,transform json file to force graph data
              //but first ,we need to get "svg"
              var svg = d3.select("svg");
              svg.attr("width",800);
              svg.attr("height",1000);

              defaultConfig.data.links.forEach(function(e){
                  if(typeof e.source=="number"&&typeof e.target=="number"){
                      var sourceNode = defaultConfig.data.nodes.filter(function(n){
                          return n.id === e.source;
                      })[0];
                      var targetNode = defaultConfig.data.nodes.filter(function(n){
                          return n.id === e.target;
                      })[0];
                      e.source = sourceNode;
                      e.target = targetNode;
                  }
              });

              //create a force graph
              var forceSimulation = d3.forceSimulation()
                  .force("link",d3.forceLink())
                  .force("charge",d3.forceManyBody())
                  .force("center",d3.forceCenter(defaultConfig.windowWidth/2,defaultConfig.windowHeight/2));

              //transform nodes data
              forceSimulation.nodes(defaultConfig.data.nodes)
                  .on("tick",ticked);
              //tranform links data
              forceSimulation.force("link")
                  .links(defaultConfig.data.links)
                  .distance(defaultConfig.defaultLinkDistance);

              console.log(defaultConfig.data.nodes);
              console.log(defaultConfig.data.links);

              //define arrow
              svg.append("svg:defs")
                  .append("svg:marker")
                  .attr("id", "marker")
                  .attr('viewBox', '100 100 10 10')
                  .attr("refX", 20)
                  .attr("refY",0)
                  .attr('markerWidth', 10)
                  .attr('markerHeight', 10)
                  .attr('orient', 'auto')
                  .append('svg:path')
                  .attr('d', 'M0,-5L10,0L0,5')
                  .attr("fill","brown");
              //draw links
              var links = svg.append("g")
                  .selectAll("line")
                  .data(defaultConfig.data.links)
                  .enter()
                  .append("line")
                  .attr("x1",function(n){return n.source.x})
                  .attr("y1",function(n){return n.source.y})
                  .attr("x2",function(n){return n.target.x})
                  .attr("y2",function(n){return n.target.y})
                  .attr("stroke","#a5abb6")
                  .attr("stroke-width",1)
                  .attr("marker-end","url(#marker)");
              //draw links-text
              var links_text = svg.append("g")
                  .selectAll("text")
                  .data(defaultConfig.data.links)
                  .enter()
                  .append("text")
                  .attr("x",function(e){
                      return (e.source.x+e.target.x)/2;
                  })
                  .attr("y",function(e){
                      console.log(e.source.y+"+"+e.target.y)
                      return (e.source.y+e.target.y)/2;
                  })
                  .attr("font-size",10)
                  .text(function(e){return e.type});
              //draw nodes group = node+node-text
              var nodes_g = svg.append("g")
                  .selectAll("g")
                  .data(defaultConfig.data.nodes)
                  .enter()
                  .append("g")
                  .attr("transform",function(e){
                      return "translate("+e.x+","+e.y+")";
                  })
                  .call(d3.drag()
                      .on("start",started)
                      .on("drag",dragged)
                      .on("end",ended));
              //draw nodes
              nodes_g.append("circle")
                  .attr("r",20)
                  .attr("fill","#ecb5c9");
              //draw node-text
              nodes_g.append("text")
                 q .attr("x",-15)
                  .attr("y",20)
                  .attr("font-size",100)
                  .text(function(e){return e.name});

              function started(d){
                  if(!d3.event.active){
                      forceSimulation.alphaTarget(0.8).restart();
                  }
                  d.fx = d.x;
                  d.fy = d.y;
              }
              function dragged(d){
                  d.fx = d3.event.x;
                  d.fy = d3.event.y;
              }
              function ended(d) {
                  if(!d3.event.active){
                      forceSimulation.alphaTarget(0);
                  }
                  d.fx = null;
                  d.fy = null;
              }

              function ticked(){
                  links
                      .attr("x1",function(n){return n.source.x})
                      .attr("y1",function(n){return n.source.y})
                      .attr("x2",function(n){return n.target.x})
                      .attr("y2",function(n){return n.target.y})
                  links_text
                      .attr("x",function(e){
                          return (e.source.x+e.target.x)/2;
                      })
                      .attr("y",function(e){
                          return (e.source.y+e.target.y)/2;
                      })
                  nodes_g
                      .attr("transform",function(e){
                          return "translate("+e.x+","+e.y+")";
                      })
              }

          }
          //because in the way of creating a javascript object,
          //you need to use "new" to use it
          new GroupExplorer({data:dataJson});
      })
      });
	  $('body').on('click', '#template4', function () {  
	      
			$("#svg1").empty();
	
     
     d3.json("芒果超媒.json").then(function(dataJson){
      	
          //GroupExplorer constructing function
          //this is one way to create a javascript object
          function GroupExplorer(data){
              //create an object-include some data
              //this is an another way to create a javascript object
            
              var defaultConfig = {
                  data:{"nodes":[],"links":[]},//critical data set
                  windowWidth:800,
                  windowHeight:1000,
                  defaultLinkDistance:120
              }
              //because the initial "data" is null,
              //so you need use jquery syntax "extend" to merge the json data
              //below,merge "data" into "defaultWindow"
              //"true" mean do not cover
              //details see jquery API document
              $.extend(true,defaultConfig,data);

              //so now we get the json file that we need
              //now let`s begin,transform json file to force graph data
              //but first ,we need to get "svg"
              var svg = d3.select("svg");
              svg.attr("width",defaultConfig.windowWidth);
              svg.attr("height",defaultConfig.windowHeight);

              defaultConfig.data.links.forEach(function(e){
                  if(typeof e.source=="number"&&typeof e.target=="number"){
                      var sourceNode = defaultConfig.data.nodes.filter(function(n){
                          return n.id === e.source;
                      })[0];
                      var targetNode = defaultConfig.data.nodes.filter(function(n){
                          return n.id === e.target;
                      })[0];
                      e.source = sourceNode;
                      e.target = targetNode;
                  }
              });

              //create a force graph
              var forceSimulation = d3.forceSimulation()
                  .force("link",d3.forceLink())
                  .force("charge",d3.forceManyBody())
                  .force("center",d3.forceCenter(defaultConfig.windowWidth/2,defaultConfig.windowHeight/2));

              //transform nodes data
              forceSimulation.nodes(defaultConfig.data.nodes)
                  .on("tick",ticked);
              //tranform links data
              forceSimulation.force("link")
                  .links(defaultConfig.data.links)
                  .distance(defaultConfig.defaultLinkDistance);

              console.log(defaultConfig.data.nodes);
              console.log(defaultConfig.data.links);

              //define arrow
              svg.append("svg:defs")
                  .append("svg:marker")
                  .attr("id", "marker")
                  .attr('viewBox', '100 100 10 10')
                  .attr("refX", 20)
                  .attr("refY",0)
                  .attr('markerWidth', 10)
                  .attr('markerHeight', 10)
                  .attr('orient', 'auto')
                  .append('svg:path')
                  .attr('d', 'M0,-5L10,0L0,5')
                  .attr("fill","brown");
              //draw links
              var links = svg.append("g")
                  .selectAll("line")
                  .data(defaultConfig.data.links)
                  .enter()
                  .append("line")
                  .attr("x1",function(n){return n.source.x})
                  .attr("y1",function(n){return n.source.y})
                  .attr("x2",function(n){return n.target.x})
                  .attr("y2",function(n){return n.target.y})
                  .attr("stroke","#a5abb6")
                  .attr("stroke-width",1)
                  .attr("marker-end","url(#marker)");
              //draw links-text
              var links_text = svg.append("g")
                  .selectAll("text")
                  .data(defaultConfig.data.links)
                  .enter()
                  .append("text")
                  .attr("x",function(e){
                      return (e.source.x+e.target.x)/2;
                  })
                  .attr("y",function(e){
                      console.log(e.source.y+"+"+e.target.y)
                      return (e.source.y+e.target.y)/2;
                  })
                  .attr("font-size",10)
                  .text(function(e){return e.type});
              //draw nodes group = node+node-text
              var nodes_g = svg.append("g")
                  .selectAll("g")
                  .data(defaultConfig.data.nodes)
                  .enter()
                  .append("g")
                  .attr("transform",function(e){
                      return "translate("+e.x+","+e.y+")";
                  })
                  .call(d3.drag()
                      .on("start",started)
                      .on("drag",dragged)
                      .on("end",ended));
              //draw nodes
              nodes_g.append("circle")
                  .attr("r",20)
                  .attr("fill","#ecb5c9");
              //draw node-text
              nodes_g.append("text")
                 q .attr("x",-15)
                  .attr("y",20)
                  .attr("font-size",100)
                  .text(function(e){return e.name});

              function started(d){
                  if(!d3.event.active){
                      forceSimulation.alphaTarget(0.8).restart();
                  }
                  d.fx = d.x;
                  d.fy = d.y;
              }
              function dragged(d){
                  d.fx = d3.event.x;
                  d.fy = d3.event.y;
              }
              function ended(d) {
                  if(!d3.event.active){
                      forceSimulation.alphaTarget(0);
                  }
                  d.fx = null;
                  d.fy = null;
              }

              function ticked(){
                  links
                      .attr("x1",function(n){return n.source.x})
                      .attr("y1",function(n){return n.source.y})
                      .attr("x2",function(n){return n.target.x})
                      .attr("y2",function(n){return n.target.y})
                  links_text
                      .attr("x",function(e){
                          return (e.source.x+e.target.x)/2;
                      })
                      .attr("y",function(e){
                          return (e.source.y+e.target.y)/2;
                      })
                  nodes_g
                      .attr("transform",function(e){
                          return "translate("+e.x+","+e.y+")";
                      })
              }

          }
          //because in the way of creating a javascript object,
          //you need to use "new" to use it
          new GroupExplorer({data:dataJson});
      })
      });
  </script>
</body>
</html>