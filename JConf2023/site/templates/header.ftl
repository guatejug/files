<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>JConf Guatemala 2023</title>

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

    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/colors/blue.css" media="screen" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <#if content.type == "post">
    <!-- Twitter Card data -->
   <meta name="twitter:site" content="@guatejug">
   <meta name="twitter:creator" content="@tuxtor">
    <meta name="twitter:image" content="http://guate-jug.net/jconf2023/img/post/<#if (content.img)??>${content.img}<#else>duke2023.jpg</#if>">
      <#if (content.summary)??>
       <meta name="description" content="${content.summary}" />
      	<meta name="twitter:card" value="${content.summary}">
      <#else>
      	<meta name="twitter:card" value="JConf Guatemala 2023, the biggest JVM Event in Central America.">
      </#if>

      <!-- Open Graph data -->
      <meta property="og:title" content="${content.title}" />
      <meta property="og:type" content="article" />
      <meta property="og:image" content="http://guate-jug.net/jconf2023/img/post/<#if (content.img)??>${content.img}<#else>duke2023.jpg</#if>" />
      <#if (content.summary)??>
      	<meta property="og:description" content="${content.summary}" />
      <#else>
      	<meta property="og:description" content="JConf Guatemala 2023, the biggest JVM Event in Central America." />
      </#if>
    <#else>
        <!-- Twitter Card data -->
        <meta name="twitter:site" content="@guatejug">
        <meta name="twitter:creator" content="@tuxtor">
        <meta name="twitter:image" content="http://guate-jug.net/jconf2023/img/globalheader.jpg">
            <#if (content.summary)??>
            <meta name="description" content="${content.summary}" />
              <meta name="twitter:card" value="${content.summary}">
            <#else>
              <meta name="twitter:card" value="JConf Guatemala 2023, the biggest JVM Event in Central America.">
            </#if>

            <!-- Open Graph data -->
            <meta property="og:title" content="JConf Guatemala 2023" />
            <meta property="og:type" content="article" />
            <meta property="og:image" content="http://guate-jug.net/jconf2023/img/globalheader.jpg" />
            <#if (content.summary)??>
              <meta property="og:description" content="${content.summary}" />
            <#else>
              <meta property="og:description" content="JConf Guatemala 2023, the biggest JVM Event in Central America." />
            </#if>
    </#if>

  </head>
  <body>
