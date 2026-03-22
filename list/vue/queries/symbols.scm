; (component
;   (start_tag
;     (tag_name) @name
;   )
; ) @component

(script_element
  (start_tag
    (tag_name) @name
  )
) @script

(style_element
  (start_tag
    (tag_name) @name
  )
) @style

(template_element
  (start_tag
    (tag_name) @name
  )
) @template

(element
  (start_tag
    (tag_name) @name
  )
) @element

(element
  (self_closing_tag
    (tag_name) @name
  )
) @self_closing_element

(attribute
  (attribute_name) @name
) @attribute

(directive_attribute
  (directive_name) @name
) @directive

; (directive_attribute
;   (directive_argument) @name
; ) @directive_argument

; (expression_statement
;   (identifier) @name
; ) @expression

; (assignment_expression
;   left: (identifier) @name
; ) @variable

; (function_declaration
;   (identifier) @name
; ) @function

; (method_definition
;   (property_name) @name
; ) @method

; (class_declaration
;   (type_identifier) @name
; ) @class

; (import_statement
;   (import_clause
;     (identifier) @name
;   )
; ) @import

; (export_statement
;   (export_clause
;     (identifier) @name
;   )
; ) @export

(comment) @comment

(text) @text

(interpolation
  (raw_text) @interpolation_text
) @interpolation

; (vue_directive
;   (identifier) @directive_name
; ) @vue_directive

; (binding
;   (identifier) @binding_name
; ) @binding

; (slot
;   (slot_name) @name
; ) @slot

; (ref
;   (identifier) @name
; ) @ref

; (key
;   (identifier) @name
; ) @key

; (transition
;   (identifier) @name
; ) @transition

; (keep_alive) @keep_alive

; (teleport
;   (identifier) @name
; ) @teleport

; (suspense) @suspense
