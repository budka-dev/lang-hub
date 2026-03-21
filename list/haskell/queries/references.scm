(variable) @variable_reference

(constructor) @constructor_reference

(type) @type_reference

(module_id) @module_reference

(qualified_module
  (module_id) @qualified_module_reference
)

(import
  (module_id) @import_reference
)

(qualified_import
  (module_id) @import_reference
)

(import_item
  (import_name) @import_item_reference
)

(export_item
  (export_name) @export_reference
)

(exp_name
  (qualified_variable
    (variable) @reference
  )
)

(exp_name
  (qualified_constructor
    (constructor) @reference
  )
)

(exp_apply
  (exp_name) @apply_reference
)

(exp_infix
  (exp_name) @infix_reference
)

(exp_lambda) @lambda_reference

(exp_let
  (declaration) @let_declaration_reference
)

(exp_if) @if_reference

(exp_case) @case_reference

(exp_do) @do_reference

(exp_list
  (exp) @list_element_reference
)

(exp_tuple
  (exp) @tuple_element_reference
)

(exp_record
  (field_update
    (field) @field_update_reference
  )
)

(exp_arithmetic_sequence) @arithmetic_sequence_reference

(exp_section_left) @section_left_reference

(exp_section_right) @section_right_reference

(type_apply
  (type) @type_apply_reference
)

(type_infix
  (type) @type_infix_reference
)

(constraint
  (type) @constraint_reference
)

(context
  (constraint) @context_constraint_reference
)

(deriving
  (type) @deriving_reference
)

(via_deriving
  (type) @via_deriving_reference
)

(pattern
  (pattern_name) @pattern_reference
)

(pat_wildcard) @wildcard_reference

(pat_literal) @literal_reference

(pat_list
  (pattern) @list_pattern_reference
)

(pat_tuple
  (pattern) @tuple_pattern_reference
)

(pat_record
  (field_pattern
    (field_name) @field_pattern_reference
  )
)

(pat_infix) @infix_pattern_reference

(pat_nested) @nested_pattern_reference
