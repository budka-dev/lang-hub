(document
  (object) @root_object
)

(document
  (array) @root_array
)

(pair
  key: (string
    (string_content) @name
  )
) @property

(object
  (pair
    key: (string
      (string_content) @name
    )
  )
) @object_property

(array
  (object) @array_object
)

(array
  (array) @nested_array
)

(array
  (string) @array_string
)

(array
  (number) @array_number
)

(array
  (true) @array_boolean
)

(array
  (false) @array_boolean
)

(array
  (null) @array_null
)

(string
  (string_content) @string_value
) @string

(number) @number_value

(true) @boolean_true

(false) @boolean_false

(null) @null_value

(comment) @comment

(ERROR) @error
