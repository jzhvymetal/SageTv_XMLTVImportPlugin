# How to install Plugin with SageTV 
1.  Stop SageTV Server
2.  Rename on add/modify/ xmltv_EXAMPLE.properties examples
3.  Copy all files and folder contents(not folder) of folder SAGETV_SERVER_ROOT to SageTV folder.  Only Jar and *.proerties are required if not compiling required
4.  Add the following line in Sage.properties epg/epg_import_plugin=xmltv.XMLTVImportPlugin
5.  Start SageTV Server
6.  Monitor in server folder xmltv.log, sagetv_0.txt,Sage.properties.  If epg/epg_import_plugin=xmltv.XMLTVImportPlugin is removed from Sage.properties something is installed not correctly
7.  In SageTV guide setup use XMLTV with zipcode 00000.  If ask for license use TRIAL

# Commnds for UnRaid Docker to Moditfy Sage.properties for Plugin 
1.  Stop Sage Server
+ ``sudo -E "PATH=$PATH" -u sagetv /usr/local/bin/stopsage &``
2.  Property Setting for EPG Plugin 
- ``sudo sed -i 'epg/epg_import_plugin' /opt/sagetv/server/Sage.properties``
- ``sudo echo 'epg/epg_import_plugin=xmltv.XMLTVImportPlugin' >>  /opt/sagetv/server/Sage.properties``
3.  Start Sage Server 
- `` sudo -E "PATH=$PATH" -u sagetv /usr/local/bin/startsage & ``

# Using UnRaid Docker to compile plugin
1.  ssh unraid server
2.  ``docker exec -it sagetvopen-sagetv-server-java11_TEST  /bin/bash``
3.  Run one of the following
- `` sh ondocker_build.sh ``
- `` sh ondocker_build_clean_sagetv.sh ``

# Examples `.properties` for channel
![](https://github.com/jzhvymetal/SageTv_XMLTVImportPlugin/blob/main/SAGETV_SERVER_ROOT_Contents/xmltv_src/DOC/PROP_Channel.png)

# Examples `.properties` for show
![](https://github.com/jzhvymetal/SageTv_XMLTVImportPlugin/blob/main/SAGETV_SERVER_ROOT_Contents/xmltv_src/DOC/PROP_Show.png)
