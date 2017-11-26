<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Allen O'Leary</title>
     <link href='http://fonts.googleapis.com/css?family=Roboto:400,900,100,300,500,700|Roboto+Condensed:400,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="css/aol.css" />


    <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.11.0/TweenMax.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.11.0/plugins/CSSRulePlugin.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.11.0/plugins/ColorPropsPlugin.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.11.0/plugins/EaselPlugin.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.11.0/plugins/TextPlugin.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/1.11.0/plugins/ScrollToPlugin.min.js"></script>


<script>

var winwidth = window.matchMedia("screen and (min-width: 64.063em)")

if (winwidth.matches){ 
 window.onload = function() {
  

  var image1 = document.getElementById('imageOne');
  var image1Btn = document.getElementById('leftImage');
  var image2Btn = document.getElementById('rightImage');    
  var image2 = document.getElementById('imageTwo');

  var contactBtn = document.getElementById('btnContact');
    var contactOffBtn = document.getElementById('btnOffContact');
   var contactDiv = document.getElementById('thisContact');
   var closeContact = document.getElementById('closeModal');


  
  //var topSwipe = document.getElementById('swipe');

  
  // set gsap tweens up

  //run on page load - fade in images
  imgSizer = TweenMax.to(image1,4, {opacity: 1, delay: 1});
  imgSizer2 = TweenMax.to(image2,6, {opacity: 1, delay: 1.5});
  //run on roll over images
  imgWipe1  = TweenMax.to(image1,1, {scale: 1.5, paused: true, boxShadow:"0px 0px 30px 20px #4DD2FF", zIndex:"1000", left: "100px", top: "30%"});
  imgWipe2  = TweenMax.to(image2,2, {scale: 1.5, paused: true, boxShadow:"0px 0px 30px 20px #00D9A3", zIndex:"1000", left: "0", top: "30%"});
    imgWipe35  = TweenMax.to(image2Btn,2, {opacity: 0, paused: true});
  shiftLeft = TweenMax.to(image1Btn,3, {left: "+=200", paused: true});
  shiftRight = TweenMax.to(image2Btn,3, {right: "+=200", paused: true});

  showContact = TweenMax.to(contactDiv,1, {height:"260px", display: "inline", opacity:1, paused: true});
  showModal = TweenMax.to(closeContact,1, {height:"90px", display: "inline", opacity:1, paused: true, delay: 2});
  




image1Btn.onmouseover = function() {
  imgWipe1.play();
  shiftLeft.play();
    imgWipe35.play();
}

image1Btn.onmouseout = function() {
  imgWipe1.reverse();
  shiftLeft.reverse();
    imgWipe35.reverse();

}

image2Btn.onmouseover = function() {
  imgWipe2.play();
  shiftRight.play();
}

image2Btn.onmouseout = function() {
  imgWipe2.reverse();
  shiftRight.reverse();

}

contactBtn.onclick = function() {
  showContact.play();
    showModal.play();

}

contactOffBtn.onclick = function() {
 showContact.reverse();
   showModal.reverse();


}

}



}

else {

document.write("<style> #leftImage img, #rightImage img{opacity:1;filter:alpha(opacity=1);</style>");

}

</script>
 
</style>
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body class="casestudy">
  
  <div class="contain-to-grid sticky" data-options="sticky_on: large">
  <nav class="top-bar" data-topbar> <ul class="title-area"> <li class="name"> <h1><a href="index.html">Allen O'Leary</a></h1> </li> <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li> </ul> <section class="top-bar-section">
   <!-- Right Nav Section --> <ul class="right"> 
    <li class="has-dropdown"><a href="#">What I do</a>
    <ul class="dropdown"> 
					    <li><a href="projects.html">Project Management</a></li> 
					   <li><a href="digicomms.html">Digicomms & Marketing</a></li>
             <li><a href="ia-ux.html">IA and UX Design</a></li>
					   <li><a href="design-code.html">Visual Design and Coding</a></li>
             <li><a href="cms.html">CMS config and Management</a></li>
					 
		   </ul> 
		  </li>
    <li class="has-dropdown"> <a href="case-studies.html">My work</a>
		    <ul class="dropdown">
            <li><a href="showcase.html">Design showcase & client list</a></li>  
					   <li><a href="dec.html">The DEC - Project Management - Case Study</a></li>
					   <li class="active"><a href="sanger.html">The Sanger - IA, UX, UI - Case Study</a></li>
					   <li><a href="tsn.html">Teacher Support - Drupal site - Cas Study</a></li> 
             <li><a href="cv.html">Complete CV</a></li> sfcgrv9hty
		   </ul> 
   </li>
   <!--<li><a href="#">Articles</a></li>-->

   <script>

var winwidth = window.matchMedia("screen and (min-width: 64.063em)");

if (winwidth.matches){ 

 document.write("<li><a href='#'' id='btnContact'>Contact</a></li>   ");}

else {

document.write("<li><a href='contact.html'>Contact</a></li>   ");

}

</script>



		
    </ul>
  </nav>
    </div><!--/end topbar-->

     <div data-interchange="[contact-small, (small)], [contact-medium.html, (medium)]"></div>


    <div class="row">
    <div class="large-12 columns">

  
      <h2>The Sanger Institute</h2>
      <p class="byline">UX/IA and Visual Design of public-facing website</p>
    
    </div>
  </div>
  

