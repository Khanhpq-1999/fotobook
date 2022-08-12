$(document).ready(function(){
  $("#new_user").validate({
    rules: {
      'user[email]': {
        'required': true
      },
      'user[password]': {
        'required': true
      }
    }
  })
})