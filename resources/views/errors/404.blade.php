<!DOCTYPE HTMl>
<html>
<head>
<title>Page not found</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='//fonts.googleapis.com/css?family=Strait' rel='stylesheet' type='text/css'>
<style>
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
ol,ul{list-style:none;margin:0;padding:0;}
blockquote,q{quotes:none;}
blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
table{border-collapse:collapse;border-spacing:0;}
/* start editing from here */
a{text-decoration:none;}
.txt-rt{text-align:right;}/* text align right */
.txt-lt{text-align:left;}/* text align left */
.txt-center{text-align:center;}/* text align center */
.float-rt{float:right;}/* float right */
.float-lt{float:left;}/* float left */
.clear{clear:both;}/* clear float */:
.pos-relative{position:relative;}/* Position Relative */
.pos-absolute{position:absolute;}/* Position Absolute */
.vertical-base{	vertical-align:baseline;}/* vertical align baseline */
.vertical-top{	vertical-align:top;}/* vertical align top */
.underline{	padding-bottom:5px;	border-bottom: 1px solid #eee; margin:0 0 20px 0;}/* Add 5px bottom padding and a underline */
nav.vertical ul li{	display:block;}/* vertical menu */
nav.horizontal ul li{	display: inline-block;}/* horizontal menu */
img{max-width:100%;}
/*end reset*/
body{
	font-family: 'Strait', sans-serif;
	 background: #340030;
}
.wrap{
	 height:630px;
	 margin: 0 auto;
	 position: relative;
}
h1{
	color: #fff;
	font-size: 30px;
	padding: 30px;
}
.banner{
	width: 343px;
	margin: 100px auto 0 auto ;
}
.copy{
	position: absolute;
	right: 10px;
	bottom: 10px;
	 color: #744971;
	
}
.copy a{
	 color: #fff;
}
</style>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(
hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
	
	<div class="wrap">
		<h1>Example website</h1>
		<div class="banner"><img src="images/404.png" alt="" /></div>
		<div class="search" style="text-align:center;"><br>
			<a href="{{ route('feIndexPage') }}" style="color:white;">Back to Home Page</a>
		</div>

		<div class="copy">
			<p>&copy; {{ date('Y') }} Example Limited. All rights reserved.</p>
		</div>
	</div>
	    	
</body>
</html>    


