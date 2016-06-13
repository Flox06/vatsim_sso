require 'oauth'
require 'json'


module VatsimSso

  # provides authorize URL
  def self.login(key,cert_path,callback_url,site)
    @@consumer = OAuth::Consumer.new(key, OpenSSL::PKey::RSA.new(IO.read(cert_path)),:site => site,:request_token_path=>"/api/login_token",:access_token_path=>"/api/login_return",:authorize_path => "/auth/pre_login",:signature_method => "RSA-SHA1",:scheme => :body)
    #@consumer.http.set_debug_output($stdout)
    request_token = @@consumer.get_request_token(
        :oauth_callback => callback_url
    )
    h = JSON.parse(request_token.params.keys.first.to_s)
    site + '/auth/pre_login/?oauth_token=' + h['token']['oauth_token']
  end

  # use it after sso callback, provides the user hash
  def self.login_return(auth_token,auth_verifier)
    resp = OAuth::RequestToken.new(@@consumer,auth_token).get_access_token(:oauth_verifier => auth_verifier)
    h = JSON.parse(resp.params.keys.first.to_s)
    h['user']
  end

end

