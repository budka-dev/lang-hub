(call_expression
  function: (identifier) @call
)

(call_expression
  function: (field_expression
    field: (field_identifier) @call
  )
)

(field_expression
  argument: (identifier) @reference
)

(field_expression
  field: (field_identifier) @reference
)

(subscript_expression
  argument: (identifier) @reference
)

(subscript_expression
  index: (identifier) @reference
)

(assignment_expression
  left: (identifier) @reference
)

(assignment_expression
  left: (pointer_expression
    (identifier) @reference
  )
)

(init_declarator
  declarator: (identifier) @reference
)

(init_declarator
  declarator: (pointer_declarator
    (identifier) @reference
  )
)

(update_expression
  argument: (identifier) @reference
)

(unary_expression
  argument: (identifier) @reference
)

(binary_expression
  left: (identifier) @reference
)

(binary_expression
  right: (identifier) @reference
)

(conditional_expression
  condition: (identifier) @reference
)

(type_identifier) @type_usage

(primitive_type) @type_usage

(sized_type_specifier) @type_usage

(preproc_include
  path: (string_literal) @include_source
)

(preproc_include
  path: (system_lib_string) @include_source
)
