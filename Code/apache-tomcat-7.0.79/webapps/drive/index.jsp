<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Deep Judge - 在线跳水评分系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/pages/dashboard.css" rel="stylesheet">
<script src="js/echarts.min.js"></script>
<style type="text/css">
#tagsList {
	position: relative;
	width: 480px;
	height: 300px;
}
#tagsList a {
	position: absolute;
	top: 0px;
	left: 0px;
	font-family: Microsoft YaHei;
	color: #000;
	font-weight: bold;
	text-decoration: none;
	padding: 3px 6px;
}
#tagsList a:hover {
	color: #FF0000;
	letter-spacing: 2px;
}

</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="index.html">Deep Judge - 在线跳水评分系统</a>
      <div class="nav-collapse">
        <ul class="nav pull-right">
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-cog"></i> Account <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="javascript:;">设置</a></li>
              <li><a href="javascript:;">帮助</a></li>
            </ul>
          </li>
          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="icon-user"></i> Hinton <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="javascript:;">个人信息</a></li>
              <li><a href="javascript:;">注销</a></li>
            </ul>
          </li>
        </ul>
        <form class="navbar-search pull-right">
          <input type="text" class="search-query" placeholder="Search">
        </form>
      </div>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li class="active"><a href="index.html"><i class="icon-dashboard"></i><span>评分</span> </a> </li>
        <li><a href="reports.jsp"><i class="icon-list-alt"></i><span>报告</span> </a> </li>
        <!--<li><a href="guidely.html"><i class="icon-facetime-video"></i><span>回放</span> </a></li>-->
        <!--<li><a href="charts.html"><i class="icon-bar-chart"></i><span>Charts</span> </a> </li> -->
        <!--<li><a href="shortcodes.html"><i class="icon-code"></i><span>Shortcodes</span> </a> </li> -->
        <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-long-arrow-down"></i><span>更多</span> <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="icons.html">Icons</a></li>
            <li><a href="faq.html">FAQ</a></li>
            <li><a href="pricing.html">Pricing Plans</a></li>
            <li><a href="login.html">Login</a></li>
            <li><a href="signup.html">Signup</a></li>
            <li><a href="error.html">404</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<!-- /subnavbar -->

