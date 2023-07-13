$(document).ready(function() {
  $('.see-flats-button').click(function(event) {
    console.log('test');
    var targetPosition = $('#landing-flats').offset().top;
    $('html, body').animate({ scrollTop: targetPosition }, 'slow');
  })
});
