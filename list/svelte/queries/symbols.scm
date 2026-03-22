; (component
;   (element
;     (start_tag
;       (tag_name) @name
;     )
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

; (directive_attribute
;   (directive_name) @name
; ) @directive

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

; (expression
;   (identifier) @name
; ) @svelte_expression

; (each_statement
;   (identifier) @name
; ) @each_loop

; (if_statement
;   (identifier) @name
; ) @if_condition

(await_statement) @await_block

(key_statement) @key_block

; (html_statement) @html_block

; (debug_statement
;   (identifier) @name
; ) @debug

; (const_declaration
;   (identifier) @name
; ) @const

; (let_declaration
;   (identifier) @name
; ) @let
