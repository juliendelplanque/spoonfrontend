as yet unclassified
executeCommand
	"When you execute the command, it block the thread where the method is called until Spoon process terminate.
	 If an output file has been setted, then this method return an empty string."
	| process semaphore out |
	semaphore := Semaphore new.
	process := ([ out := (PipeableOSProcess command: self createCommand)output. semaphore signal.] fork).
	semaphore wait.
	^out