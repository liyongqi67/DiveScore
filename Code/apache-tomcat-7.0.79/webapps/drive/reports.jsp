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
    
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    
    <link href="css/style.css" rel="stylesheet">
    
    <link href="css/pages/reports.css" rel="stylesheet">
	<script src="js/echarts.min.js"></script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

  </head>

<body>

<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<a class="brand" href="index.html">
				Deep Judge - 在线跳水评分系统			
			</a>		
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-cog"></i>
							Account
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Settings</a></li>
							<li><a href="javascript:;">Help</a></li>
						</ul>						
					</li>
			
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i> 
							Hinton
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Profile</a></li>
							<li><a href="javascript:;">Logout</a></li>
						</ul>						
					</li>
				</ul>
			
				<form class="navbar-search pull-right">
					<input type="text" class="search-query" placeholder="Search">
				</form>
				
			</div><!--/.nav-collapse -->	
	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->
    


<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li><a href="index.jsp"><i class="icon-dashboard"></i><span>评分</span> </a> </li>
        <li class="active"><a href="reports.html"><i class="icon-list-alt"></i><span>报告</span> </a> </li>
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
    
<div class="container" style="position:fixed;z-index:3;margin-left:500px;margin-top:100px;display:none;" id="caloriWindow">
<div class="dragclass" id="main" style="LEFT: 100px; TOP: 100px">
	
		<div class="span6">
          <div class="widget">
            <div class="widget-header" style="background-color:black"> <i class="icon-file"></i>
              <h3>卡路里窗口</h3>
			  <button id="CloseWindow" type="button" class="btn btn-default">×</button>
            </div>
            <!-- /widget-header -->
            <div class="widget-content" id="ChatWindow">
				<div style="text-align:center;" id="ChatScroll">
					<img src="img/ss.jpg">
				</div>
				<div style="text-align:center">
					<h3>食物种类：蛋炒饭</h3>
					<h3>卡路里：516大卡</h3>
				</div>
            <!-- /widget-content --> 
          </div>
		</div>
	
	
</div>
</div>
</div>
    
<div class="main">
	
	<div class="main-inner">
	    <div class="container">
			<div class="row">
				<div class="span6">
					<div class="widget">
						<div class="widget-header">
							<i class="icon-star"></i>
							<h3>最常选择动作及得分</h3>
						</div> <!-- /widget-header -->
						<div class="widget-content">
							<div id="main1" style="width: 480px;height:250px;margin:0 auto"></div>
						</div> <!-- /widget-content -->
					</div> <!-- /widget -->
					
					<div class="widget">
						<div class="widget-header">
							<i class="icon-star"></i>
							<h3>身体健康状况</h3>
							<button type="button" class="btn btn-default">更新身高</button>
							<button type="button" class="btn btn-default">更新体重</button>
						</div> <!-- /widget-header -->
						<div class="widget-content">
							<div id="main2" style="width: 480px;height:250px;margin:0 auto"></div>
						</div> <!-- /widget-content -->
					</div> <!-- /widget -->
				</div>
				
				<div class="span6">
					<div class="widget">
						<div class="widget-header">
							<i class="icon-list-alt"></i>
							<h3>每日得分情况</h3>
						</div> <!-- /widget-header -->
						<div class="widget-content">
							<div id="main3" style="width: 480px;height:250px;margin:0 auto"></div>
						</div> <!-- /widget-content -->
					</div> <!-- /widget -->
					
					<div class="widget">
						<div class="widget-header" >
							<i class="icon-list-alt"></i>
							<h3>每日食物摄入卡路里</h3>
							
							<form  action="load" class="btn btn-default" method="post" enctype="multipart/form-data" target="nm_iframe" /> 
							 <input type="button" value="选择食物图片" onclick="filePhoto.click()" class="btn btn-default"/>
  			  				 <input type="file" id="filePhoto" name="filePhoto" onchange="doChange(this);" contentEditable="false" accept="text/html" style="visibility: hidden; position: absolute;"/>
       		  				 <!-- <input type="file" class="btn btn-default" name="file1" id="file1">  -->
       		                <input type="submit" class="btn btn-default" name="Submit" value="上传图片" > 
       		                <input type="button" class="btn btn-default" id="OpenWindow" onclick="myFunction()" value="开始计算">
			                </form>
			                <iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe> 
			  
			  
							<!-- <button type="button" class="btn btn-default" id="OpenWindow">上传食物照片</button>
							<select class="form-control" style="margin-top:8px;width:100px">
								<option>早餐</option>
								<option>午餐</option>
								<option>晚餐</option>
							</select>
							-->
						</div> <!-- /widget-header -->
						<div class="widget-content">
							<div id="main4" style="width: 480px;height:250px;margin:0 auto"></div>
						</div> <!-- /widget-content -->
					</div> <!-- /widget -->
				</div> <!-- /span6 -->
	      	
			</div> <!-- /row -->
	    </div>
	</div> <!-- /main-inner -->
