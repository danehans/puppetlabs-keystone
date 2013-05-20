#
# Implements ssl configuration for keystone.
# Note: SSL is enabled by default in the Grizzly release.
#
class keystone::token_format::ssl(
  $certfile      = '/etc/keystone/ssl/certs/keystone.pem',
  $keyfile       = '/etc/keystone/ssl/private/keystonekey.pem',
  $ca_certs      = '/etc/keystone/ssl/certs/ca.pem',
  $cert_required = 'True',
  $certfile      = '/etc/keystone/ssl/certs/signing_cert.pem',
  $keyfile       = '/etc/keystone/ssl/private/signing_key.pem',
  $ca_certs      = '/etc/keystone/ssl/certs/ca.pem',
  $key_size      = '1024',
  $valid_days    = '3650',
  $ca_password   = 'None'
) {

  keystone_config {
    'ssl/certfile':         value => $certfile;
    'ssl/keyfile':          value => $keyfile;
    'ssl/ca_certs':         value => $ca_certs;
    'ssl/cert_required':    value => $cert_required;
    'signing/certfile':     value => $certfile;
    'signing/keyfile':      value => $keyfile;
    'signing/ca_certs':     value => $ca_certs;
    'signing/key_size':     value => $key_size;
    'signing/valid_days':   value => $valid_days;
    'signing/ca_password':  value => $ca_password;
  }
}
