(from_instruction
  (image_spec
    (image_name) @image_reference
  )
)

(from_instruction
  (image_spec
    (image_tag) @tag_reference
  )
)

(from_instruction
  (image_alias) @alias_reference
)

(run_instruction
  (shell_command) @run_command_reference
)

(run_instruction
  (json_string_array) @run_json_reference
)

(cmd_instruction
  (shell_command) @cmd_command_reference
)

(cmd_instruction
  (json_string_array) @cmd_json_reference
)

; (label_instruction
;   (label_pair
;     key: (label_key) @label_key_reference
;     value: (label_value) @label_value_reference
;   )
; )

(expose_instruction
  (expose_port) @port_reference
)

; (env_instruction
;   (env_pair
;     key: (env_key) @env_key_reference
;     value: (env_value) @env_value_reference
;   )
; )

(add_instruction
  (path) @add_source_reference
)

(add_instruction
  (path) @add_destination_reference
)

(copy_instruction
  (path) @copy_source_reference
)

(copy_instruction
  (path) @copy_destination_reference
)

(entrypoint_instruction
  (shell_command) @entrypoint_command_reference
)

(entrypoint_instruction
  (json_string_array) @entrypoint_json_reference
)

(volume_instruction
  (path) @volume_reference
)

; (user_instruction
;   (user_name) @user_reference
; )

(workdir_instruction
  (path) @workdir_reference
)

; (arg_instruction
;   (arg_name) @arg_name_reference
; )

; (arg_instruction
;   (arg_default_value) @arg_default_reference
; )

(onbuild_instruction) @onbuild_reference

; (stopsignal_instruction
;   (signal) @signal_reference
; )

(healthcheck_instruction) @healthcheck_reference

(shell_instruction
  (json_string_array) @shell_reference
)

; (maintainer_instruction
;   (maintainer_value) @maintainer_reference
; )

(cross_build_instruction) @cross_build_reference

(comment) @comment_reference

(expansion
  (variable) @variable_reference
)

(expansion
  (variable) @env_var_reference
)
