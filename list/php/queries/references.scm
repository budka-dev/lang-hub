(function_call_expression
  (name) @call
)

(function_call_expression
  (qualified_name) @call
)

(member_call_expression
  (name) @call
)

(nullsafe_member_call_expression
  (name) @call
)

; (static_member_call_expression
;   (name) @call
; )

(object_creation_expression
  (qualified_name) @call
)

(object_creation_expression
  (name) @call
)

(scoped_call_expression
  (name) @call
)

(scoped_call_expression
  (qualified_name) @call
)

(member_access_expression
  (name) @reference
)

; (member_access_expression
;   (dollar_variable) @reference
; )

(nullsafe_member_access_expression
  (name) @reference
)

; (static_member_access_expression
;   (name) @reference
; )

(scoped_property_access_expression
  (name) @reference
)

(scoped_property_access_expression
  (qualified_name) @reference
)

(assignment_expression
  left: (variable_name) @reference
)

; (assignment_expression
;   left: (dollar_variable) @reference
; )

(augmented_assignment_expression
  left: (variable_name) @reference
)

(variable_name) @variable_reference

; (dollar_variable) @variable_reference

(array_creation_expression) @array_reference

(subscript_expression) @subscript_reference

(qualified_name) @type_reference

(name) @name_reference

(namespace_name) @namespace_reference

(namespace_use_clause
  (qualified_name) @use_reference
)

(include_expression
  (string) @include_reference
)

(include_once_expression
  (string) @include_reference
)

(require_expression
  (string) @require_reference
)

(require_once_expression
  (string) @require_reference
)

(heredoc) @heredoc_reference

(nowdoc) @nowdoc_reference
