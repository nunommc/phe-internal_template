$('#cookie-close-btn').click(function (e) {
  e.preventDefault();

  var today = new Date();
  var todayFormatted=  today.getDate() + "/" + today.getMonth() + "/" + today.getFullYear();
  var expiration_date = new Date();
  var cookie_string = '';
  expiration_date.setFullYear(expiration_date.getFullYear() + 1);

  document.cookie = 'cookie_eu_consented='+todayFormatted+'; expires='+expiration_date;
});