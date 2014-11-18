testing
testFailIfNoDeviceConnected
	| spoon |
	spoon := Spoon apk: (FileLocator temp / 'test' / 'app.apk') testApk: (FileLocator temp / 'test' / 'test.apk').
	spoon failIfNoDeviceConnected.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --fail-if-no-device-connected true' ).
