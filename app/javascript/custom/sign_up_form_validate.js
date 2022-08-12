$(document).ready(function (){
  $("#new_user").validate({
    rules: {
      'user[first_name]': {
        required: true,
        maxlength: 25
      },
      'user[last_name]': {
        required: true,
        maxlength: 25
      },
      'user[email]': {
        required: true,
        maxlength: 255
      },
      'user[password]': {
        required: true,
        maxlength: 64
      },
      'user[password_confirmation]': {
        required: true,
          equalTo: "#user_password"
      }
    }
  })
})