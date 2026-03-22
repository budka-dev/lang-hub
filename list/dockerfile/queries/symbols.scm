; (dockerfile) @dockerfile

(from_instruction
  (image_spec
    (image_name) @name
  )
) @from

(from_instruction
  (image_spec
    (image_tag) @tag
  )
) @from_tag

(from_instruction
  (image_spec
    (image_digest) @digest
  )
) @from_digest

(from_instruction
  (image_alias) @name
) @from_alias

(run_instruction
  (shell_command) @command
) @run

(run_instruction
  (json_string_array) @command_array
) @run_json

(cmd_instruction
  (shell_command) @command
) @cmd

(cmd_instruction
  (json_string_array) @command_array
) @cmd_json

; (label_instruction
;   (label_pair
;     key: (label_key) @name
;     value: (label_value) @value
;   )
; ) @label

(expose_instruction
  (expose_port) @port
) @expose

; (env_instruction
;   (env_pair
;     key: (env_key) @name
;     value: (env_value) @value
;   )
; ) @env

(add_instruction
  (path) @source
  (path) @destination
) @add

(copy_instruction
  (path) @source
  (path) @destination
) @copy

(entrypoint_instruction
  (shell_command) @command
) @entrypoint

(entrypoint_instruction
  (json_string_array) @command_array
) @entrypoint_json

(volume_instruction
  (path) @volume
) @volume

; (user_instruction
;   (user_name) @name
; ) @user

(workdir_instruction
  (path) @path
) @workdir

; (arg_instruction
;   (arg_name) @name
; ) @arg

; (arg_instruction
;   (arg_name) @name
;   (arg_default_value) @default
; ) @arg_with_default

(onbuild_instruction) @onbuild

; (stopsignal_instruction
;   (signal) @signal
; ) @stopsignal

(healthcheck_instruction) @healthcheck

(shell_instruction
  (json_string_array) @shell_array
) @shell

; (maintainer_instruction
;   (maintainer_value) @value
; ) @maintainer

(cross_build_instruction) @cross_build

(comment) @comment

(line_continuation) @line_continuation

; (escape_directive
;   (escape_char) @escape
; ) @escape
