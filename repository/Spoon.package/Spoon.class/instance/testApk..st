arguments
testApk: path
	args at: '--test-apk' put: (path fullName)