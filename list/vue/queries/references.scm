(element
  (start_tag
    (tag_name) @element_reference
  )
)

(element
  (self_closing_tag
    (tag_name) @element_reference
  )
)

(attribute
  (attribute_name) @attribute_reference
)

(directive_attribute
  (directive_name) @directive_reference
)

(directive_attribute
  (directive_argument) @directive_argument_reference
)

(expression_statement
  (identifier) @expression_reference
)

(assignment_expression
  left: (identifier) @variable_reference
)

(assignment_expression
  right: (identifier) @value_reference
)

(function_declaration
  (identifier) @function_reference
)

(method_definition
  (property_name) @method_reference
)

(class_declaration
  (type_identifier) @class_reference
)

(import_statement
  (import_clause
    (identifier) @import_reference
  )
)

(export_statement
  (export_clause
    (identifier) @export_reference
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

(variable_declarator
  name: (identifier) @variable_declaration_reference
)

(parameter
  (identifier) @parameter_reference
)

(type_annotation
  (type_identifier) @type_reference
)

(comment) @comment_reference

(text) @text_reference

(interpolation
  (raw_text) @interpolation_text_reference
)

(vue_directive
  (identifier) @vue_directive_reference
)

(binding
  (identifier) @binding_reference
)

(slot
  (slot_name) @slot_reference
)

(ref
  (identifier) @ref_reference
)

(key
  (identifier) @key_reference
)

(transition
  (identifier) @transition_reference
)
