(function_definition
  name: (identifier) @name
) @function

(class_definition
  name: (identifier) @name
) @class

(assignment
  left: (identifier) @name
) @variable

(assignment
  left: (pattern_list
    (identifier) @name
  )
) @variable

(assignment
  left: (tuple_pattern
    (identifier) @name
  )
) @variable

(typed_parameter
  (identifier) @name
) @parameter

(default_parameter
  (identifier) @name
) @parameter

(typed_default_parameter
  (identifier) @name
) @parameter

(list_splat_pattern
  (identifier) @name
) @parameter

(dictionary_splat_pattern
  (identifier) @name
) @parameter

(lambda
  (lambda_parameters
    (identifier) @name
  )
) @parameter

(decorated_definition
  (function_definition
    name: (identifier) @name
  )
) @function

(decorated_definition
  (class_definition
    name: (identifier) @name
  )
) @class

(import_statement
  (dotted_name
    (identifier) @name
  )
) @import

(import_from_statement
  (dotted_name
    (identifier) @name
  )
) @import

(alias
  name: (identifier) @name
) @import

(aliased_import
  name: (dotted_name
    (identifier) @name
  )
) @import