<div class="row table" id="toprow">
  <div class="large-6 columns" id="leftImage">
  <img id="imageOne" src="img/sanger/4.jpg">  
  </div>
  
  
  <div class="large-6 columns" id="rightImage">
  <img id="imageTwo" src="img/sanger/1.jpg">
  </div>

  
</div><!--/#toprow-->
  


<div class="row table">
        <div class="large-3 columns"><!-- 1 left-->
          <h4>The Brief</h4>
        </div>
    
    
      <div class="large-7 columns"><!-- 1 right-->
        <p>The Sanger had a propritary web system that acted as a front end for hundred of research projects. As the site had grown the navigation scheme was simply overwhelmed and users were struggling to find the basics. Additionally the graphic design was dated.</p>
      </div>
      <div class="large-2 columns"><!-- spacer --></div>
    </div> <!-- row -->



    
    <div class="row table">
        <div class="large-3 columns"><!-- 1 left-->
          <h4>The Challenge </h4>
        </div>
    
    
      <div class="large-6 columns"><!-- 1 right-->
        <p>There are <strong>hundreds of projects and datasets totalling many petabytes of data</strong> on the website. Each project is lead by a world-class scientist who thinks, quite naturally, that their research is the most important thing in the world. So how do you present them equitably and clearly?</p>

        <p>This was an extreme form of the well-known <strong>'silo problem'</strong> in websites. This is where the website reflects the internal politics of the organisation and insufficiently addresses the needs of the user.</p>

        <p>Additionally the site is delvered on an <strong>inhouse system</strong> that is very efficient but somewhat quirky. For instance there was no way to automatically produce navigation structures and menus.</p>

  
      </div>
      <div class="large-3 columns"><!-- spacer --></div>
    </div> <!-- row -->


    <div class="row table">
        <div class="large-3 columns"><!-- 1 left-->
          <h4>Solution</h4>
        </div>
    
    
      <div class="large-7 columns"><!-- 1 right-->
        <p>I ran a thorough user-centred design process for the site, consisting of the following elements:</p>

        <ul>
          <li>Analytics study</li>  
          <li>User testing</li>
          <li>Content mapping</li>
          <li>User journey mapping</li>
          <li>Prototype development and testing</li>
          <li>Visual design</li>
          <li>Template coding</li>

        </ul>
      </div>
      <div class="large-2 columns"><!-- spacer --></div>
    </div> <!-- row -->

    <div class="row table stripe">

      <div class="large-4 columns" id="btnSangerTest">
          <img src="img/sanger/test.jpg" id="sangerTest">
      </div>
          
      <div class="large-6 columns"><!-- 1 right-->

        <p>One of the key aspects of the project was getting the scientists to buy-in. Of course what scientists like best is evidence so I took a lot of care with user testing and benchmarking improvements. </p>
      </div>
      <div class="large-2 columns"></div>
    </div>
    

    <div class="row table  unstripe">
  <div class="large-4  columns">
    <p>Mapping the existing site was a huge challenge as there was no existing list of content or navigation. In the end I used a command line program .dot to generate a very large sitemap that covered the 1400 top-level pages - I uncovered several sections of the site that no one ever knew existed! </p>
    <p>Once we had a map it was a lengthy but straight-forward process to cull old or irrelevant sections of the site.</p>
    </div>
    <div class="large-4 columns">         <img  src="img/sanger/sitemap.jpg" id="sangerMap">
      </div>
  <div class="large-4 columns">         <img src="img/sanger/ia.jpg" id="sangerMap">
      </div>
      
  </div>


    <div class="row table stripe">
      <div class="large-3 columns">
        <img src="img/sanger/proto.jpg" id="sangerProto">
      </div>

      <div class="large-3 columns">
        <img src="img/sanger/proto.jpg" id="sangerProto">
      </div>
          
      <div class="large-6 columns"><!-- 1 right-->

        <p>After developing candidate user journeys I used <a href="http://www.axure.com/">Axure</a> to develop a clickable prototype website, just enough pages to test theories and user pathways. I repeated user tests to see if we had made any progress.</p>
      </div>

      
    </div>

<div class="row table unstripe">

<div class="large-4 large-offset-1 columns"><img src="img/sanger/dina.jpg" id="sangerDina">
</div>

<div class="large-5 columns">

<p>Finally we looked at a visual design, in this process I parked myself in the cafe and talked several treatments through with people - and they voted on the one they liked best. In the end it was an efficient and rigorous design that made the cut.</p>

<p>After supplying the html templates I then left the project and the Sanger employed people to hand code(!) the pages. Luckily there were now only a couple of hundred pages to produce...</p>
</div>

<div class="large-2 columns"></div>




    <div class="large-7 large-offset-3  columns" id="seealso">
  

  <p class="tryme"><a href="tsn.html"> See also: Teacher Support Network - a complete transformation</a></p>

  <p class="tryme"><a href="dec.html"> See also: Project Management for the DEC</a></p>
  
    
    </div>
  </div>

    

  <footer class="row " id="thisfooter">

          <div class="large-12 columns footer">     
          </div>


        </footer>  

    
    <script src="js/vendor/jquery.js"></script>
    <script src="js/foundation.min.js"></script>
      <script src="js/foundation/foundation.interchange.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
