(call
  target: (identifier) @def_name
  (arguments
    (call
      target: (identifier) @name
    )
  )
  (#match? @def_name "^(def|defp|defmacro|defmacrop|defguard|defguardp|defdelegate|defcallback|defmacrocallback|defoptional_callback|defimpl|defprotocol|defstruct|defexception|defmodule)$")
) @definition

(defmodule
  (alias) @name
) @module

(defprotocol
  (alias) @name
) @protocol

(defimpl
  (alias) @name
) @impl

(alias) @alias

(call
  target: (identifier) @require_name
  (arguments
    (alias) @name
  )
  (#eq? @require_name "require")
) @require

(call
  target: (identifier) @import_name
  (arguments
    (alias) @name
  )
  (#eq? @import_name "import")
) @import

(call
  target: (identifier) @use_name
  (arguments
    (alias) @name
  )
  (#eq? @use_name "use")
) @use

(call
  target: (identifier) @alias_name
  (arguments
    (alias) @name
  )
  (#eq? @alias_name "alias")
) @alias_directive

(function_identifier) @function_name

(variable) @variable

(unary_operator
  operator: "@"
  operand: (identifier) @name
) @module_attribute

(unary_operator
  operator: "&"
  operand: (integer) @capture
) @capture_operator

(binary_operator
  operator: "|>"
) @pipe

(binary_operator
  operator: "<-"
) @match

(binary_operator
  operator: "=~"
) @regex_match

(list) @list

(tuple) @tuple

(map) @map

(struct) @struct

(sigil) @sigil

(string) @string

(heredoc) @heredoc

(atom) @atom

(keyword_list) @keyword_list

(boolean) @boolean

(nil) @nil

(integer) @integer

(float) @float

(comment) @comment

(unary_operator
  operator: "_"
) @unused
