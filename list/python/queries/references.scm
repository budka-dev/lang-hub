(call
  function: (identifier) @call
)

(call
  function: (attribute
    attribute: (identifier) @call
  )
)

; (call
;   function: (qualified_expression
;     (identifier) @call
;   )
; )

(attribute
  object: (identifier) @reference
)

(attribute
  attribute: (identifier) @reference
)

(subscript
  value: (identifier) @reference
)

(assignment
  left: (identifier) @reference
)

(augmented_assignment
  left: (identifier) @reference
)

(for_statement
  left: (identifier) @reference
)

(for_statement
  left: (pattern_list
    (identifier) @reference
  )
)

(for_statement
  left: (tuple_pattern
    (identifier) @reference
  )
)

(with_statement
  (with_clause
    (with_item
      (identifier) @reference
    )
  )
)

(with_statement
  (with_clause
    (with_item
      (as_pattern
        (identifier) @reference
      )
    )
  )
)

(import_statement
  (dotted_name) @import_source
)

(import_from_statement
  module_name: (dotted_name) @import_source
)

(import_from_statement
  module_name: (relative_import) @import_source
)

(type) @type_usage
