#! /bin/bash

# Template for key building
function umls_properties() {
  echo "apikey = $UMLS_APIKEY"
}
echo "entrypoint"

# Always rewrite the umls.properties file
umls_properties > /usr/local/tomcat/webapps/vivo/WEB-INF/classes/umls.properties

echo "Switching to $@"
# Switch to CMD
exec "$@"
