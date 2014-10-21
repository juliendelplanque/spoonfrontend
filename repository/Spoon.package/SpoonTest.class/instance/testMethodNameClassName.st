testing
testMethodNameClassName
	| spoon |
	spoon := Spoon apk: '/tmp/test/app.apk' testApk: '/tmp/test/test.apk'.
	spoon methodName: 'aMethodName' className: 'AClass'.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --class-name AClass --method-name aMethodName' )