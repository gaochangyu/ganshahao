<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>[干啥好] 公司信息</title>
    <link rel="stylesheet" href="/static/css/common.css" type="text/css" />
    <link rel="stylesheet" rev="stylesheet" href="/static/css/main.css" type="text/css" media="all" />
	<link rel="icon" type="/image/ico" href="favicon.ico">
</head>
<body id="company-profile" lang="en">
	{include file="common/header_company.tpl"}
    <div class="container" style="">
    <div class="joblisttitle">
    <div style="float:left; font-size:32px;">{$company.name}</div>
    </div>
    {foreach $job_applications as $job_list}
    <div class="job_list">
    <div class="joblisttitle" style="padding:0;">{$job_list.name}</div><div id="latestcon">
		{foreach $job_list.application_list as $job_application}
        <div class="appblock">
            	<div class="appcon">
       				<div class="appname">{$job_application.user_name}</div>
                    <div class="appavatar" style="background-image:url(/uploads/{$job_application.user_picture});"></div>
                    <a href="/user/info.php?user_id={$job_application.user_id}" target="_blank"><div class="latestbut">申请者详情</div></a>
                    <div class="appstatus">
					<input type="hidden" class="job_application_id" value="{$job_application.id}" />
					<select class="status_selected" style="background:{if $job_application.status == 0}#fff{/if}{if $job_application.status == 1}#70d900{/if}{if $job_application.status == 2}#d94200{/if};">
            		<option value="0" {if $job_application.status == 0}selected{/if}>请选择</option>
					<option value="1" {if $job_application.status == 1}selected{/if}>接受</option>
					<option value="2" {if $job_application.status == 2}selected{/if}>拒绝</option>
					</select>
                    </div>
                </div>
			</div>
        </div>
        {/foreach}
        </div>
        <div style="clear:both"></div>
    {/foreach}
    </div>
    {include file="common/footer.tpl"}
    <script>
        $(function() {
            console.log("in");
            $(".status_selected").change(function() {
                console.log($(this).val());
                console.log($(this).parents().siblings(".job_application_id").val());
                $.ajax({
                    type:"POST",
                    url :"/company/change_status.php",
                    data:   {
                        'status_selected'  : $(this).val(),
                        'job_application_id'  : $(this).parents().siblings(".job_application_id").val(),
                    },
                    dataType: "json",
                    timeout:120000, // 2min
                    success: function (obj) {
                        if(obj.errCode == 0 ){
                            toast("更新成功");
                        }else{
                            toast_err("出错["+ obj.errCode +"]: " + obj.errMsg);
                        }
                    },
                    error: function () {
                        toast_err("提交失败");
                    },
                });
            });
        });
    </script>
    <script>
var content = document.getElementById("latestcon");
if (content.innerHTML==null || content.innerHTML=="" || content.innerHTML==0){
	content.innerHTML="<div class='showblank'>暂时没有人提交工作申请</div>";
}
</script>
</body>
</html>
