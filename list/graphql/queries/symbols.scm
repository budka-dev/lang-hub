(schema_definition) @schema

(type_definition
  (name) @name
) @type

(interface_definition
  (name) @name
) @interface

(enum_definition
  (name) @name
) @enum

(union_definition
  (name) @name
) @union

(scalar_type_definition
  (name) @name
) @scalar

(input_object_definition
  (name) @name
) @input_object

(directive_definition
  (name) @name
) @directive

(operation_definition
  (operation_type) @operation
  (name)? @name
) @operation_definition

(fragment_definition
  (fragment_name
    (name) @name
  )
) @fragment

(field_definition
  (name) @name
) @field

(input_value_definition
  (name) @name
) @input_value

(argument
  (name) @name
) @argument

(variable_definition
  (variable
    (name) @name
  )
) @variable

(selection_set
  (field
    (name) @name
  )
) @selection_field

(alias
  (name) @name
) @alias

(object_value
  (object_field
    (name) @name
  )
) @object_field

(list_value
  (value) @list_item
) @list_value

(enum_value
  (name) @name
) @enum_value

(int_value) @int_value

(float_value) @float_value

(string_value) @string_value

(boolean_value) @boolean_value

(null_value) @null_value
