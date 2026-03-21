(rule_set
  (selectors
    (class_selector
      (class_name) @name
    )
  )
) @class

(rule_set
  (selectors
    (id_selector
      (id_name) @name
    )
  )
) @id

(rule_set
  (selectors
    (tag_name) @name
  )
) @element

(rule_set
  (selectors
    (nesting_selector)
  )
) @nested_rule

(rule_set
  (selectors
    (placeholder_selector
      (identifier) @name
    )
  )
) @placeholder

(mixin_statement
  (name) @name
) @mixin

(function_statement
  (name) @name
) @function

(variable_declaration
  (variable_name) @name
) @variable

(at_rule
  (at_keyword) @name
) @at_rule

(media_statement
  (at_keyword) @name
) @media

(keyframes_statement
  (at_keyword) @name
  (keyframes_name) @keyframes_name
) @keyframes

(supports_statement
  (at_keyword) @name
) @supports

(import_statement
  (string_value) @import_source
) @import

(use_statement
  (string_value) @use_source
) @use

(forward_statement
  (string_value) @forward_source
) @forward

(extend_statement
  (selector
    (class_selector
      (class_name) @name
    )
  )
) @extend

(extend_statement
  (selector
    (placeholder_selector
      (identifier) @name
    )
  )
) @extend_placeholder

(include_statement
  (name) @name
) @include

(declaration
  (property_name) @name
) @property

(function_name) @function_name

(color_value) @color

(integer_value) @number

(float_value) @number
