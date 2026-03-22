(class_declaration
  name: (identifier) @name
) @class

(interface_declaration
  name: (identifier) @name
) @interface

(struct_declaration
  name: (identifier) @name
) @struct

(enum_declaration
  name: (identifier) @name
) @enum

(delegate_declaration
  name: (identifier) @name
) @delegate

(record_declaration
  name: (identifier) @name
) @record

; (record_struct_declaration
;   name: (identifier) @name
; ) @record_struct

(method_declaration
  name: (identifier) @name
) @method

(constructor_declaration
  name: (identifier) @name
) @constructor

(destructor_declaration
  name: (identifier) @name
) @destructor

(property_declaration
  name: (identifier) @name
) @property

(indexer_declaration
  (bracketed_parameter_list) @name
) @indexer

; (field_declaration
;   (variable_declarator
;     name: (identifier) @name
;   )
; ) @field

(event_declaration
  name: (identifier) @name
) @event

; (event_field_declaration
;   (variable_declarator
;     name: (identifier) @name
;   )
; ) @event_field

(local_declaration_statement
  (variable_declaration
    (variable_declarator
      name: (identifier) @name
    )
  )
) @variable

(parameter
  name: (identifier) @name
) @parameter

(type_parameter
  name: (identifier) @name
) @type_parameter

(namespace_declaration
  name: (qualified_name) @name
) @namespace

(using_directive
  (qualified_name) @name
) @using

(attribute
  name: (identifier) @name
) @attribute

; (operator_declaration
;   (overloadable_operator) @name
; ) @operator

(conversion_operator_declaration
  (type) @name
) @conversion_operator

(local_function_statement
  name: (identifier) @name
) @local_function
