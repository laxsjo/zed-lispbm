(symbol) @variable
(application function: (symbol) @function)
(application arg: (symbol) @function.argument)
(number) @number
(directive) @preproc
(string) @string
["(" ")" "{" "}"] @punctuation.bracket
["defun" "def" "define"] @keyword
(comment) @comment
(special) @keyword
(function_definition name: (symbol) @function.name)
(arglist (symbol) @variable.special )
(ERROR) @warning
