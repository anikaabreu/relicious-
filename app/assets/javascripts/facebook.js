window.fbAsyncInit = function() {
  FB.init({
    appId      : '269930236753548',
    cookie     : true,
    xfbml      : true,
    version    : 'v2.8'
  });
  // (function(d, s, id) {
  //   var js, fjs = d.getElementsByTagName(s)[0];
  //   if (d.getElementById(id)) return;
  //   js = d.createElement(s); js.id = id;
  //   js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8&appId=629177267279104";
  //   fjs.parentNode.insertBefore(js, fjs);
  // }(document, 'script', 'facebook-jssdk'));

  FB.getLoginStatus(function(response) {
    if (response.status === 'connected') {
      // the user is logged in and has authenticated your
      // app, and response.authResponse supplies
      // the user's ID, a valid access token, a signed
      // request, and the time the access token
      // and signed request each expire
      var uid = response.authResponse.userID;
      var accessToken = response.authResponse.accessToken;
    } else if (response.status === 'not_authorized') {
      // the user is logged in to Facebook,
      // but has not authenticated your app
    } else {
      // the user isn't logged in to Facebook.
    }
 });

 FB.getLoginStatus(function(response) {
  // this will be called when the roundtrip to Facebook has completed
  console.log('logged in');
}, true);

  FB.AppEvents.logPageView();
  console.log(FB);
  // FB.getLoginStatus(function(response) {

  // if (response.status === 'connected') {
  //     console.log('got ya');


//accessToken in authResponse, can sendaccess token to application to pull information about user and store token in database and can continue to pull info as at that point, it's an api request. they expire in 2/3 hours//
//FB provides FB.getAccessToken()






// FB.getLoginStatus(function(response) {
//     statusChangeCallback(response);
// });

 //
 // $(document).on
 // ('turbolinks:load', function() {
 //   $('#token-transfer-link').click(function (e)
 //   {e.preventDefault();
 //     var token = FB.getAccessToken();
 //     if (token) {
 //       window.location = "http://localhost:3000/facebook/token?token=" + token));
 //   }}
  };
