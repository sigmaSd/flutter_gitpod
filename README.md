# Flutter+gitpod

Example of how to use flutter with gitpod with the ability to build android apks.

To be able to build an android apk:
- run `/opt/android-studio/bin/studio.sh`
- On the left panel click on remote explorer you'll see the list of open ports, you want the vnc one which is 6080, make it public and click on the browser icon to start the vnc session
- follow the installation through then after its done open the sdk manager and install android 10 (api29), its not installed by default but its required by flutter

Thats it now you can build apk with `flutter build apk`
