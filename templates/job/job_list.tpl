<!DOCTYPE html>
<html>
<head>
    <title>[干啥好] 工作列表</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" rev="stylesheet" href="/static/css/main.css" type="text/css" media="all" />
	<link rel="icon" type="/image/ico" href="favicon.ico">
</head>
<body id="explore" lang="en">
	{include file="common/popupselection.tpl"}
    {include file="common/headersec.tpl"}
    <section>
<div class="container">
	<div class="joblisttitle">
    <div style="float:left; ">{$company_list[0].job_district} {$company_list[0].job_zipcode}</div><div style="float:left; margin:15px 0 0 20px; cursor:pointer;" class="buttonsmall"  onClick="loginexpand()">更改地点</div>
    </div>
    {include file='job/job_list_div.tpl'}
    <div style="clear:both; height:30px;"></div>
	</div>
	</section>
    
	
    
    {include file="common/footer.tpl"}
	<script type="text/javascript" src="/static/js/loginexpand.js"></script>
	<script type="text/javascript" src="/static/js/jquery.alsEN-1.0.min.js"></script>
    <script type="text/javascript" src="/static/js/selection.js"></script>
    <script>
        function validate_zipcode(zipcode) {
            reg = /^\d{6}$/;
            return reg.test(zipcode);
        }

        $(function() {
            $("#search_btn").click(function(e) {
                var zipcode = $("#zipcode").val();
                if(zipcode == "") {
                    toast("请先输入邮编");
                    return;
                }

                $.ajax({
                    type:	"GET",
                    url :	"/job/job_list.php",
                    data:   {
                        zipcode     : zipcode,
                        search      : 1,
                    },
                    dataType: "text",
                    timeout:120000, // 2min
                    success: function (text) {

                        // try check error
                        try{
                            var obj = eval( "(" + text + ")" );
                            if (obj.errCode != 0) {
                                toast_err("出错["+ obj.errCode +"]: " + obj.errMsg);
                                $("#zipcode").focus();
                                $("#zipcode").val("");
                                return;
                            }
                        } catch(err) {
                            //TO DO
                        }

                        if (text == "") {
                            $("#job_list").html('没有相关职位');
                        } else {
                            $("#job_list").html('<ul class="block-grid three-up">'+text+'</ul>');
                        }
                    },
                });
            });
        });
    </script>

</body>
