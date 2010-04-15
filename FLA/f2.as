import User;
Stage.scaleMode = "exactFit";
ASSetPropFlags(Object.prototype, "copyProperties", 1);

#include "css.as"
#include "chat.as"

_root.IP="127.0.0.1";
_root.port = 1935;
_root.room="chat";
_root.debug = false;
if (_root.debug == true) {
	_root.IP = "127.0.0.1";
	_root.port = "1935";
	_root.pseudo="yarek";
	_root.sexe="f";
}
_root.rtmpString = "rtmp://"+_root.IP+':'+_root.port+"/"+_root.room;
	
_root.infos = true;
_root.userMustPublishWebcam = true;
_root.colorText = '#00000';
_root.playSounds = true;
_root.serverMessages = true;
_root.showToolTips = true;
_root.listenToTalk=true;
_root.individualPrivateMessages = true;
_root.showAdminsAsNormalUsers = true;
// displays infos such: "user has joined the chat":
//attachAudio
_root.authentificate = false;
_root.showMyWebcam = false;
_root.authentificateURL = "http://"+_root.IP+"/red5chat/testlogin.php";
_root.infoUserURL = "http://"+_root.IP+"/red5chat/infouser.php";
// this url is to connect to your database page testAutoconnect.php
// we will provide the following information $POST["username"] and $POST["password"]
// if the result ?result=ok, the user is AUTHETIFCAITED, else it is not !
// look at the testAutoconnect.php provided with the red5chat and edit it !
//
//LoadVars
_root.autoConnect = false;
// if you put the autoconnect to true, make sure to provide the params
// pseudo=nickname, status= online, offline..., role=normal, admin..., sexe=m,f,a, room = name of room, world = world !
// if autoconnect is true, the the login panel will not be shown
// PRELOADER
init_rooms();
//init_chat();
stop();
