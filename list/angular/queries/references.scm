(class_declaration
  name: (type_identifier) @class_reference
)

(method_definition
  name: (property_identifier) @method_reference
)

(property_signature
  name: (property_identifier) @property_reference
)

(variable_declaration
  (variable_declarator
    name: (identifier) @variable_reference
  )
)

(call_expression
  function: (identifier) @function_call_reference
)

(member_expression
  object: (identifier) @object_reference
)

(member_expression
  property: (property_identifier) @property_reference
)

(new_expression
  constructor: (identifier) @constructor_reference
)

(import_clause
  (named_imports
    (import_specifier
      name: (identifier) @import_reference
    )
  )
)

(export_statement
  (class_declaration
    name: (type_identifier) @export_reference
  )
)

(decorator
  (call_expression
    function: (identifier) @decorator_reference
  )
)

(template_element) @template_reference

(style_element) @style_reference

(binding
  (identifier) @binding_reference
)

(event_binding
  (identifier) @event_binding_reference
)

(two_way_binding
  (identifier) @two_way_binding_reference
)

(structural_directive
  (identifier) @structural_directive_reference
)

(attribute_binding
  (identifier) @attribute_binding_reference
)

(interpolation
  (identifier) @interpolation_reference
)

(pipe_sequence
  (identifier) @pipe_reference
)
