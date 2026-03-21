(call_expression
  function: (identifier) @call
)

(call_expression
  function: (member_expression
    property: (property_identifier) @call
  )
)

(call_expression
  function: (subscript_expression
    (identifier) @call
  )
)

(new_expression
  constructor: (identifier) @call
)

(new_expression
  constructor: (member_expression
    property: (property_identifier) @call
  )
)

(import_statement
  source: (string) @import_source
)

(import_require_clause
  source: (string) @import_source
)

(export_statement
  source: (string) @export_source
)

(type_identifier) @type_usage

(predefined_type) @type_usage

(nested_type_identifier
  (identifier) @type_usage
)

(generic_type
  name: (type_identifier) @type_usage
)

(member_expression
  object: (identifier) @reference
)

(member_expression
  property: (property_identifier) @reference
)

(subscript_expression
  object: (identifier) @reference
)
