(function_definition
  declarator: (function_declarator
    declarator: (identifier) @name
  )
) @function

(function_definition
  declarator: (pointer_declarator
    declarator: (function_declarator
      declarator: (identifier) @name
    )
  )
) @function

(declaration
  (init_declarator
    declarator: (identifier) @name
  )
) @variable

(declaration
  (init_declarator
    declarator: (array_declarator
      declarator: (identifier) @name
    )
  )
) @variable

(struct_specifier
  name: (type_identifier) @name
) @struct

(union_specifier
  name: (type_identifier) @name
) @union

(enum_specifier
  name: (type_identifier) @name
) @enum

(type_definition
  declarator: (type_identifier) @name
) @typedef

(field_declaration
  (field_declarator
    (identifier) @name
  )
) @field

(parameter_declaration
  (identifier) @name
) @parameter

(parameter_declaration
  (pointer_declarator
    (identifier) @name
  )
) @parameter

(parameter_declaration
  (array_declarator
    (identifier) @name
  )
) @parameter

(preproc_def
  name: (identifier) @name
) @macro

(preproc_function_def
  name: (identifier) @name
) @macro
