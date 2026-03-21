(call_expression
  function: (identifier) @call
)

(call_expression
  function: (field_expression
    field: (field_identifier) @call
  )
)

(call_expression
  function: (scoped_identifier
    name: (identifier) @call
  )
)

(macro_invocation
  macro: (identifier) @call
)

(use_declaration
  argument: (scoped_identifier
    name: (identifier) @import
  )
)

(use_declaration
  argument: (identifier) @import
)

(type_identifier) @type_usage