<div class="main">
  <div class="main-inner">
    <div class="container">
    
    
    
    
     <form  action="load" class="btn btn-default" method="post" enctype="multipart/form-data" target="nm_iframe" /> 
     		  <select class="form-control" style="margin-top:8px;width:100px">
				<option>101B</option>
				<option>103B</option>
				<option>105B</option>
				<option>107C</option>
				<option>109C</option>
				<option>201B</option>
				<option>203B</option>
				<option>205B</option>
				<option>207B</option>
				<option>205C</option>
				<option>207C</option>
				<option>301B</option>
				<option>305B</option>
				<option>305C</option>
				<option>307C</option>
				<option>401B</option>
				<option>403B</option>
				<option>405B</option>
				<option>405C</option>
				<option>407C</option>
				<option>5152B</option>
				<option>5154B</option>
				<option>5156B</option>
				<option>5253B</option>
				<option>5255B</option>
				<option>5353B</option>
				<option>5355B</option>
				<option>5235D</option>
				<option>5335D</option>
				<option>6142D</option>
				<option>626C</option>
			  </select>
     		  <input type="button" value="选择视频" onclick="file1.click()" class="btn btn-default"/>
  			  <input type="file" id="file1" name="file1" onchange="doChange(this);" contentEditable="false" accept="text/html" style="visibility: hidden; position: absolute;"/>
       		  <!-- <input type="file" class="btn btn-default" name="file1" id="file1">  -->
       		  <input type="submit" class="btn btn-default" name="Submit" value="上传视频" > 
       		   <!--<input type="button" id="startModel" class="btn btn-default" onclick="myFunction()" value="开始处理">-->
			  </form>
			  
			  <form action="" method="post" name="kaishichuli" class="btn btn-default"/> 
       		   			<input id="StartModel" type="button"  name="Submit" class="btn btn-default"  value="开始处理"/>
			  </form>
			  
			  <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe> 
			  
			  <script src="js/jquery-1.7.2.min.js"></script> 
			  <script language="javascript" type="text/javascript">
			  $(document).ready(function() {
					$("#StartModel").click(function() {
						 $.post(  
					                "CallModel",      //url地址  
					                {  
					                	textArea:$("#textArea").text()    
					                },  
					                function(data){ //回传函数  
					                	var vid = document.getElementById("video1");
					                	document.getElementById("mp4_src").src = "./1/a.mp4";
					         			  document.getElementById("mp4_src2").src = "./1/b.mp4";
					         				setTimeout("document.getElementById('video1').load();document.getElementById('video2').load();",5000);
					         			 // document.getElementById("video1").load();
					        			  //document.getElementById("video2").load();
					         			 var myChart = echarts.init(document.getElementById('main'));
					         			 myChart.showLoading();
					         			 setTimeout("myChart.hideLoading();",3000);
					         			 setInterval(function() {
					         			    option.series[0].data[0].value = (79).toFixed(2) - 0;
					         				 myChart.hideLoading();
					         			    myChart.setOption(option, true);
					         			}, 2000);
					                },  
					                "text");  
						 
						
					});
					 
					
					
				});
		
			  var vid = document.getElementById("video1");
   		      function myFunction()  {
    		  document.getElementById("mp4_src").src = "./1/a.mp4";
   			  document.getElementById("mp4_src2").src = "./1/b.mp4";
   				setTimeout("document.getElementById('video1').load();document.getElementById('video2').load();",5000);
   			 // document.getElementById("video1").load();
  			  //document.getElementById("video2").load();
   			 var myChart = echarts.init(document.getElementById('main'));
   			 myChart.showLoading();
   			 setTimeout("myChart.hideLoading();",3000);
   			 setInterval(function() {
   			    option.series[0].data[0].value = (79).toFixed(2) - 0;
   				 myChart.hideLoading();
   			    myChart.setOption(option, true);
   			}, 2000);
   		      }
			  </script> 
    
    
    
    
      <div class="row">
        <div class="span6">
		<div class="widget widget-nopad">

            <div class="widget-header"><i class="icon-list-alt"></i>

              <h3>原始视频</h3>
			  <!--
			  <button type="button" class="btn btn-default">选择难度</button>
			  <button type="button" class="btn btn-default">选择路径</button>
			  <button type="button" class="btn btn-primary">上传</button>
			  -->
            </div>
            <div class="widget-content">
				<video id="video1"  autoplay="autoplay" loop="loop" width="560" poster="./cover1.png" height="320" style="clear:both;display:block;margin:auto">
				<source id="mp4_src" src="./1/a.mp4" type="video/mp4"/>  
				</video>
			</div>
		</div>
            
            
			
            <div class="widget widget-nopad">
            <div class="widget-header"> <i class="icon-list-alt"></i>
              <h3>特征可视化结果</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
              <div class="widget-content">
				<video id="video2"  autoplay="autoplay" loop="loop" width="560" poster="./cover2.png" height="320" style="clear:both;display:block;margin:auto">
				<source id="mp4_src2" src="./1/b.mp4" type="video/mp4"/> 
				</video>
			  </div>
            </div>
			</div>
          <!-- /widget -->
          
        </div>
		
		
		
		
        <!-- /span6 -->
        <div class="span6">

          <div class="widget widget-nopad">
                            <div class="widget-header">
                                <i class="icon-bar-chart"></i>
                                <h3>
                                    评分</h3>
                            </div>
                            <!-- /widget-header -->
                            <div class="widget-content">
							<div id="main" style="width: 480px;height:320px;margin:0 auto"></div>
								<script type="text/javascript">
								var myChart = echarts.init(document.getElementById('main'));


option = {
    tooltip : {
        formatter: "{a} <br/>{b} : {c}"
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            restore : {show: false},
            saveAsImage : {show: false}
        }
    },
    series : [
        {
            name:'跳水最终得分',
            type:'gauge',
			min: 0,
            max: 120,
            detail : {formatter:'{value}%'},
            data:[{value: 0, name: '评分'}]
        }
    ]
};
myChart.setOption(option, true)
/*
setInterval(function() {
    option.series[0].data[0].value = (8).toFixed(2) - 0;
    myChart.setOption(option, true);
}, 2000);
*/

    </script>
							
							
							
                                <!-- /-chart -->
                            </div>
                            <!-- /widget-content -->
                        </div>
          <!-- /widget -->
          
                    <div class="widget widget-table action-table">
            <div class="widget-header"> <i class="icon-th-list"></i>
              <h3>评分细节</h3>
            </div>
            <!-- /widget-header -->
            <div class="widget-content">
			
			<div id="tagsList"> 
    <a href="#/Article.aspx?kid=1" title="星级评分">起跳高度过低</a> 
    <a href="#/Article.aspx?kid=2" title="层特效">水花小</a> 
    <a href="#/Article.aspx?kid=3" title="关键字">入水角度倾斜</a> 
    <a href="#/Article.aspx?kid=4" title="拖拽">打开时机过慢</a>  
    <a href="#/Article.aspx?kid=1" title="星级评分">起跳高度过低</a> 
    <a href="#/Article.aspx?kid=2" title="层特效">水花小</a> 
    <a href="#/Article.aspx?kid=3" title="关键字">入水角度倾斜</a> 
    <a href="#/Article.aspx?kid=4" title="拖拽">打开时机过慢</a>  
    <a href="#/Article.aspx?kid=1" title="星级评分">起跳高度过低</a> 
    <a href="#/Article.aspx?kid=2" title="层特效">水花小</a> 
    <a href="#/Article.aspx?kid=3" title="关键字">入水角度倾斜</a> 
    <a href="#/Article.aspx?kid=4" title="拖拽">打开时机过慢</a>  
