(function_declaration
  (identifier) @name
) @function

(variable_declaration
  (identifier) @name
) @variable

(const_declaration
  (identifier) @name
) @constant

(parameter_declaration
  (identifier) @name
) @parameter

(struct_declaration
  (identifier) @name
) @struct

(enum_declaration
  (identifier) @name
) @enum

(union_declaration
  (identifier) @name
) @union

(error_set_declaration
  (identifier) @name
) @error_set

(test_declaration
  (string) @name
) @test

(comptime_declaration
  (identifier) @name
) @comptime_var

(usingnamespace_declaration
  (identifier) @name
) @usingnamespace

(container_field
  (identifier) @name
) @field

(pointer_declaration
  (identifier) @name
) @pointer

(array_declaration
  (identifier) @name
) @array

(slice_declaration
  (identifier) @name
) @slice

(option_declaration
  (identifier) @name
) @option

(error_union_declaration
  (identifier) @name
) @error_union

(fn_proto
  (identifier) @name
) @function_proto

(builtin_function
  (identifier) @name
) @builtin
