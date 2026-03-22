; (type_definition
;   (name) @type_reference
; )

; (interface_definition
;   (name) @interface_reference
; )

; (enum_definition
;   (name) @enum_reference
; )

; (union_definition
;   (name) @union_reference
; )

(scalar_type_definition
  (name) @scalar_reference
)

; (input_object_definition
;   (name) @input_object_reference
; )

(directive_definition
  (name) @directive_reference
)

(field_definition
  (name) @field_reference
)

(input_value_definition
  (name) @input_value_reference
)

(argument
  (name) @argument_reference
)

(variable_definition
  (variable
    (name) @variable_reference
  )
)

; (selection_set
;   (field
;     (name) @field_selection_reference
;   )
; )

(alias
  (name) @alias_reference
)

(object_value
  (object_field
    (name) @object_field_reference
  )
)

(enum_value
  (name) @enum_value_reference
)

(fragment_spread
  (fragment_name
    (name) @fragment_spread_reference
  )
)

(inline_fragment) @inline_fragment_reference

(named_type
  (name) @named_type_reference
)

(list_type) @list_type_reference

(non_null_type) @non_null_type_reference

(directive
  (name) @directive_usage_reference
)

(operation_definition
  (name) @operation_name_reference
)

(fragment_definition
  (fragment_name
    (name) @fragment_name_reference
  )
)

(variable
  (name) @variable_usage_reference
)

(int_value) @int_reference

(float_value) @float_reference

(string_value) @string_reference

(boolean_value) @boolean_reference

(null_value) @null_reference
