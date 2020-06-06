$(document).on('change', '.email-duplicacy-check', function(e) {
  e.preventDefault();
  var email_field = $('.email-duplicacy-check').val()

  $.ajax({
    method: 'GET',
    url: '/check_email_duplicacy?email=' + email_field,
    dataType: 'json',
    success: function (data, status, xhr) {
      if(data["msg"] != ""){
        $('.error-email-check-info').remove()
        $('.email-check-info').remove()
        $('.email-duplicacy-check').after('<small class="form-text error-email-check-info">' + data["msg"]+ '</small>')
      } else {
        $('.error-email-check-info').remove()
        $('.email-check-info').remove()
        $('.email-duplicacy-check').after('<small class="form-text email-check-info">Good to go!!</small>')
      }
    }
  });
});
