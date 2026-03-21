(call_expression
  (simple_identifier) @call
)

(call_expression
  (navigation_expression
    (navigation_suffix
      (simple_identifier) @call
    )
  )
)

(navigation_expression
  (simple_identifier) @reference
)

(navigation_expression
  (navigation_suffix
    (simple_identifier) @reference
  )
)

(assignment
  (directly_assignable_expression
    (simple_identifier) @reference
  )
)

(assignment
  (directly_assignable_expression
    (navigation_expression
      (simple_identifier) @reference
    )
  )
)

(property_declaration
  (variable_declaration
    (simple_identifier) @reference
  )
)

(variable_declaration
  (simple_identifier) @reference
)

(parameter
  (simple_identifier) @reference
)

(binary_expression
  (simple_identifier) @reference
)

(unary_expression
  (simple_identifier) @reference
)

(ternary_expression
  (simple_identifier) @reference
)

(if_expression
  (simple_identifier) @reference
)

(when_expression
  (simple_identifier) @reference
)

(for_statement
  (simple_identifier) @reference
)

(while_statement
  (simple_identifier) @reference
)

(do_while_statement
  (simple_identifier) @reference
)

(try_expression
  (simple_identifier) @reference
)

(throw_expression
  (simple_identifier) @reference
)

(return_expression
  (simple_identifier) @reference
)

(import_header
  (identifier) @import_reference
)

(type_identifier) @type_reference

(user_type) @type_usage

(this_expression) @this_reference

(super_expression) @super_reference
