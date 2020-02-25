
    </div>
    <!-- Main contetn End -->

    <!-- Copytight Start -->
    <section id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <p class="copyright-text text-center">
             ©Impression lite by
              <a rel="nofollow" href="http://graygrids.com">
                GrayGrids
              </a>
              | Chef <a rel="nofollow" href="http://twitter.com/tuxtor">
                @tuxtor
              </a>
              | Baked with <a rel="nofollow" href="http://jbake.org">
                JBake
              </a>
            </p>
          </div>
        </div>
      </div>
    </section>
    <!-- Copytight End -->

    <!-- Go to Top Link -->
    <a href="#" class="back-to-top">
    <i class="icon-arrow-up"></i>
    </a>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-26081170-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-26081170-2');
</script>

    <script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'es,de,nl', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
    }
    </script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

    <!-- jQuery Load -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
    <!-- Countdown Js -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery.countdown.min.js"></script>
    <!-- Smooth scroll JS -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/smooth-scroll.js"></script>
    <!-- Wow Scroll -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/wow.js"></script>
    <!-- Owl carousel -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/owl.carousel.min.js"></script>
    <!-- Slicknav js -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery.slicknav.js"></script>
    <!--  Nivo lightbox Js -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/nivo-lightbox.js"></script>
    <!-- Contact Form Scripts -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/form-validator.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/contact-form-script.js"></script>

    <!-- All Js plugin -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/main.js"></script>
    <!-- Map JS -->
    <script type="text/javascript" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery.mapit.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/initializers.js"></script>
    <script>
        // Set the date we're counting down to
        var countDownDate = new Date("Nov 7, 2020 08:00:00").getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

          // Get todays date and time
          var now = new Date().getTime();

          // Find the distance between now an the count down date
          var distance = countDownDate - now;

          // Time calculations for days, hours, minutes and seconds
          var days = Math.floor(distance / (1000 * 60 * 60 * 24));
          var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
          var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
          var seconds = Math.floor((distance % (1000 * 60)) / 1000);

          // Display the result in the element with id="demo"
          document.getElementById("simpletime").innerHTML = days + "d " + hours + "h "
          + minutes + "m " + seconds + "s ";

          // If the count down is finished, write some text
          if (distance < 0) {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "EXPIRED";
          }
        }, 1000);
        </script>
  </body>
</html>
