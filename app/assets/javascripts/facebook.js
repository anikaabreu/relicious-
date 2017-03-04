window.fbAsyncInit = function() {
  FB.init({
    appId      : '629177267279104',
    cookie     : true,
    xfbml      : true,
    version    : 'v2.8'
  });
  FB.AppEvents.logPageView();
  console.log(FB);
  FB.getLoginStatus(function(response) {

  if (response.status === 'connected') {
      console.log('got ya');

//accessToken in authResponse, can sendaccess token to application to pull information about user and store token in database and can continue to pull info as at that point, it's an api request. they expire in 2/3 hours//
//FB provides FB.getAccessToken()

      FB.api('/me', function(profile) {
        var name = profile.name;
        console.log(name);
        $("body").append("TY");
      });
  }
});
};

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   js.src = "//connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));

 // (function(d, s, id) {
 //   var js, fjs = d.getElementsByTagName(s)[0];
 //   if (d.getElementById(id)) return;
 //   js = d.createElement(s); js.id = id;
 //   js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8";
 //   fjs.parentNode.insertBefore(js, fjs);
 // }(document, 'script', 'facebook-jssdk'));

FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
});


 $(document).on('turbolinks:load', function() {
   $('#token-transfer-link').click(function (e) {
     e.preventDefault();
     var token = FB.getAccessToken();
     if (token) {
       window.location = "http://localhost:3000/facebook/token?token=" + token;
     }
   })
 })
