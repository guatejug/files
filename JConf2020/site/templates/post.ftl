<#include "header.ftl">

<#include "menu.ftl">

<style type="text/css">

#share-buttons img {
width: 35px;
padding: 5px;
border: 0;
box-shadow: 0;
display: inline;
}

</style>

<!-- Page Header Start -->
<div class="page-header">
	<div class="container">
		<div class="page-header-inner">
			<ol class="breadcrumb wow fadeInDown" data-wow-delay="300ms">
				<li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">Principal</a></li>
				<li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>archive.html">Presentations</a></li>
				<li class="page">${content.title}</li>
			</ol>
			<div class="row">
			<div class="col-md-10 col-sm-10 col-xs-12">
			<h1 class="page-title wow fadeInRight" data-wow-delay="300ms">
				
				${content.title}
			</h1>
			</div>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End-->
<section id="${content.title}" class="section">

	<div class="container">
<div class="row">
	<div class="col-md-4 col-sm-4 col-xs-12">
		<div class="spnsors-logo wow fadeInUp" data-wow-delay="0.1s">
			<#if (content.img)??>
				<img class="img-responsive center-block" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/post/${content.img}" alt="" width="500px">
			<#else>
				<img class="img-responsive center-block" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/post/duke2020.jpg" alt="" width="500px">
			</#if>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<#if (content.twitter)??>
		<a class="twitter-timeline" data-height="400" href="https://twitter.com/${content.twitter}?ref_src=twsrc%5Etfw">Tweets by ${content.twitter}</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
		<#else></#if>
	</div>
</div>
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
	${content.body}
	</div>
</div>



<div class="row">
	<!-- I got these buttons from simplesharebuttons.com -->
	<div id="share-buttons">


	    <!-- Email -->
	    <a href="mailto:?Subject=Come to JConf 2020 ${content.uri}">
	        <img src="https://simplesharebuttons.com/images/somacro/email.png" alt="Email" />
	    </a>

	    <!-- Facebook -->
	    <a href="http://www.facebook.com/sharer.php?u=http://guate-jug.net/jconf2020/${content.uri}" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
	    </a>

	    <!-- Google+ -->
	    <a href="https://plus.google.com/share?url=http://guate-jug.net/jconf2020/${content.uri}" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
	    </a>

	    <!-- LinkedIn -->
	    <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=http://guate-jug.net/jconf2020/${content.uri}" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />
	    </a>

	    <!-- Print -->
	    <a href="javascript:;" onclick="window.print()">
	        <img src="https://simplesharebuttons.com/images/somacro/print.png" alt="Print" />
	    </a>


	    <!-- Twitter -->
	    <a href="https://twitter.com/share?url=http://guate-jug.net/jconf2020/${content.uri};hashtags=jconf2020" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Twitter" />
	    </a>


	</div>
</div>


	</div>






</section>




<#include "footer.ftl">
