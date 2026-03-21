(create_table
  (object_reference
    (identifier) @name
  )
) @table

(create_view
  (object_reference
    (identifier) @name
  )
) @view

(create_index
  (object_reference
    (identifier) @name
  )
) @index

(create_trigger
  (object_reference
    (identifier) @name
  )
) @trigger

(create_schema
  (identifier) @name
) @schema

(create_database
  (identifier) @name
) @database

(create_role
  (identifier) @name
) @role

(create_user
  (identifier) @name
) @user

(create_function
  (identifier) @name
) @function

(create_procedure
  (identifier) @name
) @procedure

(alter_table
  (object_reference
    (identifier) @name
  )
) @alter_table

(drop_table
  (object_reference
    (identifier) @name
  )
) @drop_table

(drop_view
  (object_reference
    (identifier) @name
  )
) @drop_view

(drop_index
  (object_reference
    (identifier) @name
  )
) @drop_index

(column_definition
  (identifier) @name
) @column

(constraint_definition
  (identifier) @name
) @constraint

(select_statement
  (from_clause
    (table_reference
      (identifier) @name
    )
  )
) @select_from

(insert_statement
  (table_reference
    (identifier) @name
  )
) @insert_into

(update_statement
  (table_reference
    (identifier) @name
  )
) @update

(delete_statement
  (table_reference
    (identifier) @name
  )
) @delete_from

(join_clause
  (table_reference
    (identifier) @name
  )
) @join

(alias
  (identifier) @name
) @alias

(cte
  (identifier) @name
) @cte

(window_definition
  (identifier) @name
) @window
