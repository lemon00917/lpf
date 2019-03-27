<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户个人信息</title>
<meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="shortcut icon" href="favicon.ico">
	<link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/Status_record/status_record.css">
	<link href="css/Daily_items/font-awesome.css?v=4.4.0" rel="stylesheet">
	<link href="css/Daily_items/plugins/iCheck/custom.css" rel="stylesheet">
	<link href="css/Daily_items/animate.css" rel="stylesheet">
	<link href="css/Daily_items/style.css?v=4.1.0" rel="stylesheet">
	<script src="public/jquery/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
	$(function(){
		//alert();
		 //获取当前回显的product的cid
		 //$("#cid option[value='${family.relationship}']").prop("selected",true);
		 $("#relationship option[value='${family.relationship}']").prop("selected",true);
		 //名族
		 $("#ethnic option[value='${family.ethnic}']").prop("selected",true);
		 
	})
       //页面加载完毕后 确定那个option被选中
       /* window.onload=function(){
    	   alert(111);
    	    //获得当前回显的family的id
    	    var cid="${family.fid}";
    	    //获得所有的<select class="form-control m-b" name="relationship">`
    	    var options=document.getElementById("cid").getElementsByTagName("option");
    	    //alert(options.length);
    	    //比较每一个option的value与cid
    	    for(var i=0;i<options.length;i++){
    	    	if(cid==options[i].value){
    	    		options[i].selected=true;
    	    	}
    	    }
       } */
    </script>
</head>

