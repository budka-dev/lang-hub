(class_selector
  (class_name) @reference
)

(id_selector
  (id_name) @reference
)

(tag_name) @reference

(attribute_name) @reference

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
;   (attribute_selector
;     (attribute_name) @reference
;   )
; )

(call_expression
  (function_name) @reference
)

; (var_expression
;   (variable_name) @reference
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

(namespace_statement
  (string_value) @namespace_source
)

(color_value) @color_reference

(integer_value) @number_reference

(float_value) @number_reference

(string_value) @string_reference
