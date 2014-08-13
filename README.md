# VATSIM SSO

A simple gem to help you consuming VATSIM SSO

it provides 2 functions :
- returning OAuth autorize url
- returning user hash after call back

Sample usage

    VatsimSso.login('YOUR_VATSIMSSO_CONSUMER_KEY','YOUR_VATSIMSSO_PRIVATE_KEY_PATH','YOUR_CALLBACK_URL','https://cert.vatsim.net/sso')


*Only RSA is supported for the moment*


Feel free to contribute, improve or suggest !