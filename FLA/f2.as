_root.rooms_mc.visible = false;

import User;
Stage.scaleMode = "exactFit";
ASSetPropFlags(Object.prototype, "copyProperties", 1);

#include "css.as"
#include "chat.as"

stop();

/* first create a new instance of the LoadVars object */
myVars = new LoadVars();
// call the load method to load my php page
myVars.load("conf.txt");
// once vars have been loaded, we will have these variables:

myVars.onLoad = function( success ){
    if(success){
        trace("conf.txt variables loaded");
		trace(myVars.ip + myVars.port + myVars.room );
		
		// load successful
		_root.IP = myVars.ip;
		_root.port = myVars.port;
		_root.room = myVars.room;
		_root.debug = false;
		if (_root.debug == true) {
			_root.IP = "talkabouthealth.com";
			_root.port = "1935";
			_root.pseudo="yarek";
			_root.sexe="f";
		}
		_root.rtmpString = "rtmp://"+_root.IP+':'+_root.port+"/"+_root.room;
			
		trace(_root.rtmpString);
		
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

     } else {
        trace("Error loading conf.txt");
    }
} 




stop();