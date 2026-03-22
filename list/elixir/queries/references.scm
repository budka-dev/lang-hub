(identifier) @identifier_reference

(call
  target: (identifier) @call_reference
)

(call
  target: (dot
    right: (identifier) @method_call_reference
  )
)

(dot
  left: (identifier) @dot_left_reference
)

(dot
  right: (identifier) @dot_right_reference
)

; (variable) @variable_reference

(alias) @alias_reference

; (function_identifier) @function_reference

(arguments
  (identifier) @argument_reference
)

; (arguments
;   (variable) @argument_variable_reference
; )

(arguments
  (call) @argument_call_reference
)

(binary_operator
  left: (identifier) @binary_left_reference
)

(binary_operator
  right: (identifier) @binary_right_reference
)

(unary_operator
  operand: (identifier) @unary_operand_reference
)

; (unary_operator
;   operand: (variable) @unary_variable_reference
; )

(access_call
  (identifier) @access_reference
)

(anonymous_function
  (stab_clause
    (arguments
      (identifier) @anon_argument_reference
    )
  )
)

(block
  (identifier) @block_reference
)

(do_block
  (identifier) @do_block_reference
)

(list
  (identifier) @list_element_reference
)

(tuple
  (identifier) @tuple_element_reference
)

; (map
;   (identifier) @map_element_reference
; )

(struct
  (alias) @struct_reference
)

(sigil
  (sigil_name) @sigil_reference
)

(string
  (interpolation
    (identifier) @interpolation_reference
  )
)

; (heredoc
;   (interpolation
;     (identifier) @heredoc_interpolation_reference
;   )
; )

(atom) @atom_reference

; (keyword
;   (keyword_key) @keyword_key_reference
; )

; (require
;   (alias) @require_reference
; )

; (import
;   (alias) @import_reference
; )

; (alias_directive
;   (alias) @alias_directive_reference
; )

; (use_directive
;   (alias) @use_reference
; )
