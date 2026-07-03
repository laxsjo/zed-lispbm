(symbol) @variable
(application function: (symbol) @function)
(number) @number
(directive) @preproc
(string) @string
["(" ")" "{" "}"] @punctuation.bracket
(_ keyword:_ @keyword)
(comment) @comment
(function_definition name: (symbol) @function.name)
(arglist (symbol) @variable.special )
(ERROR) @number
(escape_sequence) @string.escape
(invalid_escape_sequence) @warning
(constant_symbol) @constant
