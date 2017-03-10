// This is a test harness for your module
// You should do something interesting in this harness
// to test out the module and to provide instructions
// to users on how to use it by example.


// open a single window
var win = Ti.UI.createWindow({
	backgroundColor:'white'
});
var label = Ti.UI.createLabel({
			text: "Click me"
		});
win.add(label);
win.open();

var heap = require('com.benjamin.heap');
Ti.API.info("HEAP module is => " + heap);
heap.setHeapAppId("0123456789"); // <--- Add your Heap ID here
heap.enableHeapVisualizer();
Ti.API.info("HEAP userId => " + heap.getUserId());
Ti.API.info("HEAP libVersion => " + heap.libVersion());



