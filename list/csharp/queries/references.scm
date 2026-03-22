(invocation_expression
  (identifier) @call
)

(invocation_expression
  (member_access_expression
    name: (identifier) @call
  )
)

(object_creation_expression
  (identifier) @call
)

(object_creation_expression
  (qualified_name) @call
)

(member_access_expression
  expression: (identifier) @reference
)

(member_access_expression
  name: (identifier) @reference
)

(element_access_expression
  (identifier) @reference
)

(assignment_expression
  left: (identifier) @reference
)

(assignment_expression
  left: (member_access_expression
    name: (identifier) @reference
  )
)

(assignment_expression
  left: (element_access_expression
    (identifier) @reference
  )
)

(variable_declarator
  name: (identifier) @reference
)

(parameter
  name: (identifier) @reference
)

(binary_expression
  left: (identifier) @reference
)

(binary_expression
  right: (identifier) @reference
)

(prefix_unary_expression
  (identifier) @reference
)

(postfix_unary_expression
  (identifier) @reference
)

(conditional_expression
  condition: (identifier) @reference
)

(if_statement
  condition: (identifier) @reference
)

(while_statement
  condition: (identifier) @reference
)

(for_statement
  (identifier) @reference
)

(foreach_statement
  (identifier) @reference
)

(switch_statement
  (identifier) @reference
)

(using_directive
  (qualified_name) @import_source
)

; (using_static_directive
;   (qualified_name) @import_source
; )

(type_argument_list
  (type) @type_usage
)

(predefined_type) @type_usage

(type) @type_usage

; (this_expression) @reference

; (base_expression) @reference
