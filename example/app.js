// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
win.open();

// TODO: write your module tests here
var TiPopup = require('com.popup');
Ti.API.info("module is => " + TiPopup);

var popup = TiPopup.createView();
win.add(popup);

win.addEventListener('click', function() {
	// popup.showMenu();
});