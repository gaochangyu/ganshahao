<!DOCTYPE html>
<html lang='zh'>
    <head>
    <meta charset="utf-8">
    <title>[干啥好]关于我们</title>
    <link rel="stylesheet" href="/static/css/common.css" type="text/css" />
    <link rel="stylesheet" rev="stylesheet" href="/static/CSS/main.css" type="text/css" media="all" />
	<link rel="icon" type="/image/ico" href="favicon.ico">
    </head>
    <body id="home">
        <div class="headerimg"></div>
        {include file="common/popupselection.tpl"}
        {include file="common/header.tpl"}
        <section>
<div class="container">
<div class="stepscon" style="background:#fff; height:auto; width:90%; padding:5%; font-size:14px; line-height:22px;">
	<div style="position:absolute; top:-70px; height:70px; color:white; font-size:42px; line-height:70px; -moz-text-shadow: 1px 1px 5px #333; -webkit-text-shadow: 1px 1px 5px #333; text-shadow: 1px 1px 5px #333;">现在，三大问题，一站解决。</div>
    <!--<div style="position:relative; width:95%; padding:0 2.5% 30px 2.5%; font-size:18px; line-height:28px;">“雇主到底要在找什么样的人？”<br> “我是不是他要找的人？”<br>“我怎么变成他要找的人？”</div>-->
	<div style="position:relative; width:30%; padding-left:2.5%; float:left;"><span style="font-size:24px; line-height:50px;">第一步 找职位</span><br>一键查看就近商圈中所有商家的空闲职位，再也不用出门一家家店挨个询问，高效、直观、准确地搜集到所有招聘信息！</div>
    <div style="position:relative; width:30%; padding-left:2.5%; float:left;"><span style="font-size:24px; line-height:50px;">第二步 学培训</span><br>学习由雇主提供的职位培训，在求职者中脱颖而出。帮助你更完整了解职位需求、更切实衡量自己是否适合这份工作、更大声告诉雇主：我准备好了，我就是你要找的人！</div>
    <div style="position:relative; width:30%; padding-left:2.5%; float:left;"><span style="font-size:24px; line-height:50px;">第三步 提申请</span><br>轻轻点击“递交按钮”，足不出户即可联系到雇主。同时亦能在线追踪申请，再也不用担心申请递出后石沉大海、“然后就没有然后了”的尴尬局面！</div>
    <div style="clear:both"></div>
</div>
</div>
<div class="container" style="padding-top:470px;">
	<div class="joblisttitle" style="padding:0;">合作伙伴</div>
    <div class="joblisttitle" style="padding:0;">常见问题</div>
</div>
</section>
  
    
        {include file="common/footer.tpl"}
	<script type="text/javascript" src="/static/js/loginexpand.js"></script>
	<script type="text/javascript" src="/static/js/jquery.alsEN-1.0.min.js"></script>
    <script type="text/javascript" src="/static/js/selection.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#list").als({
					visible_items: 4,
					scrolling_items: 4,
					orientation: "horizontal",
					circular: "yes",
					autoscroll: "yes",
					interval: 4000,
					direction: "left",
					start_from: 1
		});
	});	
</script>


    </body>
</html>
