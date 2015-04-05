/* ================================
===  BACKGROUND SLIDER        ====
================================= */
$.vegas('slideshow', {
  delay:7000,
  backgrounds:[
    { src:'/assets/bg1.jpg', fade:1000 },
    { src:'/assets/bg2.jpg', fade:1000 },
    { src:'/assets/bg3.jpg', fade:1000 }
  ]
});
      
   
/* =================================
   LOADER                     
=================================== */
// makes sure the whole site is loaded
jQuery(window).load(function() {
        // will first fade out the loading animation
	jQuery(".status").fadeOut();
        // will fade out the whole DIV that covers the website.
	jQuery(".preloader").delay(1000).fadeOut("slow");
})


/* =================================
===  Bootstrap Fix              ====
=================================== */
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
  var msViewportStyle = document.createElement('style')
  msViewportStyle.appendChild(
    document.createTextNode(
      '@-ms-viewport{width:auto!important}'
    )
  )
  document.querySelector('head').appendChild(msViewportStyle)
}


/*---------------------------------------*/
    /*  SMOOTH SCROLL FRO INTERNAL #HASH LINKS
/*---------------------------------------*/
$(document).ready(function(){
    $('a[href^="#"].inpage-scroll, .inpage-scroll a[href^="#"]').on('click', function(e) {
        e.preventDefault();

        var target = this.hash,
            $target = $(target);
        $('.main-navigation a[href="' + target + '"]').addClass('active');
        $('.main-navigation a:not([href="' + target + '"])').removeClass('active');
        $('html, body').stop().animate({
            'scrollTop': ($target.offset()) ? $target.offset().top : 0
        }, 900, 'swing', function() {
            window.location.hash = target;
        });
    });
});


/*=================================
===  SMOOTH SCROLL             ====
=================================== */
var scrollAnimationTime = 1200,
        scrollAnimation = 'easeInOutExpo';
    $('a.scrollto').bind('click.smoothscroll',function (event) {
        event.preventDefault();
        var target = this.hash;
        $('html, body').stop().animate({
            'scrollTop': $(target).offset().top
        }, scrollAnimationTime, scrollAnimation, function () {
            window.location.hash = target;
        });
    });   

/* ================================
===  PROJECT LOADING           ====
================================= */

jQuery(document).ready(function($) {
    $('.more').on('click', function(event) {
        event.preventDefault();

//         var href = $(this).attr('href') + ' .single-project',
//             portfolioList = $('#portfolio-list'),
//             content = $('#loaded-content');

//         portfolioList.animate({'marginLeft':'-120%'},{duration:400,queue:false});
//         portfolioList.fadeOut(400);
//         setTimeout(function(){ $('#loader').show(); },400);
//         setTimeout(function(){
//             content.load(href, function() {
//                 $('#loaded-content meta').remove();
//                 $('#loader').hide();
//                 content.fadeIn(600);
//                 $('#back-button').fadeIn(600);
            });
//         },800);

//     });

//     $('#back-button').on('click', function(event) {
//         event.preventDefault();

//         var portfolioList = $('#portfolio-list')
//             content = $('#loaded-content');

//         content.fadeOut(400);
//         $('#back-button').fadeOut(400);
//         setTimeout(function(){
//             portfolioList.animate({'marginLeft':'0'},{duration:400,queue:false});
//             portfolioList.fadeIn(600);
//         },800);
//     });
});

/* ================================
===  PARALLAX                  ====
================================= */
$(document).ready(function(){
  var $window = $(window);
  $('div[data-type="background"], header[data-type="background"], section[data-type="background"]').each(function(){
    var $bgobj = $(this);
    $(window).scroll(function() {
      var yPos = -($window.scrollTop() / $bgobj.data('speed'));
      var coords = '50% '+ yPos + 'px';
      $bgobj.css({ 
        backgroundPosition: coords 
      });
    });
  });
});



new WOW().init();



