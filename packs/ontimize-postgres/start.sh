#!/bin/bash
java -cp /opt/hsqldb-2.3.4.jar org.hsqldb.Server -port 9013 -database.0 /db/templateDB -dbname.0 templateDB &
java -jar /opt/REPLACE_ME_APP_NAME-boot.jar