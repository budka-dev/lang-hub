(class_selector
  (class_name) @reference
)

(id_selector
  (id_name) @reference
)

(tag_name) @reference

; (placeholder_selector
;   (identifier) @reference
; )

(nesting_selector) @nesting_reference

(property_name) @reference

; (variable_name) @reference

(function_name) @reference

(feature_name) @reference

(keyframes_name) @reference

(namespace_name) @reference

; (selector
;   (class_selector
;     (class_name) @reference
;   )
; )

; (selector
;   (id_selector
;     (id_name) @reference
;   )
; )

; (selector
;   (placeholder_selector
;     (identifier) @reference
;   )
; )

(call_expression
  (function_name) @reference
)

; (var_expression
;   (variable_name) @reference
; )

; (include_statement
;   (name) @reference
; )

; (extend_statement
;   (selector
;     (class_selector
;       (class_name) @reference
;     )
;   )
; )

; (extend_statement
;   (selector
;     (placeholder_selector
;       (identifier) @reference
;     )
;   )
; )

; (url_image
;   (string_value) @url_source
; )

; (url_fn
;   (string_value) @url_source
; )

(import_statement
  (string_value) @import_source
)

(use_statement
  (string_value) @use_source
)

(forward_statement
  (string_value) @forward_source
)

(color_value) @color_reference

(integer_value) @number_reference

(float_value) @number_reference

(string_value) @string_reference
