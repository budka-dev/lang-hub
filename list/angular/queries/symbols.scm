(class_declaration
  (decorator
    (call_expression
      function: (identifier) @component_decorator
      (#eq? @component_decorator "Component")
    )
  )
  name: (type_identifier) @name
) @component

(class_declaration
  (decorator
    (call_expression
      function: (identifier) @directive_decorator
      (#eq? @directive_decorator "Directive")
    )
  )
  name: (type_identifier) @name
) @directive

(class_declaration
  (decorator
    (call_expression
      function: (identifier) @pipe_decorator
      (#eq? @pipe_decorator "Pipe")
    )
  )
  name: (type_identifier) @name
) @pipe

(class_declaration
  (decorator
    (call_expression
      function: (identifier) @injectable_decorator
      (#eq? @injectable_decorator "Injectable")
    )
  )
  name: (type_identifier) @name
) @service

(class_declaration
  (decorator
    (call_expression
      function: (identifier) @module_decorator
      (#eq? @module_decorator "NgModule")
    )
  )
  name: (type_identifier) @name
) @module

(method_definition
  (decorator
    (call_expression
      function: (identifier) @host_listener_decorator
      (#eq? @host_listener_decorator "HostListener")
    )
  )
  name: (property_identifier) @name
) @host_listener

(method_definition
  (decorator
    (call_expression
      function: (identifier) @output_decorator
      (#eq? @output_decorator "Output")
    )
  )
  name: (property_identifier) @name
) @output

(public_field_definition
  (decorator
    (call_expression
      function: (identifier) @input_decorator
      (#eq? @input_decorator "Input")
    )
  )
  name: (property_identifier) @name
) @input

(public_field_definition
  (decorator
    (call_expression
      function: (identifier) @view_child_decorator
      (#eq? @view_child_decorator "ViewChild")
    )
  )
  name: (property_identifier) @name
) @view_child

(public_field_definition
  (decorator
    (call_expression
      function: (identifier) @content_child_decorator
      (#eq? @content_child_decorator "ContentChild")
    )
  )
  name: (property_identifier) @name
) @content_child

(function_declaration
  name: (identifier) @name
) @function

(variable_declaration
  (variable_declarator
    name: (identifier) @name
  )
) @variable

(import_clause
  (named_imports
    (import_specifier
      name: (identifier) @name
    )
  )
) @import

(export_statement
  (class_declaration
    name: (type_identifier) @name
  )
) @export

