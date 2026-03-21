(function_declaration
  name: (identifier) @name
) @function

(method_declaration
  name: (field_identifier) @name
) @method

(type_declaration
  (type_spec
    name: (type_identifier) @name
  )
) @type

(var_declaration
  (var_spec
    name: (identifier) @name
  )
) @variable

(const_declaration
  (const_spec
    name: (identifier) @name
  )
) @constant

(import_declaration
  (import_spec
    name: (package_identifier) @name
  )
) @import

(import_declaration
  (import_spec
    path: (interpreted_string_literal) @name
  )
) @import

(package_clause
  (package_identifier) @name
) @package

(interface_type
  (method_elem
    name: (field_identifier) @name
  )
) @interface_method

(field_declaration
  name: (field_identifier) @name
) @field

(parameter_declaration
  name: (identifier) @name
) @parameter

(receiver
  name: (identifier) @name
) @receiver

(type_parameter_declaration
  (parameter_declaration
    name: (identifier) @name
  )
) @type_parameter

(label_statement
  (label_name) @name
) @label
