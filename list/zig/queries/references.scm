(call_expression
  (identifier) @call
)

(call_expression
  (field_expression
    (identifier) @call
  )
)

(field_expression
  (identifier) @reference
)

(field_expression
  (field_identifier) @reference
)

(array_access_expression
  (identifier) @reference
)

(slice_expression
  (identifier) @reference
)

(assignment_expression
  left: (identifier) @reference
)

(assignment_expression
  left: (field_expression
    (identifier) @reference
  )
)

(assignment_expression
  left: (array_access_expression
    (identifier) @reference
  )
)

(variable_declaration
  (identifier) @reference
)

(const_declaration
  (identifier) @reference
)

(binary_expression
  left: (identifier) @reference
)

(binary_expression
  right: (identifier) @reference
)

(unary_expression
  (identifier) @reference
)

(try_expression
  (identifier) @reference
)

(catch_expression
  (identifier) @reference
)

(orelse_expression
  (identifier) @reference
)

(if_expression
  condition: (identifier) @reference
)

(while_expression
  condition: (identifier) @reference
)

(for_expression
  (identifier) @reference
)

(switch_expression
  (identifier) @reference
)

(builtin_function
  (identifier) @reference
)

(import_declaration
  (string) @import_source
)

(usingnamespace_declaration
  (string) @import_source
)

(type_identifier) @type_usage

(builtin_type) @type_usage
