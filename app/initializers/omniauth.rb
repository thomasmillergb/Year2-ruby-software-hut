Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '472391588857-lgd9u17f44m7pqnqqbbmnl7g990t6cit.apps.googleusercontent.com', '7irkIUigTVnkPeeXlm-xFacr', {
    access_type: 'offline',
    scope: 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/calendar',
    redirect_uri:'http://aca11tm-demo.dev3.software-hut.org.uk/callback'
  }
end
