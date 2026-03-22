(class_declaration
  name: (identifier) @name
) @class

(interface_declaration
  name: (identifier) @name
) @interface

(enum_declaration
  name: (identifier) @name
) @enum

(method_declaration
  name: (identifier) @name
) @method

(constructor_declaration
  name: (identifier) @name
) @constructor

(field_declaration
  (variable_declarator
    name: (identifier) @name
  )
) @field

(local_variable_declaration
  (variable_declarator
    name: (identifier) @name
  )
) @variable

(formal_parameter
  name: (identifier) @name
) @parameter

(annotation_type_declaration
  name: (identifier) @name
) @annotation

(record_declaration
  name: (identifier) @name
) @record

(package_declaration
  (identifier) @name
) @package

(import_declaration
  (identifier) @name
) @import

(static_initializer
  (block) @static_block
)

; (instance_initializer
;   (block) @instance_block
; )
