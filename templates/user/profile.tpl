<!DOCTYPE html>
<html lang='zh'>
    <head>
    <meta charset="utf-8">
    <title>个人简介</title>
    <link rel="stylesheet" href="/static/css/common.css" type="text/css" />
    <link rel="stylesheet" rev="stylesheet" href="/static/CSS/main.css" type="text/css" media="all" />
	<link rel="icon" type="/image/ico" href="favicon.ico">
    </head>
    <body id="profile">
        {include file="common/headersec.tpl"}
        <section>
<div class="container" style="padding-top:40px;">
<div class="leftcol">
    <div class="memberblock"><div class="membercon">
    	<div class="memberavatar"><!-- 头像 --><img src="/uploads/{$user.picture}" width="150" height="150"></div>
        <div class="memberinfo">
        <!-- 个人信息 -->
        	<span style="font-size:20px; line-height:32px">{$user.nick_name}</span><br><br>
            你好{$user.nick_name}，在这个页面中察看你的申请进程。
        </div>
        <a href="/user/settings.php"><div class="updateinfo">更新个人信息</div></a>
    </div></div><div style="height:10px;"></div>
    <div class="memberblock" style="height:auto;"><div class="membercon" style="height:50px;">
    	<a href="/job/job_list.php"><div class="updateinfo" style="background:#70d900; color:white;">开始新申请</div></a>
    </div></div><div style="height:10px;"></div>
</div>
<div class="rightcol">
    <div class="latest">
		<div class="latesttitle">我的工作申请</div><div id="latestcon">
			{foreach $application_list as $application}
            <div class="latestblock">
            	<div class="latestcon">
                	<div class="joblistlogo"><!-- 公司图片 -->
                        <img src="/static/img/{$application.company_logo}" width="40" height="40">
                    </div>
                    <div class="latestname" style="overflow:hidden;"><!-- 公司名称 -->
                        <a href="/company/company_detail.php?company_id={$application.company_id}" target="_blank">
                            {$application.company_name}
                        </a>
                    </div>
          <div class="latestposname"><!-- 职位名称 -->
                            {$application.job_name}
                    </div>
                     <a href="/job/job_detail.php?job_id={$application.job_id}" target="_blank"><div class="latestbut">查看详情</div></a>
                        {if $application.status == 1}
                            <div class="lateststatus2"><!-- 当前状态 -->已接受</div>
                        {elseif $application.status == 2}
                            <div class="lateststatus3"><!-- 当前状态 -->已拒绝</div>
                        {else}
                            <div class="lateststatus1"><!-- 当前状态 -->已提交，正在审核</div>
                        {/if}
                </div>
			</div>
            {/foreach}
            </div>
		<div style="clear:both; height:30px;"></div>
	</div>
    
	<div class="jobtraining">
    <div class="latesttitle">我最近完成的{$count_training_completed}个培训</div>
    	<!-- 练习列表 -->
        <!-- 练习单元 -->
        {foreach $training_names as $training_name}
        <li>
        	&nbsp&nbsp&nbsp&nbsp {$training_name.training_name}
        </li>
        <div style="height:5px;"></div>
        <!-- 练习单元 -->
        {/foreach}
    </div>
</div>
<div style="clear:both; height:40px;"></div>
</div>
</section>

{include file="common/footer.tpl"}
<script src="/static/js/application_list.js"></script>
<script>
var content = document.getElementById("latestcon");
if (content.innerHTML==null || content.innerHTML=="" || content.innerHTML==0){
	content.innerHTML="<div class='showblank'>暂时没有工作申请</div>";
}
</script>
</body>
</html>
