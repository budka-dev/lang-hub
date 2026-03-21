(table
  (bare_key) @table_reference
)

(table
  (dotted_key) @table_reference
)

(table_array_element
  (bare_key) @table_array_reference
)

(table_array_element
  (dotted_key) @table_array_reference
)

(pair
  (bare_key) @key_reference
)

(pair
  (quoted_key) @key_reference
)

(pair
  (string) @string_reference
)

(pair
  (integer) @integer_reference
)

(pair
  (float) @float_reference
)

(pair
  (boolean) @boolean_reference
)

(pair
  (offset_date_time) @datetime_reference
)

(pair
  (local_date_time) @datetime_reference
)

(pair
  (local_date) @date_reference
)

(pair
  (local_time) @time_reference
)

(pair
  (array) @array_reference
)

(pair
  (inline_table) @inline_table_reference
)

(array
  (string) @array_string_reference
)

(array
  (integer) @array_integer_reference
)

(array
  (float) @array_float_reference
)

(array
  (boolean) @array_boolean_reference
)

(inline_table
  (pair) @inline_pair_reference
)

(comment) @comment_reference
