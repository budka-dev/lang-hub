(doctype) @doctype

(element
  (start_tag
    (tag_name) @name
  )
) @element

(element
  (self_closing_tag
    (tag_name) @name
  )
) @self_closing_element

(script_element
  (start_tag
    (tag_name) @name
  )
) @script

(style_element
  (start_tag
    (tag_name) @name
  )
) @style

(template_element
  (start_tag
    (tag_name) @name
  )
) @template

(start_tag
  (attribute
    (attribute_name) @name
  )
) @attribute

(self_closing_tag
  (attribute
    (attribute_name) @name
  )
) @attribute

(attribute
  (quoted_attribute_value
    (attribute_value) @value
  )
) @attribute_value

(attribute
  (attribute_name) @id_name
  (quoted_attribute_value
    (attribute_value) @id_value
  )
  (#eq? @id_name "id")
) @id_attribute

(attribute
  (attribute_name) @class_name
  (quoted_attribute_value
    (attribute_value) @class_value
  )
  (#eq? @class_name "class")
) @class_attribute

(comment) @comment

(text) @text

(erroneous_end_tag
  (erroneous_end_tag_name) @name
) @error_tag
