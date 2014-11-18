testing
testNoAnimations
	| spoon |
	spoon := Spoon apk: (FileLocator temp / 'test' / 'app.apk') testApk: (FileLocator temp / 'test' / 'test.apk').
	spoon noAnimations.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --no-animations true' ).
	