</div>
			
			
			
			<!--
			<div style="height:320px;margin:0 100px">
			<div style="">
			<br>
			<h1 id="judgeDetail"></h1>
			</div>
			</div>
			-->
			  </div>
            </div>
            <!-- /widget-content --> 
          </div>
          
          </div>
          <!-- /widget -->
        </div>
        <!-- /span6 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /main-inner --> 
</div>
<!-- /main -->
<nav class="navbar navbar-default navbar-fixed-bottom">
<div style="float:right;">
<div class="dragclass" id="main" style="LEFT: 100px; TOP: 100px">
	
	
		<div class="span6">
          <div class="widget">
            <div class="widget-header"> <i class="icon-file"></i>
              <h3>聊天机器人</h3>
			  <button id="MinWindow" type="button" class="btn btn-default">-</button>
			  <button id="MaxWindow" type="button" class="btn btn-default">+</button>
            </div>
            <!-- /widget-header -->
            <div class="widget-content" id="ChatWindow">
			  <div style="height:300px;overflow-y:auto;" id="ChatScroll">
              <ul class="messages_layout" id="ChatContent">
              
                <li class="from_user left"> <a href="#" class="avatar"><img src="img/message_avatar1.png"/></a>
                  <div class="message_wrap"> <span class="arrow"></span>
                    <div class="info">
					<a class="name">Deep Judge</a> <span class="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                    </div>
                    <div>
                    <div class="text">deep judge为您服务</div>
                    
                    
                   
                    
                    </div>
                    </div>
                </li>
				
               <!-- 
               <li class="by_myself right"> <a href="#" class="avatar"><img src="img/message_avatar2.png"/></a>
                  <div class="message_wrap"> <span class="arrow"></span>
                    <div class="info">
					<a class="name">林俊宇 (myself) </a> <span class="time">4 hours ago</span>
                    </div>
                    <div class="text"> All I wa suit… l! Ien rounds with mightound. </div>
                  </div>
                </li>
                 -->
                
              </ul>
			  </div>
			  <div id="ChatBody">
					<form action="" method="post" name="chat">
						<textarea id="textArea" style="WIDTH: 450px" rows="3" name="ChatValue"></textarea>
						<input id="SendMessage"  type="button" name="Submit" value="发送" />
					</form>
				</div>
            </div>
            <!-- /widget-content --> 
          </div>
		</div>
	
	
</div>
</div>
</nav>




<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2017 <a href="#">Hinton团队</a> 版权所有</a></div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="js/jquery-1.7.2.min.js"></script> 
<script src="js/excanvas.min.js"></script> 
<script src="js/chart.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="js/full-calendar/fullcalendar.min.js"></script>
<script src="js/base.js"></script>
<script type="text/javascript" src="js/tags.js"></script> 

<script language="javascript" type="text/javascript">
var i=0;
function sleep(d){
  for(var t = Date.now();Date.now() - t <= d;);
}
$(document).ready(function() {
	$("#MinWindow").click(function() {
		$("#ChatWindow").hide();
	});
	$("#MaxWindow").click(function() {
		$("#ChatWindow").show();
	});
	$("#SendMessage").click(function() {
		var str =  '<li class="by_myself right" style="float:right;"> <a href="#" class="avatar"><img src="img/message_avatar2.png"/></a><div class="message_wrap"><span class="arrow"></span><div class="info"><a class="name">用户 (myself) </a> <span class="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="text">' + $("#textArea").text() + '</div></div></li>';
		$("#ChatContent").append(str);
		$("#ChatScroll").scrollTop($("#ChatScroll").scrollTop() + 100);
		 $.post(  
	                "CallPy",      //url地址  
	                {  
	                	textArea:$("#textArea").text()    
	                },  
	                function(data){ //回传函数  
	                	var str2 = '<li class="from_user left"><a href="#" class="avatar"><img src="img/message_avatar1.png"/></a><div class="message_wrap"> <span class="arrow"></span><div class="info"><a class="name">Deep Judge</a> <span class="time">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div><div class="text">' + data+ '</div></div></li>'; 
	                	$("#ChatContent").append(str2);
	    				$("#ChatScroll").scrollTop($("#ChatScroll").scrollTop() + 100);
	                },  
	                "text");  
		 
		$("#ChatScroll").scrollTop($("#ChatScroll").scrollTop() + 100);
		i++;
		
	});
	 
	
	
});

  </script>
 <script language="javascript">

