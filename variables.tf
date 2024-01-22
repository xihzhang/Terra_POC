provider "genesyscloud" {
  oauthclient_id     = "714e316b-6fcb-4a16-8837-ce4a011eaa90"
  oauthclient_secret = "1c0aSodJQafM4txdm5MCmgWiZDBaizmCU4gqEE7AXk0"
  aws_region         = "us-west-2"
}


#aws_region (String) AWS region where org exists. e.g. us-east-1. Can be set with the GENESYSCLOUD_REGION environment variable.

#Optional
#oauthclient_id (String) OAuthClient ID found on the OAuth page of Admin UI. Can be set with the GENESYSCLOUD_OAUTHCLIENT_ID environment variable.
#oauthclient_secret (String, Sensitive) OAuthClient secret found on the OAuth page of Admin UI. Can be set with the GENESYSCLOUD_OAUTHCLIENT_SECRET environment variable.
#access_token (String) A string that the OAuth client uses to make requests. Can be set with the GENESYSCLOUD_ACCESS_TOKEN environment variable.
#sdk_debug (Boolean) Enables debug tracing in the Genesys Cloud SDK. Output will be written to the local file 'sdk_debug.log'.
#token_pool_size (Number) Max number of OAuth tokens in the token pool. Can be set with the GENESYSCLOUD_TOKEN_POOL_SIZE environment variable.
