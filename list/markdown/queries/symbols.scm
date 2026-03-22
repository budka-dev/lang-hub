(document) @document

(atx_heading
  (atx_h1_marker) @h1_marker
) @h1

(atx_heading
  (atx_h2_marker) @h2_marker
) @h2

(atx_heading
  (atx_h3_marker) @h3_marker
) @h3

(atx_heading
  (atx_h4_marker) @h4_marker
) @h4

(atx_heading
  (atx_h5_marker) @h5_marker
) @h5

(atx_heading
  (atx_h6_marker) @h6_marker
) @h6

(setext_heading
  (setext_h1_underline) @h1_underline
) @setext_h1

(setext_heading
  (setext_h2_underline) @h2_underline
) @setext_h2

(thematic_break) @thematic_break

; (code_fence
;   (code_fence_content) @code_block
; ) @fenced_code

(indented_code_block) @indented_code

(list
  (list_item) @list_item
) @list

; (task_list_item
;   (list_marker) @task_marker
; ) @task_list_item

(block_quote) @block_quote

(link_reference_definition
  (link_label) @name
) @link_definition

; (footnote_reference
;   (label) @name
; ) @footnote

; (footnote_definition
;   (label) @name
; ) @footnote_definition

(html_block) @html_block

(paragraph) @paragraph

(link_destination) @link_destination

(link_title) @link_title
