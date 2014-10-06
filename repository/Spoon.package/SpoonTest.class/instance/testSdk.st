testing
testSdk
	| spoon |
	spoon := Spoon withSpoonJar: '/home/user/spoon.jar' apk: '/tmp/test/app.apk' testApk: '/tmp/test/test.apk'.
	spoon sdk: '/lib/java7'.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --sdk /lib/java7' )