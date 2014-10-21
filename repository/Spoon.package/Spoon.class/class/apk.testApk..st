instance creation
apk: apkPath testApk: testApkPath
	^Spoon new
			apk: (apkPath asString);
			testApk: (testApkPath asString)