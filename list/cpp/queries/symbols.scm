(function_definition
  declarator: (function_declarator
    declarator: (identifier) @name
  )
) @function

(function_definition
  declarator: (function_declarator
    declarator: (field_identifier) @name
  )
) @method

(function_definition
  declarator: (pointer_declarator
    declarator: (function_declarator
      declarator: (identifier) @name
    )
  )
) @function

(class_specifier
  name: (type_identifier) @name
) @class

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
    (field_identifier) @name
  )
) @field

(declaration
  (init_declarator
    declarator: (identifier) @name
  )
) @variable

(parameter_declaration
  (identifier) @name
) @parameter

(namespace_definition
  name: (identifier) @name
) @namespace

(using_declaration
  (identifier) @name
) @using

(template_declaration
  (function_definition
    declarator: (function_declarator
      declarator: (identifier) @name
    )
  )
) @template_function

(template_declaration
  (class_specifier
    name: (type_identifier) @name
  )
) @template_class

(concept_definition
  name: (identifier) @name
) @concept

(preproc_def
  name: (identifier) @name
) @macro

(preproc_function_def
  name: (identifier) @name
) @macro

(lambda_expression) @lambda
