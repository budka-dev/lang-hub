(start_tag
  (tag_name) @reference
)

(end_tag
  (tag_name) @reference
)

(self_closing_tag
  (tag_name) @reference
)

(attribute_name) @reference

(attribute_value) @reference

(quoted_attribute_value
  (attribute_value) @reference
)

(unquoted_attribute_value) @reference

(element
  (start_tag
    (tag_name) @element_reference
  )
)

(script_element
  (start_tag
    (tag_name) @script_reference
  )
)

(style_element
  (start_tag
    (tag_name) @style_reference
  )
)

(template_element
  (start_tag
    (tag_name) @template_reference
  )
)

(doctype) @doctype_reference

(comment) @comment_reference

(text) @text_reference

(erroneous_end_tag
  (erroneous_end_tag_name) @error_reference
)

(attribute
  (attribute_name) @href_name
  (quoted_attribute_value
    (attribute_value) @href_value
  )
  (#match? @href_name "^(href|src|action|formaction|cite|data|poster|srcset)$")
) @url_attribute

(attribute
  (attribute_name) @link_name
  (quoted_attribute_value
    (attribute_value) @link_value
  )
  (#match? @link_name "^(rel|type|media|target)$")
) @link_attribute
