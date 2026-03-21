(call_expression
  function: (identifier) @call
)

(call_expression
  function: (qualified_identifier
    name: (identifier) @call
  )
)

(call_expression
  function: (field_expression
    field: (field_identifier) @call
  )
)

(new_expression
  type: (type_identifier) @call
)

(field_expression
  argument: (identifier) @reference
)

(field_expression
  argument: (this) @reference
)

(field_expression
  field: (field_identifier) @reference
)

(subscript_expression
  argument: (identifier) @reference
)

(assignment_expression
  left: (identifier) @reference
)

(assignment_expression
  left: (qualified_identifier) @reference
)

(init_declarator
  declarator: (identifier) @reference
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

(decltype) @type_usage

(dependent_type
  (type_identifier) @type_usage
)

(template_type
  name: (type_identifier) @type_usage
)

(preproc_include
  path: (string_literal) @include_source
)

(preproc_include
  path: (system_lib_string) @include_source
)

(this) @reference
