(function_declaration
  name: (identifier) @name
) @function

(function_declaration
  name: (property_identifier) @name
) @function

(method_definition
  name: (property_identifier) @name
) @method

(class_declaration
  name: (type_identifier) @name
) @class

(interface_declaration
  name: (type_identifier) @name
) @interface

(type_alias_declaration
  name: (type_identifier) @name
) @type_alias

(enum_declaration
  name: (identifier) @name
) @enum

(variable_declaration
  (variable_declarator
    name: (identifier) @name
  )
) @variable

(import_clause
  (identifier) @name
) @import

(import_clause
  (named_imports
    (import_specifier
      name: (identifier) @name
    )
  )
) @import

(namespace_import
  (identifier) @name
) @import

(export_statement
  (function_declaration
    name: (identifier) @name
  )
) @export

(export_statement
  (class_declaration
    name: (identifier) @name
  )
) @export

(export_statement
  (lexical_declaration
    (variable_declarator
      name: (identifier) @name
    )
  )
) @export

(jsx_element
  open_tag: (jsx_opening_element
    name: (identifier) @name
  )
) @component

(jsx_self_closing_element
  name: (identifier) @name
) @self_closing_component

(jsx_attribute
  name: (property_identifier) @name
) @prop

(hook_declaration
  (identifier) @name
) @hook

(context_declaration
  (identifier) @name
) @context

(reducer_declaration
  (identifier) @name
) @reducer

(effects_hook
  (identifier) @name
) @effect

(state_hook
  (identifier) @name
) @state

(ref_hook
  (identifier) @name
) @ref

(memo_hook
  (identifier) @name
) @memo

(callback_hook
  (identifier) @name
) @callback

(custom_hook
  (identifier) @name
) @custom_hook
