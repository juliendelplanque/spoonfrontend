instance creation
withSpoonJar: spoonJarPath apk: apkPath testApk: testApkPath
	^Spoon new
			pathToSpoonJar: (spoonJarPath asString);
			apk: (apkPath asString);
			testApk: (testApkPath asString)