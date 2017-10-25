<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape> | <#else></#if>Java Day 2017</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- Le styles -->
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/bootstrap.min.css" >
    <!-- Main Style -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/main.css">
    <!-- Responsive Style -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/responsive.css">
    <!-- Fonts -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>fonts/font-awesome.min.css">
    <!-- Icon -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>fonts/simple-line-icons.css">
    <!-- Slicknav -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/slicknav.css">
    <!-- Nivo Lightbox -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/nivo-lightbox.css" >
    <!-- Animate -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/animate.css">
    <!-- Owl carousel -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/owl.carousel.css">

    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/colors/blue.css" media="screen" />
    <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
  </head>
  <body onload="prettyPrint()">


<header id="header-wrap">
  <div id="roof" class="hidden-xs">
    <div class="container">
      <div class="col-md-6 col-sm-6">
        <div class="info-bar-address">
          <i class="icon-location-pin"></i> INTECAP Centro Tics, 4 de noviembre de 2017
        </div>
      </div>
      <div class="col-md-6 col-sm-6">

        <div class="quick-contacts">
          <span><i class="icon-envelope"></i>email@gmail.com</span>
        </div>
      </div>
    </div>
  </div>


  <div class="navigation-menu">
    <nav class="navbar navbar-default navbar-event">
    <div class="container">

      <div class="navbar-header col-md-2">
        <div class="slicknav_menu">
          <span aria-haspopup="true" tabindex="0" class="slicknav_btn slicknav_collapsed" style="outline: medium none;"><span class="slicknav_menutxt"></span><span class="slicknav_icon slicknav_no-text"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></span>
          <ul class="slicknav_nav slicknav_hidden" style="display: none;" aria-hidden="true" role="menu">
            <li class="active"><a href="index.html" role="menuitem" tabindex="-1">Inicio</a></li>
            <li class="slicknav_collapsed slicknav_parent"><span role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style="outline: medium none;"><a href="#" tabindex="-1">Pages</a>
              <span class="slicknav_arrow"><i class="fa fa-angle-right"></i></span></span>
              <ul class="dropdown slicknav_hidden" role="menu" style="display: none;" aria-hidden="true">
                <li><a href="about.html" role="menuitem" tabindex="-1">About Us</a></li>
                <li><a href="gallery.html" role="menuitem" tabindex="-1">Gallery</a></li>
                <li><a href="pricing.html" role="menuitem" tabindex="-1">Pricing Table</a></li>
                <li><a href="sponsors.html" role="menuitem" tabindex="-1">Sponsors</a></li>
                <li><a href="single-post.html" role="menuitem" tabindex="-1">Single Post</a></li>
              </ul>
            </li>
            <li><a href="schedule.html" role="menuitem" tabindex="-1">Schedule</a></li>
            <li><a href="speakers.html" role="menuitem" tabindex="-1">Speakers</a></li>
            <li><a href="blog.html" role="menuitem" tabindex="-1">Blog</a></li>
            <li><a href="pricing.html" role="menuitem" tabindex="-1">Buy Tickets</a></li>
            <li><a href="contact.html" role="menuitem" tabindex="-1">Contact</a></li>
          </ul>
        </div>
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.html"><img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/jdaylogo.png" alt=""></a>
      </div>
      <div class="collapse navbar-collapse" id="navbar">
      <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="index.html">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Pages <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="about.html">About Us</a></li>
        <li><a href="gallery.html">Gallery</a></li>
        <li><a href="pricing.html">Pricing Table</a></li>
        <li><a href="sponsors.html">Sponsors</a></li>
        <li><a href="single-post.html">Single Post</a></li>
      </ul>
      </li>
      <li><a href="schedule.html">Schedule</a></li>
      <li><a href="speakers.html">Speakers</a></li>
      <li><a href="blog.html">Blog</a></li>
      <li class="animated bounceIn"><a href="pricing.html">Buy Tickets</a></li>
      <li><a href="contact.html">Contact</a></li>
      </ul>
      </div>
      </div>



    </nav>
  </div>

</header>

<body>
