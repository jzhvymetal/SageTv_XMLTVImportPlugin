#!/bin/bash
cd /opt/sagetv/server/xmltv_src/
javac -Xlint:deprecation -Xlint:-options -source 8 -target 8 -classpath ../Sage.jar -d ./ Channel.java Show.java Init.java XMLInputStreamFilter.java XMLTVImportPlugin.java && jar cvf ../JARs/XMLTVImportPlugin.jar xmltv && {
sudo -E "PATH=$PATH" -u sagetv /usr/local/bin/stopsage 
rm ../Wiz.*
rm ../*.txt
rm ../*.log
sudo -E "PATH=$PATH" -u sagetv /usr/local/bin/startsage
}
rm -R xmltv