var index = 0;
var judgeDetail ="起跳时，起跳高度不够。\n \n入水时，身体倾斜\n \n水花过大";

function type() {
	var elementStr = "judgeDetail";
	document.getElementById(elementStr).innerText = judgeDetail.substring(0, index++);
	
	if(index > judgeDetail.length) {
		clearInterval(interval1);
	}
	
}

var interval1 = setInterval(type, 100);
 
</script>

<script>     

        var lineChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    pointColor: "rgba(220,220,220,1)",
				    pointStrokeColor: "#fff",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    pointColor: "rgba(151,187,205,1)",
				    pointStrokeColor: "#fff",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

        var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


        var barChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }    

        $(document).ready(function() {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var calendar = $('#calendar').fullCalendar({
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
          },
          selectable: true,
          selectHelper: true,
          select: function(start, end, allDay) {
            var title = prompt('Event Title:');
            if (title) {
              calendar.fullCalendar('renderEvent',
                {
                  title: title,
                  start: start,
                  end: end,
                  allDay: allDay
                },
                true // make the event "stick"
              );
            }
            calendar.fullCalendar('unselect');
          },
          editable: true,
          events: [
            {
              title: 'All Day Event',
              start: new Date(y, m, 1)
            },
            {
              title: 'Long Event',
              start: new Date(y, m, d+5),
              end: new Date(y, m, d+7)
            },
            {
              id: 999,
              title: 'Repeating Event',
              start: new Date(y, m, d-3, 16, 0),
              allDay: false
            },
            {
              id: 999,
              title: 'Repeating Event',
              start: new Date(y, m, d+4, 16, 0),
              allDay: false
            },
            {
              title: 'Meeting',
              start: new Date(y, m, d, 10, 30),
              allDay: false
            },
            {
              title: 'Lunch',
              start: new Date(y, m, d, 12, 0),
              end: new Date(y, m, d, 14, 0),
              allDay: false
            },
            {
              title: 'Birthday Party',
              start: new Date(y, m, d+1, 19, 0),
              end: new Date(y, m, d+1, 22, 30),
              allDay: false
            },
            {
              title: 'by EGrappler',
              start: new Date(y, m, 28),
              end: new Date(y, m, 29),
              url: 'http://by EGrappler/'
            }
          ]
        });
      });
        var doughnutData = [
				{
				    value: 30,
				    color: "#F7464A"
				},
				{
				    value: 50,
				    color: "#46BFBD"
				},
				{
				    value: 100,
				    color: "#FDB45C"
				},
				{
				    value: 40,
				    color: "#949FB1"
				},
				{
				    value: 120,
				    color: "#4D5360"
				}

			];

        var myDoughnut = new Chart(document.getElementById("donut-chart").getContext("2d")).Doughnut(doughnutData);


        var lineChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    pointColor: "rgba(220,220,220,1)",
				    pointStrokeColor: "#fff",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    pointColor: "rgba(151,187,205,1)",
				    pointStrokeColor: "#fff",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

        var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


        var barChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

var myLine = new Chart(document.getElementById("bar-chart").getContext("2d")).Bar(barChartData);

var pieData = [
				{
				    value: 30,
				    color: "#F38630"
				},
				{
				    value: 50,
				    color: "#E0E4CC"
				},
				{
				    value: 100,
				    color: "#69D2E7"
				}

			];

				var myPie = new Chart(document.getElementById("pie-chart").getContext("2d")).Pie(pieData);

				var chartData = [
			{
			    value: Math.random(),
			    color: "#D97041"
			},
			{
			    value: Math.random(),
			    color: "#C7604C"
			},
			{
			    value: Math.random(),
			    color: "#21323D"
			},
			{
			    value: Math.random(),
			    color: "#9D9B7F"
			},
			{
			    value: Math.random(),
			    color: "#7D4F6D"
			},
			{
			    value: Math.random(),
			    color: "#584A5E"
			}
		];
				var myPolarArea = new Chart(document.getElementById("line-chart").getContext("2d")).PolarArea(chartData);
	</script>
</body>
</html>
