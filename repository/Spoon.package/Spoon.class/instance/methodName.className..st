arguments
methodName: methodName className: className
	"For the argument --method-name, the argument --class-name is also required."
	args at: '--method-name' put: methodName.
	self className: className.