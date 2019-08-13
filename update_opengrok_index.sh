#!/bin/sh
#java -Djava.util.logging.config.file=/opt/opengrok/logging.properties -jar /opt/opengrok/lib/opengrok.jar -s /opt/opengrok/src/ -d /opt/opengrok/data -H -P -S -G -W /opt/opengrok/etc/configuration.xml -U http://localhost:8080/source --depth 0  -T 8 -i d:out 

echo "update Complete"
date >> /home/mi/anlory/update_time
