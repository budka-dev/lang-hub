(function_declaration
  name: (identifier) @name
) @function

; (function_declaration
;   name: (property_identifier) @name
; ) @function

(method_definition
  name: (property_identifier) @name
) @method

(class_declaration
  name: (type_identifier) @name
) @class

; (class_declaration
;   name: (identifier) @name
; ) @class

(interface_declaration
  name: (type_identifier) @name
) @interface

(type_alias_declaration
  name: (type_identifier) @name
) @type_alias

(enum_declaration
  name: (identifier) @name
) @enum

; (variable_declaration
;   (identifier) @name
; ) @variable

; (variable_declaration
;   (array_pattern
;     (identifier) @name
;   )
; ) @variable

; (variable_declaration
;   (object_pattern
;     (shorthand_property_identifier_pattern) @name
;   )
; ) @variable

(import_clause
  (identifier) @name
) @import

(import_clause
  (named_imports
    (import_specifier
      name: (identifier) @name
    )
  )
) @import

(namespace_import
  (identifier) @name
) @import

(export_statement
  (function_declaration
    name: (identifier) @name
  )
) @export

; (export_statement
;   (class_declaration
;     name: (identifier) @name
;   )
; ) @export

(export_statement
  (lexical_declaration
    (variable_declarator
      name: (identifier) @name
    )
  )
) @export
