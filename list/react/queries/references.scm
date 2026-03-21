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

(jsx_element
  open_tag: (jsx_opening_element
    name: (identifier) @component_reference
  )
)

(jsx_self_closing_element
  name: (identifier) @component_reference
)

(jsx_attribute
  name: (property_identifier) @prop_reference
)

(jsx_expression
  (identifier) @expression_reference
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

(import_statement
  source: (string) @import_source
)

(import_require_clause
  source: (string) @import_source
)

(export_statement
  source: (string) @export_source

(type_identifier) @type_usage

(predefined_type) @type_usage

(nested_type_identifier
  (identifier) @type_usage
)

(generic_type
  name: (type_identifier) @type_usage
)

(hook_call
  (identifier) @hook_reference
)

(context_consumer
  (identifier) @context_reference
)

(reducer_usage
  (identifier) @reducer_reference
)

(effects_usage
  (identifier) @effect_reference
)

(state_usage
  (identifier) @state_reference
)

(ref_usage
  (identifier) @ref_reference
)

(memo_usage
  (identifier) @memo_reference
)

(callback_usage
  (identifier) @callback_reference
)

(custom_hook_usage
  (identifier) @custom_hook_reference
)
