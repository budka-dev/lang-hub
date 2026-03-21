(method
  name: (identifier) @name
) @method

(singleton_method
  name: (identifier) @name
) @singleton_method

(class
  name: (constant) @name
) @class

(class
  name: (scope_resolution
    (constant) @name
  )
) @class

(singleton_class
  value: (self)
) @singleton_class

(module
  name: (constant) @name
) @module

(module
  name: (scope_resolution
    (constant) @name
  )
) @module

(assignment
  left: (identifier) @name
) @variable

(assignment
  left: (instance_variable) @name
) @instance_variable

(assignment
  left: (class_variable) @name
) @class_variable

(assignment
  left: (global_variable) @name
) @global_variable

(assignment
  left: (constant) @name
) @constant

(alias
  name: (identifier) @name
) @alias

(block_parameter
  (identifier) @name
) @block_parameter

(block_parameters
  (identifier) @name
) @block_parameter

(method_parameters
  (identifier) @name
) @parameter

(optional_parameter
  name: (identifier) @name
) @optional_parameter

(keyword_parameter
  name: (identifier) @name
) @keyword_parameter

(rest_parameter
  name: (identifier) @name
) @rest_parameter

(block_parameter
  name: (identifier) @name
) @block_param

(require
  (string) @name
) @require

(require_relative
  (string) @name
) @require_relative

(include
  (constant) @name
) @include

(extend
  (constant) @name
) @extend

(prepend
  (constant) @name
) @prepend
