(method_invocation
  name: (identifier) @call
)

(method_invocation
  object: (identifier) @reference
)

; (super_method_invocation
;   name: (identifier) @call
; )

; (class_instance_creation_expression
;   (identifier) @call
; )

(field_access
  field: (identifier) @reference
)

(field_access
  object: (identifier) @reference
)

(array_access
  array: (identifier) @reference
)

(assignment_expression
  left: (identifier) @reference
)

(assignment_expression
  left: (field_access
    field: (identifier) @reference
  )
)

(variable_declarator
  name: (identifier) @reference
)

(formal_parameter
  name: (identifier) @reference
)

(import_declaration
  (identifier) @import_source
)

(import_declaration
  (asterisk) @import_source
)

; (static_import_declaration
;   (identifier) @import_source
; )

(type_identifier) @type_usage

(scoped_type_identifier) @type_usage

(generic_type
  (type_identifier) @type_usage
)

(annotated_type
  (type_identifier) @type_usage
)

(this) @reference

(super) @reference
