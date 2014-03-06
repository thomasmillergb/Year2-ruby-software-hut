Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '472391588857-bua65rm9o1si65ce6domdtq9iod0hr2v.apps.googleusercontent.com', 'IyplJJ93fiASMvR23R6drQog', {
    access_type: 'offline',
    scope: 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/calendar',
    redirect_uri:'http://aca11tm-demo.dev3.software-hut.org.uk/auth/google-oauth2/callback'
  }
end
