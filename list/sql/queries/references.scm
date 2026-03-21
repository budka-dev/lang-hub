(object_reference
  (identifier) @table_reference
)

(table_reference
  (identifier) @table_reference
)

(column_reference
  (identifier) @column_reference
)

(function_call
  (identifier) @function_reference
)

(procedure_call
  (identifier) @procedure_reference
)

(alias
  (identifier) @alias_reference
)

(cte
  (identifier) @cte_reference
)

(window_definition
  (identifier) @window_reference
)

(select_statement
  (select_clause
    (select_expression) @select_expression_reference
  )
)

(select_statement
  (from_clause
    (table_reference
      (identifier) @from_table_reference
    )
  )
)

(select_statement
  (where_clause
    (expression) @where_expression_reference
  )
)

(select_statement
  (group_by_clause
    (expression) @group_by_expression_reference
  )
)

(select_statement
  (order_by_clause
    (order_by_expression
      (expression) @order_by_expression_reference
    )
  )
)

(insert_statement
  (table_reference
    (identifier) @insert_table_reference
  )
)

(update_statement
  (table_reference
    (identifier) @update_table_reference
  )
)

(delete_statement
  (table_reference
    (identifier) @delete_table_reference
  )
)

(join_clause
  (table_reference
    (identifier) @join_table_reference
  )
)

(subquery
  (select_statement) @subquery_reference
)

(case_expression) @case_reference

(between_expression) @between_reference

(in_expression) @in_reference

(exists_expression) @exists_reference

(having_clause
  (expression) @having_expression_reference
)

(limit_clause
  (expression) @limit_expression_reference
)

(offset_clause
  (expression) @offset_expression_reference
)
