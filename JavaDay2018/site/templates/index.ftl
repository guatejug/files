<#include "header.ftl">
<#include "menu.ftl">


    <!-- Main Slider Section Start -->
    <div id="carousel-area">
      <div id="carousel-slider" class="carousel slide" data-ride="carousel">

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/slider/bg-1.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="wow fadeInRight" data-wow-delay="300ms">Java Day Guatemala 2018<br>The biggest Java conference in Central America</h2>
              <div class="buttons wow fadeInDown" data-wow-delay="0.2s"><a class="btn btn-lg btn-border" href="about.html">About</a></div>
              <a data-scroll href="#featured">
              <div class="rev-scroll-btn wow fadeInUp" data-wow-delay="600ms">
                <span></span>
              </div>
              </a>
            </div>
          </div>
          <div class="item">
            <img src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/slider/bg-2.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="wow fadeInUp" data-wow-delay="300ms">Schedule will be available soon</h2>
              <div class="buttons">
              <div class="buttons wow fadeInDown" data-wow-delay="0.2s"><a class="btn btn-lg btn-border" href="http://www.guate-jug.net/javaday2017/archive.html">2017 speakers</a></div>
              </div>
              <a data-scroll href="#featured">
              <div class="rev-scroll-btn wow fadeInUp" data-wow-delay="600ms">
                <span></span>
              </div>
              </a>
            </div>
          </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-slider" role="button" data-slide="prev">
          <span class="icon-arrow-left" aria-hidden="true"></span>
        </a>
        <a class="right carousel-control" href="#carousel-slider" role="button" data-slide="next">
          <span class="icon-arrow-right" aria-hidden="true"></span>
        </a>
      </div>
    </div>
    <!-- Main Slider Section End -->
    <section class="countdown-timer section">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInLeft animated" data-wow-delay="0.2s" style="visibility: visible;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
            <div class="text">
            <h2>Java Day Guatemala <br>2018</h2>
            <h4>Centro Tics Intecap <br> november 10, 2018 </h4>
            </div>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-12 wow fadeInRight animated" data-wow-delay="0.2s" style="visibility: visible;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
              <div class="text">
            <h2 id="simpletime">
            </h2>
            </div>
            </div>
          </div>
        </div>
    </section>
    <section id="event" class="section">
        <div class="container">
        <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="tab-block wow fadeInDown animated" data-wow-delay="0s" style="visibility: visible;-webkit-animation-delay: 0s; -moz-animation-delay: 0s; animation-delay: 0s;">
        <div class="icon">
        <i class="icon-location-pin"></i>
        </div>
        <div class="desc">
        <h4>Where</h4>
        <p>Centro Tics Intecap</p>
        </div>
        </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="tab-block wow fadeInDown animated" data-wow-delay="0.2s" style="visibility: visible;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;">
        <div class="icon">
        <i class="icon-calendar"></i>
        </div>
        <div class="desc">
        <h4>When</h4>
        <p>nov 10 - 8:00 am</p>
        </div>
        </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="tab-block wow fadeInDown animated" data-wow-delay="0.4s" style="visibility: visible;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;">
        <div class="icon">
        <i class="icon-microphone"></i>
        </div>
        <div class="desc">
        <h4>Speakers</h4>
        <p>More than 30 speakers in web, desktop and mobile development.</p>
        </div>
        </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="tab-block last-block wow fadeInDown animated" data-wow-delay="0.6s" style="visibility: visible;-webkit-animation-delay: 0.6s; -moz-animation-delay: 0.6s; animation-delay: 0.6s;">
        <div class="icon">
        <i class="icon-wallet"></i>
        </div>
        <div class="desc left">
        <h4>Tickets</h4>
        <p>500 free tickets</p>
        </div>
        </div>
        </div>
        <div class="col-md-12">
        <div class="content-text">
        <h3 class="wow fadeInUp animated" data-wow-delay="0.8s" style="visibility: visible;-webkit-animation-delay: 0.8s; -moz-animation-delay: 0.8s; animation-delay: 0.8s;">Java is hipster again</h3>
        <p class="wow fadeInUp animated" data-wow-delay="1s" style="visibility: visible;-webkit-animation-delay: 1s; -moz-animation-delay: 1s; animation-delay: 1s;">With support for more than 100 languages, including Java, Kotlin, Ceylon, Scala, JavaScript, Clojure, etc. it's a great time to be a Java developer.</p>
        </div>
        </div>
        </div>
        </div>
    </section>

    <!-- Sponsors Section Start -->
  <section id="sponsors" class="section">
    <div class="container">
      <div class="row">

        <div class="col-md-12">
          <h2 class="section-title wow fadeInUp" data-wow-delay="0s">Sponsors</h2>
          <p class="section-subcontent wow fadeInUp" data-wow-delay="0.2s">GuateJUG is possible thanks to this amazing sponsors.</p>
        </div>

      </div>
      <div class="row">
        <h3 class="section-title wow fadeInUp" data-wow-delay="0s">Java Master</h3>
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="spnsors-logo wow fadeInUp" data-wow-delay="0.1s">
            <a href="https://www.facebook.com/intecapcentrotics/" target="_blank"><img class="img-responsive center-block" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/sponsors/intecap.jpg" alt=""></a>
          </div>
        </div>
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="spnsors-logo wow fadeInUp" data-wow-delay="0.1s">
            <a href="http://is4tech.com/" target="_blank"><img class="img-responsive center-block" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>img/sponsors/i4t.png" alt=""></a>
          </div>
        </div>

      </div>


    </div>
  </section>


<#include "footer.ftl">
