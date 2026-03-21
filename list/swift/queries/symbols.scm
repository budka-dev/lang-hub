(class_declaration
  (type_identifier) @name
) @class

(struct_declaration
  (type_identifier) @name
) @struct

(enum_declaration
  (type_identifier) @name
) @enum

(protocol_declaration
  (type_identifier) @name
) @protocol

(extension_declaration
  (type_identifier) @name
) @extension

(actor_declaration
  (type_identifier) @name
) @actor

(function_declaration
  (identifier) @name
) @function

(initializer_declaration
  (init_keyword) @name
) @initializer

(deinitializer_declaration
  (deinit_keyword) @name
) @deinitializer

(subscript_declaration) @subscript

(property_declaration
  (pattern
    (simple_identifier) @name
  )
) @property

(variable_declaration
  (pattern
    (simple_identifier) @name
  )
) @variable

(constant_declaration
  (pattern
    (simple_identifier) @name
  )
) @constant

(import_declaration
  (identifier) @name
) @import

(associatedtype_declaration
  (type_identifier) @name
) @associatedtype

(typealias_declaration
  (type_identifier) @name
) @typealias

(precedence_group_declaration
  (identifier) @name
) @precedence_group

(operator_declaration
  (operator) @name
) @operator

(macro_declaration
  (identifier) @name
) @macro

(parameter
  (simple_identifier) @name
) @parameter

(generic_parameter
  (type_identifier) @name
) @generic_parameter
