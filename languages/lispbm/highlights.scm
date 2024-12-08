(symbol) @variable
(application name: (symbol) @function)
(number) @number
(string) @string
["(" ")" "{" "}"] @punctuation.bracket
(comment) @comment
(special) @keyword
(function_definition name: (symbol) @keyword)
(arglist (symbol) @variable.special )
