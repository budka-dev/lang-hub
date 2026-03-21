(function_call
  (identifier) @call_reference
)

(function_call
  (method_index_expression
    (identifier) @method_call_reference
  )
)

(function_call
  (method_index_expression
    (property_identifier) @method_call_reference
  )
)

(method_index_expression
  (identifier) @reference
)

(method_index_expression
  (property_identifier) @reference
)

(variable_declarator
  (identifier) @reference
)

(assignment_statement
  (variable_list
    (identifier) @reference
  )
)

(assignment_statement
  (expression_list
    (identifier) @reference
  )
)

(for_statement
  (identifier) @reference
)

(for_in_statement
  (identifier) @reference
)

(parameter
  (identifier) @reference
)

(binary_expression
  (identifier) @reference
)

(unary_expression
  (identifier) @reference
)

(if_statement
  (identifier) @reference
)

(while_statement
  (identifier) @reference
)

(repeat_statement
  (identifier) @reference
)

(return_statement
  (identifier) @reference
)

(table_constructor
  (field
    (identifier) @reference
  )
)

(table_constructor
  (field
    (string) @reference
  )
)

(table_index_expression
  (identifier) @reference
)

(bracket_index_expression
  (identifier) @reference
)

(dot_index_expression
  (identifier) @reference
)

(dot_index_expression
  (property_identifier) @reference
)

(require_call
  (string) @require_reference
)

(string) @string_reference

(number) @number_reference

(boolean) @boolean_reference

(nil) @nil_reference

(label_statement
  (label) @label_reference
)

(goto_statement
  (label) @label_reference
)
