(class_declaration
  (simple_identifier) @name
) @class

(object_declaration
  (simple_identifier) @name
) @object

(companion_object
  (simple_identifier) @name
) @companion_object

(interface_declaration
  (simple_identifier) @name
) @interface

(function_declaration
  (simple_identifier) @name
) @function

(property_declaration
  (variable_declaration
    (simple_identifier) @name
  )
) @property

(variable_declaration
  (simple_identifier) @name
) @variable

(parameter
  (simple_identifier) @name
) @parameter

(type_parameter
  (type_identifier) @name
) @type_parameter

(constructor_declaration
  (simple_identifier) @name
) @constructor

(init_block) @init_block

(enum_class_declaration
  (simple_identifier) @name
) @enum_class

(enum_entry
  (simple_identifier) @name
) @enum_entry

(sealed_class_declaration
  (simple_identifier) @name
) @sealed_class

(data_class_declaration
  (simple_identifier) @name
) @data_class

(annotation_class_declaration
  (simple_identifier) @name
) @annotation_class

(type_alias
  (type_identifier) @name
) @type_alias

(import_header
  (identifier) @name
) @import

(package_header
  (identifier) @name
) @package

(anonymous_function) @anonymous_function

(lambda_literal) @lambda

(getter
  (simple_identifier) @name
) @getter

(setter
  (simple_identifier) @name
) @setter
