<#include "header.ftl">

<#include "menu.ftl">
<div class="container">
<div class="row">
		<#list published_posts?sort_by("category") as post>


	<#if (last_tag)??>
		<#if post.category != last_tag>
			</ul>
			<h4>${post.tags?join(", ")}</h4>
			<ul>
		</#if>
	<#else>
		<h4>${post.tags?join(", ")}</h4>
		<ul>
	</#if>


		<li><a href="${content.rootpath}${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
		<#assign last_tag = post.category>
		</#list>
	</ul>
	</div>
	</div>

<#include "footer.ftl">
