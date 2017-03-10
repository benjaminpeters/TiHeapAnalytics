# TiHeapAnalytics

Heap is a modern take on analytics. There's no need to ship event tracking code, no need to wait days or weeks for data to accumulate, no need to muddle your codebase, and no need to fumble with rigid reports.

For the first time, meaningful product questions can be answered just as soon as they're asked.


This module connects your iOS apps to [Heap Analytics](https://heapanalytics.com/) for app event tracking in a Titanium Appcelerator Application.

## Usage

1. Register your account with [Heap Analytics](https://heapanalytics.com/), once done retrieve your 10 digit Heap app ID.

2. Follow [these](http://docs.appcelerator.com/platform/latest/#!/guide/Using_a_Module) instructions to install the module.

3. To access this module from JavaScript, you need to do the following:

```javascript
var heap = require('com.benjamin.heap');
heap.setHeapAppId("0123456789"); // <--- Add your Heap ID here
heap.enableHeapVisualizer();
```

TEST HARNESS EXAMPLE FOR YOUR MODULE
------------------------------------

The `example` directory contains a skeleton application test harness that can be
used for testing and provides an example of usage


BUILDING YOUR MODULE
--------------------

Simply run `titanium build --platform <name of platform> --build-type production --dir /path/to/module`.
You can omit the --dir option if your working directory is in the module's project directory.


TESTING YOUR MODULE
-------------------

To test with the script, execute:

	titanium run --dir=YOURMODULEDIR

This will execute the app.js in the example folder as a Titanium application.

