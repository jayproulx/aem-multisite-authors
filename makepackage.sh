#!/bin/bash
HOST=localhost:4502
CREDS=admin:admin
FILE=multisite-authors-1.1.0.zip
rm $FILE
zip $FILE -r META-INF/ jcr_root/
curl -u $CREDS -F file=@$FILE -F force=true -F install=true http://$HOST/crx/packmgr/service.jsp
