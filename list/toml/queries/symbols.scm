(document) @document

(table
  (bare_key) @name
) @table

(table
  (dotted_key) @name
) @dotted_table

(table_array_element
  (bare_key) @name
) @table_array

(table_array_element
  (dotted_key) @name
) @dotted_table_array

(pair
  (bare_key) @name
) @pair

(pair
  (quoted_key) @name
) @quoted_pair

(string) @string

(integer) @integer

(float) @float

(boolean) @boolean

(offset_date_time) @offset_date_time

(local_date_time) @local_date_time

(local_date) @local_date

(local_time) @local_time

(array) @array

(inline_table) @inline_table

(comment) @comment
