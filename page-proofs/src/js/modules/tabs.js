// Tabs

$('.tabs').on('click', '.tab__link', function(){
  let tabId = $(this).data('tab');

  $(this).addClass('is-active').siblings().removeClass('is-active');
  $('#' + tabId).addClass('is-active').siblings('.tab__content').removeClass('is-active');
});
