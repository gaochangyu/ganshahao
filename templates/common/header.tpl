<div class="navcon">
	<div class="navbg">
    <div class="container">
    	<a href="/home.php"><div class="navbutLogo"><img src="/static/img/favicon.png" height="90px"></div></a>
        <a href="/company/company_profile.php"><div class="navbutL">我要雇人</div></a>
        <a href="/aboutus.php"><div class="navbutL">了解我们</div></a>
        {if is_login() neq false}
        <a href="/user/logout.php"><div class="navbutR">登出</div></a>
        <a href="/user/profile.php"><div class="navbutR" style="width:auto;">个人中心</div></a>
        {else}
        <a href="/user/login.php"><div class="navbutR" style="width:auto;">登录</div></a>  
        {/if}
    </div>
    </div>
</div>