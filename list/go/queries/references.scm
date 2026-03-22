(call_expression
  function: (identifier) @call
)

(call_expression
  function: (selector_expression
    field: (field_identifier) @call
  )
)

(call_expression
  function: (parenthesized_expression
    (identifier) @call
  )
)

(selector_expression
  operand: (identifier) @reference
)

(selector_expression
  field: (field_identifier) @reference
)

(index_expression
  operand: (identifier) @reference
)

(slice_expression
  operand: (identifier) @reference
)

(type_assertion_expression
  operand: (identifier) @reference
)

(type_conversion_expression
  operand: (identifier) @reference
)

; (assignment_statement
;   left: (identifier) @reference
; )

(assignment_statement
  left: (expression_list
    (identifier) @reference
  )
)

(short_var_declaration
  left: (expression_list
    (identifier) @reference
  )
)

(range_clause
  left: (expression_list
    (identifier) @reference
  )
)

(range_clause
  right: (identifier) @reference
)

(import_declaration
  (import_spec_list
    (import_spec
      path: (interpreted_string_literal) @import_source
    )
  )
)

(import_declaration
  (import_spec
    path: (interpreted_string_literal) @import_source
  )
)

(qualified_type
  (package_identifier) @reference
)

(type_identifier) @type_usage
