(module
  (module_id) @name
) @module

(export
  (export_item) @export
) @export_list

(import
  (module_id) @name
) @import

(qualified_import
  (module_id) @name
) @qualified_import

(declaration
  (signature
    (variable) @name
  )
) @signature

(declaration
  (function
    (variable) @name
  )
) @function

(declaration
  (bind
    (variable) @name
  )
) @bind

(data_type
  (type) @name
) @data

(newtype
  (type) @name
) @newtype

(type_synonym
  (type) @name
) @type_synonym

(class
  (class_head
    (type) @name
  )
) @class

(instance
  (instance_head
    (type) @name
  )
) @instance

(derive_declaration
  (derive_head
    (type) @name
  )
) @derive

(foreign_import
  (call_convention) @convention
) @foreign_import

(foreign_export
  (call_convention) @convention
) @foreign_export

(pattern_synonym
  (pattern) @name
) @pattern_synonym

(type_family
  (type) @name
) @type_family

(data_family
  (type) @name
) @data_family

(type_role_declaration
  (type) @name
) @type_role

(default_declaration) @default

(fixity_declaration
  (infix) @fixity
) @fixity

(pragma) @pragma
