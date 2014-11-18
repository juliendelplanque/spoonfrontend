testing
testCreateCommand
	| spoon |
	spoon := Spoon apk: (FileLocator temp / 'test' / 'app.apk') testApk: (FileLocator temp / 'test' / 'test.apk').
	spoon adbTimeout: 5;
			className: 'AClass';
			failIfNoDeviceConnected;
			failOnFailure;
			methodName: 'aMethod' className: 'AClass';
			noAnimations;
			output: '/tmp/spoonout';
			sdk: '/lib/java7';
			size: 'medium';
			title: 'SpoonTest'.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --adb-timeout 5 --class-name AClass --fail-if-no-device-connected true --fail-on-failure true --method-name aMethod --no-animations true --output /tmp/spoonout --sdk /lib/java7 --size medium --title SpoonTest')