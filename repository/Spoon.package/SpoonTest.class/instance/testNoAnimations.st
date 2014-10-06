testing
testNoAnimations
	| spoon |
	spoon := Spoon withSpoonJar: '/home/user/spoon.jar' apk: '/tmp/test/app.apk' testApk: '/tmp/test/test.apk'.
	spoon noAnimations.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --no-animations true' ).
	