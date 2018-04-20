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
				<li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>archive.html">Charlas</a></li>
				<li class="page">${content.title}</li>
			</ol>
			<h1 class="page-title wow fadeInRight" data-wow-delay="300ms">
				${content.title}
			</h1>
		</div>
	</div>
</div>
<!-- Page Header End-->
<section id="${content.title}" class="section">

	<div class="container">
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="spnsors-logo wow fadeInUp" data-wow-delay="0.1s">
	<img class="img-responsive center-block" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/post/${content.img}" alt="" width="500px">
	</div>
</div>

	</div>
<div class="row">

	${content.body}
	</div>



<div class="row">
	<!-- I got these buttons from simplesharebuttons.com -->
	<div id="share-buttons">


	    <!-- Email -->
	    <a href="mailto:?Subject=Come to Java Day 2018 ${content.uri}">
	        <img src="https://simplesharebuttons.com/images/somacro/email.png" alt="Email" />
	    </a>

	    <!-- Facebook -->
	    <a href="http://www.facebook.com/sharer.php?u=http://guate-jug.net/javaday2018/${content.uri}" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
	    </a>

	    <!-- Google+ -->
	    <a href="https://plus.google.com/share?url=http://guate-jug.net/javaday2018/${content.uri}" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
	    </a>

	    <!-- LinkedIn -->
	    <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=http://guate-jug.net/javaday2018/${content.uri}" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />
	    </a>

	    <!-- Print -->
	    <a href="javascript:;" onclick="window.print()">
	        <img src="https://simplesharebuttons.com/images/somacro/print.png" alt="Print" />
	    </a>


	    <!-- Twitter -->
	    <a href="https://twitter.com/share?url=http://guate-jug.net/javaday2018/${content.uri};hashtags=javaday2018" target="_blank">
	        <img src="https://simplesharebuttons.com/images/somacro/twitter.png" alt="Twitter" />
	    </a>


	</div>
</div>


	</div>






</section>




<#include "footer.ftl">
