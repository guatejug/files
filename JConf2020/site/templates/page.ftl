<#include "header.ftl">

<#include "menu.ftl">

		<!-- Page Header Start -->
		<div class="page-header">
			<div class="container">
				<div class="page-header-inner">
					<ol class="breadcrumb wow fadeInDown" data-wow-delay="300ms">
						<li><a href="index.html">Principal</a></li>
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
		${content.body}

		</div>
	  </div>

	</section>




<#include "footer.ftl">
