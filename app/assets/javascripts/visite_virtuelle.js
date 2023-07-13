$('.visite-virtuelle-trigger-for-desktop').click(function(){
  id = $(this).data("id");
  $('.visite-virtuelle-container').removeClass('hidden');
  $('.visite-virtuelle-iframe[data-id=' + id + ']').removeClass('hidden');
});

$('#visite-virtuelle-close').click(function(){
  $('.visite-virtuelle-container').addClass('hidden');
  $('.visite-virtuelle-iframe').addClass('hidden');
});
