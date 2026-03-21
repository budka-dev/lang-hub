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
    (attribute_selector
      (attribute_name) @name
    )
  )
) @attribute_selector

(rule_set
  (selectors
    (pseudo_class_selector
      (class_name) @name
    )
  )
) @pseudo_class

(rule_set
  (selectors
    (pseudo_element_selector
      (tag_name) @name
    )
  )
) @pseudo_element

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

(namespace_statement
  (string_value) @namespace_source
) @namespace

(declaration
  (property_name) @name
) @property

(variable_declaration
  (variable_name) @name
) @variable

(function_name) @function

(color_value) @color

(integer_value) @number

(float_value) @number
