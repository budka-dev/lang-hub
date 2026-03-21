(function_declaration
  (identifier) @name
) @function

(local_function
  (identifier) @name
) @local_function

(function_definition) @anonymous_function

(variable_declaration
  (variable_declarator
    (identifier) @name
  )
) @variable

(local_variable_declaration
  (variable_declarator
    (identifier) @name
  )
) @local_variable

(assignment_statement
  (variable_list
    (identifier) @name
  )
) @assignment

(for_statement
  (identifier) @name
) @for_variable

(for_in_statement
  (identifier) @name
) @for_in_variable

(parameter
  (identifier) @name
) @parameter

(spread) @spread

(table_constructor
  (field
    (identifier) @name
  )
) @table_field

(table_constructor
  (field
    (string) @name
  )
) @table_string_field

(method_index_expression
  (identifier) @method_name
) @method_index

(function_call
  (identifier) @call
) @function_call

(function_call
  (method_index_expression) @method_call
) @method_call

(require_call
  (string) @require_source
) @require

(do_statement) @do_block

(while_statement) @while

(repeat_statement) @repeat

(if_statement) @if

(numeric_for_statement) @numeric_for

(generic_for_statement) @generic_for

(label_statement
  (label) @name
) @label

(goto_statement
  (label) @name
) @goto
