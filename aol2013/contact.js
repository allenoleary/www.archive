  
 window.onload = function() {

  var contactBtn = document.getElementById('btnContact');
    var contactOffBtn = document.getElementById('btnOffContact');
   var contactDiv = document.getElementById('thisContact');
   var closeContact = document.getElementById('closeModal');


  showContact = TweenMax.to(contactDiv,1, {height:"260px", display: "inline", opacity:1, paused: true});
  showModal = TweenMax.to(closeContact,1, {height:"90px", display: "inline", opacity:1, paused: true, delay: 2});

  contactOffBtn.onclick = function() {
 showContact.reverse();
   showModal.reverse();

}
}