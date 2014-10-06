The Spoon object is a front end for the spoon instrumentation test app.
See: http://square.github.io/spoon/

You must create the object usin the class method as follow:

spoon := Spoon withSpoonJar: spoonJarPath apk: apkPath testApk: testApkPath.

Because these 3 parameters are essential to the program so use the class method and then add parameters as you want.

spoon failOnFailure: true.
spoon noAnimation: true.
etc...

Methods of the object have been named the same as the option of spoon but in camel case.

The path passed in parameter must be strings so if you use FileLocator don't forget to call fullName on the path.

More complete exemple of use:

spoon := Spoon withSpoonJar: (FileLocator home / 'lib-perso' / 'spoon' / 'spoon-runner-1.1.1-jar-with-dependencies.jar' ) fullName apk: (FileLocator temp / 'espressotestingproject' / 'app' / 'build' / 'outputs' / 'apk' / 'app-debug-unaligned.apk') fullName testApk: (FileLocator temp / 'espressotestingproject' / 'app' / 'build' / 'outputs' / 'apk' / 'app-debug-test-unaligned.apk') fullName.
	
spoon executeCommand.