<#include "header.ftl">
<#include "menu.ftl">

<!-- Page Header Start -->
<div class="page-header">
	<div class="container">
		<div class="page-header-inner">
			<ol class="breadcrumb wow fadeInDown" data-wow-delay="300ms">
				<li><a href="index.html">Principal</a></li>
				<li class="page">Charlas</li>
			</ol>
			<h1 class="page-title wow fadeInRight" data-wow-delay="300ms">
				Charlas
			</h1>
		</div>
	</div>
</div>
<!-- Page Header End-->
	<!--<ul>-->

	<section id="Listado charlas" class="section">

		<div class="container">
	<div class="row">
		<#list tag_posts as post>


	<#if (last_tag)??>
		<#if post.tags?join(", ") != last_tag>
			</ul>
			<h4>${post.tags?join(", ")}</h4>
			<ul>
		</#if>
	<#else>
		<h4>${post.tags?join(", ")}</h4>
		<ul>
	</#if>


		<li><a href="${content.rootpath}${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
		<#assign last_tag = post.tags?join(", ")>
		</#list>
	</ul>
	</div>
	</div>

</section>
<#include "footer.ftl">
