<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Form-v10 by Colorlib</title>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="css/styleSignUp.css" />
<meta name="robots" content="noindex, follow">
<script nonce="61772a28-37fb-4c96-bba4-5c9ea4115156">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})),{})))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body class="form-v10">
<div class="page-content">
<div class="form-v10-content">
<form class="form-detail" action="signuphandler.jsp" method="post" id="myform">
<div class="form-left">
<h2>General Information</h2>
<div class="form-row">
<input type="text" name="name" id="name" class="input-text" placeholder="Name" required>
</div>
<div class="form-row">
<input type="text" name="phone" id="phone" class="input-text" placeholder="Phone Number" required>
</div>
<div class="form-row">
<input type="email" name="email" id="email" class="input-text" required placeholder="Email">
</div>
<div class="form-row">
<input type="password" name="password" id="password" class="input-text" required placeholder="Password">
</div>
<div class="form-row">
<input type="password" name="cpassword" id="cpassword" class="input-text" required placeholder="Confirm Password">
</div>

</div>
<div class="form-right">
<h2>Please Answer these Questions</h2>
<!-- Remaining contact fields as per the original code -->
<div class="form-row">
<label for="vehicle">Do you own any vehicle?</label>
<select name="vehicle" id="vehicle">
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
</div>
<div class="form-row">
<label for="term_life_insurance">Do you or your family have term life insurance?</label>
<select name="term_life_insurance" id="term_life_insurance">
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
</div>
<div class="form-row">
<label for="health_insurance">Do you or your family have health insurance?</label>
<select name="health_insurance" id="health_insurance">
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
</div>
<div class="form-row">
<label for="home_insurance">Is your house insured?</label>
<select name="home_insurance" id="home_insurance">
<option value="yes">Yes</option>
<option value="no">No</option>
</select>
</div>
<div class="form-row-last">
<input type="submit" name="register" class="register" value="Register Badge">
</div>
</div>
</form>
</div>
</div>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7e30dbb86f8a6ef8","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>
