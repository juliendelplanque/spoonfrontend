testing
testClassName
	| spoon |
	spoon := Spoon apk: '/tmp/test/app.apk' testApk: '/tmp/test/test.apk'.
	spoon className: 'AJavaClass'.
	
	self assert: (spoon createCommand = 'java -jar /home/user/spoon.jar --apk /tmp/test/app.apk --test-apk /tmp/test/test.apk --class-name AJavaClass' )