</div> <!-- /main -->
    

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
    

<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/excanvas.min.js"></script>
<script src="js/chart.min.js" type="text/javascript"></script>
<script src="js/bootstrap.js"></script>
<script src="js/base.js"></script>

<script language="javascript" type="text/javascript">
$(document).ready(function() {
	$("#CloseWindow").click(function() {
		
		$("#caloriWindow").hide();
	});
	$("#OpenWindow").click(function() {
		$(function(){
			function show(){
				$("#caloriWindow").show();
			}
			setTimeout(show,2000);// 注意函数名没有引号和括弧！
			// 使用setInterval("show()",3000);会报“缺少对象”

			});
		//$("#caloriWindow").show();
	});
	
	
});
</script>

<script type="text/javascript">
var myChart1 = echarts.init(document.getElementById('main1'));
var myChart2 = echarts.init(document.getElementById('main2'));
var myChart3 = echarts.init(document.getElementById('main3'));
var myChart4 = echarts.init(document.getElementById('main4'));
option1 = {
    title: {
        text: ''
    },
    tooltip: {},
    legend: {
        data: ['', '']
    },
    radar: {
        // shape: 'circle',
        name: {
            textStyle: {
                color: '#fff',
                backgroundColor: '#999',
                borderRadius: 3,
                padding: [3, 5]
           }
        },
        indicator: [
           { name: '207B', max: 10},
           { name: '405B', max: 10},
           { name: '207C', max: 10},
           { name: '307C', max: 10},
           { name: '5253B', max: 10},
           { name: '109C', max: 10}
        ]
    },
    series: [{
        name: '预算 vs 开销（Budget vs spending）',
        type: 'radar',
        // areaStyle: {normal: {}},
        data : [
            {
                value : [8.5, 8.0, 8.0, 9.0, 9.5, 9.0],
                name : '最近一次得分'
            }, 
			{
                value : [8.0, 8.5, 9.0, 8.0, 8.0, 9.0],
                name : '平均得分'
            }
        ]
    }]
};
myChart1.setOption(option1, true);



option2 = {
    title : {
        text: '',
        subtext: ''
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['身高','体重']
    },
    toolbox: {
        show : true,
        feature : {
            dataView : {show: false, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'身高',
            type:'bar',
            data:[180.1, 180.2, 180.2, 180.2, 180.2, 180.2, 180.2, 180.2, 180.2, 180.2, 180.2, 180.2]
            
        },
        {
            name:'体重',
            type:'bar',
            data:[65.1, 62, 64, 67, 65, 64, 65, 67, 66, 65.1, 64, 65.1]
            
        }
    ]
};

myChart2.setOption(option2, true);

var dataAll = [
    [
        [1, 8.04],
        [1, 6.0],
        [2, 8.04],
        [3, 8.04],
        [4, 8.04],
        [5, 8.04],
        [6.0, 8.04],
        [8.0, 6.95],
        [9.0, 8.81],
        [6.0, 7.24],
        [4.0, 4.26],
        [7.0, 4.82],
        [5.0, 5.68]
    ]
];

var markLineOpt = {
    animation: false,
    label: {
        normal: {
            formatter: '',
            textStyle: {
                align: 'right'
            }
        }
    },
    lineStyle: {
        normal: {
            type: 'solid'
        }
    },
    tooltip: {
        formatter: ''
    }
};

option3 = {
    title: {
        text: '',
        x: 'center',
        y: 0
    },
    grid: [
        {x: '5%', y: '20%', width: '90%', height: '60%'},
    ],
    tooltip: {
        formatter: 'Group {a}: ({c})'
    },
    xAxis : [
        {
            type : 'category',
            data : ['1号','2号','3号','4号','5号','6号','7号','8号','9号','10号','11号','12号']
        }
    ],
    yAxis: [
        {gridIndex: 0, min: 0, max: 10}
    ],
    series: [
        {
            name: 'I',
            type: 'scatter',
            xAxisIndex: 0,
            yAxisIndex: 0,
            data: dataAll[0],
            markLine: markLineOpt
        }
    ]
};

myChart3.setOption(option3, true);


option4 = {
    title : {
        text: '',
        subtext: ''
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['早餐','午餐','晚餐']
    },
    toolbox: {
        show : true,
        feature : {
            dataView : {show: false, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1号','2号','3号','4号','5号','6号','7号','8号','9号','10号','11号','12号']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'早餐',
            type:'bar',
            data:[100, 80, 110, 100, 80, 70, 80, 50, 60, 80, 70, 80]
            
        },
        {
            name:'午餐',
            type:'bar',
            data:[65.1, 64, 62, 66, 67, 65, 64, 63, 65, 66, 67, 64]
            
        },
        {
            name:'晚餐',
            type:'bar',
            data:[25, 30, 32, 34, 35, 37, 36, 35, 34, 30, 32]
            
        }
    ]
};

myChart4.setOption(option4, true);

    </script>



  </body>

</html>

