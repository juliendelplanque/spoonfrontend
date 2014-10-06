testing
testPathToSpoonJar
	| spoon |
	spoon := Spoon withSpoonJar: '/home/user/spoon.jar' apk: '/tmp/test/app.apk' testApk: '/tmp/test/test.apk'.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk' )