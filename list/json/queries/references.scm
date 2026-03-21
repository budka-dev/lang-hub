(pair
  key: (string
    (string_content) @key_reference
  )
)

(pair
  value: (string
    (string_content) @string_reference
  )
)

(pair
  value: (number) @number_reference
)

(pair
  value: (true) @boolean_reference
)

(pair
  value: (false) @boolean_reference
)

(pair
  value: (null) @null_reference
)

(pair
  value: (object) @object_reference
)

(pair
  value: (array) @array_reference
)

(string
  (string_content) @string_content
)

(number) @number_content

(object) @object_content

(array) @array_content

(array
  (string
    (string_content) @array_string_reference
  )
)

(array
  (number) @array_number_reference
)

(array
  (object) @array_object_reference
)

(array
  (array) @array_nested_reference
)

(comment) @comment_reference

(ERROR) @error_reference
