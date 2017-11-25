OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1049050584843-8f1n4hufeepcogr7sm2m4ad7hkaj6rvv.apps.googleusercontent.com', 'YqMzuJ103SvbhD7T8bLe8cJn', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end