module Rqbin
  EXCLUDE_PARAMS = %w(
    controller
    action
    request_id
  )

  EXCLUDE_HEADERS = %w(
    action_dispatch.secret_key_base
    action_dispatch.http_auth_salt
    action_dispatch.signed_cookie_salt
    action_dispatch.encrypted_cookie_salt
    action_dispatch.encrypted_signed_cookie_salt
    action_dispatch.request_id
    rack.request.form_vars
    rack.request.query_string
    rack.url_scheme
    GATEWAY_INTERFACE
    ORIGINAL_FULLPATH
    ORIGINAL_SCRIPT_NAME
    SERVER_NAME
    SERVER_PORT
    SERVER_PROTOCOL
    SERVER_SOFTWARE
  )
end
