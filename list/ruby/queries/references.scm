(call
  method: (identifier) @call
)

(call
  method: (constant) @call
)

(call
  receiver: (identifier) @reference
)

(call
  receiver: (instance_variable) @reference
)

(call
  receiver: (class_variable) @reference
)

(call
  receiver: (global_variable) @reference
)

(call
  receiver: (constant) @reference
)

; (method_call
;   method: (identifier) @call
; )

(assignment
  left: (identifier) @reference
)

(assignment
  left: (instance_variable) @reference
)

(assignment
  left: (class_variable) @reference
)

(assignment
  left: (global_variable) @reference
)

(assignment
  left: (constant) @reference
)

(assignment
  right: (identifier) @reference
)

(assignment
  right: (constant) @reference
)

(binary
  left: (identifier) @reference
)

(binary
  right: (identifier) @reference
)

(unary
  (identifier) @reference
)

(conditional
  condition: (identifier) @reference
)

(if
  condition: (identifier) @reference
)

(while
  condition: (identifier) @reference
)

(until
  condition: (identifier) @reference
)

(for
  (identifier) @reference
)

(case
  (identifier) @reference
)

; (when
;   (identifier) @reference
; )

(array
  (identifier) @reference
)

; (hash
;   (identifier) @reference
; )

; (block
;   (identifier) @reference
; )

; (do_block
;   (identifier) @reference
; )

(self) @reference

(super) @reference

; (zsuper) @reference

; (require
;   (string) @import_source
; )

; (require_relative
;   (string) @import_source
; )

(constant) @type_usage
