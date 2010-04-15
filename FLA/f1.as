stop();
onEnterFrame = function () {
	var loaded = Math.ceil(_root.getBytesLoaded()*100/ _root.getBytesTotal());
	_root.loading_txt.text="Loading:"+loaded+"%";
	if (_root.getBytesLoaded() == _root.getBytesTotal()) {
		delete onEnterFrame;
		play();
	}
};