<body data-type="generalComponents">


    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
        	<span>便携式经络检测仪系统</span>
            <!--<a href="javascript:;" class="tpl-logo">
                <img src="assets/img/logo.png" alt="">
            </a>-->
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-bell-o"></span> 提醒 <span class="am-badge tpl-badge-success am-round">5</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-success">5</span> 条提醒</h3><a href="###">全部</a></li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-plus tpl-dropdown-ico-btn-size tpl-badge-success"></span> 呼吸平稳：当感情冲动时，我们会不由自主地屏住呼吸，这只会加重精神压力。</a>
                            <span class="tpl-dropdown-list-fr">3小时前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-check tpl-dropdown-ico-btn-size tpl-badge-danger"></span> 纠正姿势：精神压力致使我们渐渐拱肩驼背，赶快伸直，仿佛从肩上卸掉一堆重物。</a>
                            <span class="tpl-dropdown-list-fr">15分钟前</span>
                        </li>
                        <li class="tpl-dropdown-list-bdbc"><a href="#" class="tpl-dropdown-list-fl"><span class="am-icon-btn am-icon-bell-o tpl-dropdown-ico-btn-size tpl-badge-warning"></span> 规范行为：即使在几乎没有希望的情况下也要牢记：你能改变局势，向好的方向发展。</a>
                            <span class="tpl-dropdown-list-fr">2天前</span>
                        </li>
                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-comment-o"></span> 消息 <span class="am-badge tpl-badge-danger am-round">9</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-danger">9</span> 条新消息</h3><a href="###">全部</a></li>
                        <li>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="assets/img/user02.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> 禁言小张 </span>
                                <span class="tpl-dropdown-content-time">10分钟前 </span>
                                </span>
                                <span class="tpl-dropdown-content-font"> 笑对增强免疫系统有奇效，既消耗热量，又改善自我感觉。 </span>
                            </a>
                            <a href="#" class="tpl-dropdown-content-message">
                                <span class="tpl-dropdown-content-photo">
                      <img src="assets/img/user03.png" alt=""> </span>
                                <span class="tpl-dropdown-content-subject">
                      <span class="tpl-dropdown-content-from"> Steam </span>
                                <span class="tpl-dropdown-content-time">18分钟前</span>
                                </span>
                                <span class="tpl-dropdown-content-font"> 边看电视边做些简单的操练。有事时，不要把人从别的房间里喊过来，而是走过去。 </span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="am-icon-calendar"></span> 进度 <span class="am-badge tpl-badge-primary am-round">4</span></span>
                    </a>
                    <ul class="am-dropdown-content tpl-dropdown-content">
                        <li class="tpl-dropdown-content-external">
                            <h3>你有 <span class="tpl-color-primary">4</span> 个任务进度</h3><a href="###">全部</a></li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">检测进度 </span>
                                <span class="percent">45%</span>
                                </span>
                                <span class="progress">
                        <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-success" style="width:45%"></div></div>
                    </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">健康小知识 </span>
                                <span class="percent">30%</span>
                                </span>
                                <span class="progress">
                       <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-secondary" style="width:30%"></div></div>
                    </span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;" class="tpl-dropdown-content-progress">
                                <span class="task">
                        <span class="desc">管理中心 </span>
                                <span class="percent">60%</span>
                                </span>
                                <span class="progress">
                        <div class="am-progress tpl-progress am-progress-striped"><div class="am-progress-bar am-progress-bar-warning" style="width:60%"></div></div>
                    </span>
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick"></span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="#"><span class="am-icon-bell-o"></span> 资料</a></li>
                        <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
                        <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                <li><a href="login.jsp" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
            </ul>
        </div>
    </header>







    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                                      系统列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="index.html" class="nav-link active">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="chart.html" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>健康分析</span>
                           
                        </a>
                    </li>

                    <li class="tpl-left-nav-item">
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-table"></i>
                            <span>用户管理</span>
                            <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <!-- 打开状态 a 标签添加 active 即可   -->
                                <a href="family.jsp" class="active">
                                    <i class="am-icon-angle-right"></i>
                                    <span>用户个人信息</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="table-images-list.html" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>用户检测信息</span>
                                    
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>医疗检测</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="form-amazeui.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>医疗检测</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="form-line.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>检测报告</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="login.jsp" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>登录</span>

                        </a>
                    </li>
                </ul>
            </div>
        </div>





        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                用户个人信息
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">用户管理</a></li>
                <li class="am-active">用户个人信息</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                         个人信息
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>


                </div>
                
                <div class="tpl-alert">
                <form  class="form-horizontal" action="./updatefamily" method="post">
                <input type="hidden" name="fid" value="${family.fid}">
					<div  style="width:80%;line-height:1.5em;margin:0 auto;text-align: center;font-size:14px">
						<div>
							<label class="col-sm-2 control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;名</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="fname" value="${family.fname }">
							</div>
							<label class="col-sm-2 control-label">关&nbsp;&nbsp;&nbsp;&nbsp;系</label>
							<div class="col-sm-3">
								<select class="form-control m-b" name="relationship" id="relationship">
								<option value="0">-请选择-</option>
									<option value="夫妻">夫妻</option>
									<option value="父女">父女</option>
									<option value="父子">父子</option>
									<option value="父亲">父亲</option>
									<option value="母亲">母亲</option>
									<option value="亲戚">亲戚</option>
									<option value="访客">访客</option>
								</select>
							</div>
						</div>
						<div>
							<label class="col-sm-2 control-label">年&nbsp;&nbsp;&nbsp;&nbsp;龄</label>
							<div class="col-sm-5">
								<input type="text" value="${family.fage}" class="form-control  m-b" name="fage" >
							</div>
							<label class="col-sm-2 control-label">名&nbsp;&nbsp;&nbsp;&nbsp;族</label>
							<div class="col-sm-3">
								<select class="form-control m-b" name="ethnic" id="ethnic">
								<option value="0">-请选择-</option>
								<option value="汉族">汉族</option>
								<option value="蒙古族">蒙古族</option>
								<option value="回族">回族</option>
								<option value="藏族">藏族</option>
								<option value="维吾尔族">维吾尔族</option>
								<option value="苗族">苗族</option>
								<option value="彝族">彝族</option>
								<option value="壮族">壮族</option>
								<option value="布依族">布依族</option>
								<option value="朝鲜族">朝鲜族</option>
								<option value="满族">满族</option>
								<option value="侗族">侗族</option>
								<option value="瑶族">瑶族</option>
								<option value="白族">白族</option>
								<option value="土家族">土家族</option>
								<option value="哈尼族">哈尼族</option>
								<option value="哈萨克族">哈萨克族</option>
								<option value="傣族">傣族</option>
								<option value="黎族">黎族</option>
								<option value="傈僳族">傈僳族</option>
								<option value="佤族">佤族</option>
								<option value="畲族">畲族</option>
								<option value="高山族">高山族</option>
								<option value="拉祜族">拉祜族</option>
								<option value="水族">水族</option>
								<option value="东乡族">东乡族</option>
								<option value="纳西族">纳西族</option>
								<option value="景颇族">景颇族</option>
								<option value="柯尔克孜族">柯尔克孜族</option>
								<option value="土族">土族</option>
								<option value="达斡尔族">达斡尔族</option>
								<option value="仫佬族">仫佬族</option>
								<option value="羌族">羌族</option>
								<option value="布朗族">布朗族</option>
								<option value="撒拉族">撒拉族</option>
								<option value="毛南族">毛南族</option>
								<option value="仡佬族">仡佬族</option>
								<option value="锡伯族">锡伯族</option>
								<option value="阿昌族">阿昌族</option>
								<option value="普米族">普米族</option>
								<option value="塔吉克族">塔吉克族</option>
								<option value="怒族">怒族</option>
								<option value="乌孜别克族">乌孜别克族</option>
								<option value="俄罗斯族">俄罗斯族</option>
								<option value="鄂温克族">鄂温克族</option>
								<option value="德昂族">德昂族</option>
								<option value="保安族">保安族</option>
								<option value="裕固族">裕固族</option>
								<option value="京族">京族</option>
								<option value="塔塔尔族">塔塔尔族</option>
								<option value="独龙族">独龙族</option>
								<option value="鄂伦春族">鄂伦春族</option>
								<option value="赫哲族">赫哲族</option>
								<option value="门巴族">门巴族</option>
								<option value="珞巴族">珞巴族</option>
								<option value="基诺族">基诺族</option>
								</select>
							</div>
						</div>
						<div>
							<label class="col-sm-2 control-label">家庭地址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control  m-b" name="address" value="${family.address }">
							</div>
						</div>
						<div>
							<label class="col-sm-2 control-label">性&nbsp;&nbsp;&nbsp;&nbsp;别</label>
							<div class="col-sm-4">
								<input type="text" class="form-control m-b" name="fsex" value="${family.fsex }">
							</div>
							<label class="col-sm-2 control-label">联系电话</label>
							<div class="col-sm-4">
								<input type="text" class="form-control m-b" name="fphone" value="${family.fphone }">
							</div>
						</div>
						<div>
						<label class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-4">
							<input type="text" class="form-control m-b" name="IDcard" value="${family.IDcard }">
						</div>
						<label class="col-sm-2 control-label">职&nbsp;&nbsp;&nbsp;&nbsp;业</label>
						<div class="col-sm-4">
							<input type="text" class="form-control m-b" name="work" value="${family.work }">
						</div>
					</div>
						<div class="col-md-12">
							<div class="form-group">
								<label class="col-sm-2 control-label">病史说明</label>
								<div class="col-sm-10">
									<input name="medical" value="${family.medical }" class="form-control" placeholder="病史说明" style="height:10em;" type="text">
								</div>
							</div>
							
							
						</div>
					</div>
					<div class="form-group">
				<div style="margin:0 auto;width:50%;text-align: center">
					<button class="btn btn-primary" type="submit">保存内容</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="btn btn-white" type="button" ><a href="family.jsp">退&nbsp;&nbsp;&nbsp;&nbsp;出</a></button>
				</div>
			</div>
				</form>
			
                </div>
            </div>










        </div>

    </div>


    <script src="assets/js/jquery-2.1.1.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
    
	
</body>
</html>