command creation
createCommand
	| command keys |
	command := 'java -jar ' , pathToSpoonJar fullName , ' '.
	command := command , '--apk ' , (args at: '--apk') , ' '.
	command := command , '--test-apk ' , (args at: '--test-apk').
	keys := OrderedCollection newFrom: (args keys).
	keys remove: '--apk'.
	keys remove: '--test-apk'.
	keys sort.
	keys do: [ :key |
		command := command , ' ' , key , ' ' , (args at: key) ].
	(outputFile = nil)
	ifFalse: [ command := command , ' > ' , outputFile fullName ].
	^command