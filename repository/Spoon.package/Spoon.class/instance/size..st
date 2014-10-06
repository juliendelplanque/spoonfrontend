arguments
size: size
	(#('small' 'medium' 'large') includes: size)
		ifTrue: [
			args at: '--size' put: size ]
		ifFalse: [
			BadParameterException signal: size , ' is not a valid argument for --size option.' ]
	