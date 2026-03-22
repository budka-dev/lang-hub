(php_tag) @php_tag

(namespace_definition
  (namespace_name) @name
) @namespace

(namespace_use_declaration
  (namespace_use_clause
    (qualified_name) @name
  )
) @use

(class_declaration
  (name) @name
) @class

(interface_declaration
  (name) @name
) @interface

(trait_declaration
  (name) @name
) @trait

(enum_declaration
  (name) @name
) @enum

(function_definition
  (name) @name
) @function

(method_declaration
  (name) @name
) @method

(property_declaration
  (property_element
    (variable_name) @name
  )
) @property

(const_declaration
  (const_element
    (name) @name
  )
) @constant

; (class_const_declaration
;   (const_element
;     (name) @name
;   )
; ) @class_constant

; (constructor_declaration
;   (name) @name
; ) @constructor

; (destructor_declaration
;   (name) @name
; ) @destructor

; (anonymous_function_creation_expression) @anonymous_function

(arrow_function) @arrow_function

(global_declaration
  (variable_name) @name
) @global

; (static_declaration
;   (variable_name) @name
; ) @static

; (parameter
;   (variable_name) @name
; ) @parameter

; (typed_parameter
;   (variable_name) @name
; ) @typed_parameter

(attribute
  (qualified_name) @name
) @attribute

(attribute_group
  (attribute) @attribute
) @attribute_group
