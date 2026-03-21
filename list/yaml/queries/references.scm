(block_mapping_pair
  key: (flow_node) @key_reference
)

(block_mapping_pair
  value: (flow_node) @value_reference
)

(block_mapping_pair
  value: (block_node) @value_reference
)

(flow_pair
  key: (flow_node) @key_reference
)

(flow_pair
  value: (flow_node) @value_reference
)

(block_sequence_item
  (flow_node) @item_reference
)

(block_sequence_item
  (block_node) @item_reference
)

(flow_sequence
  (flow_node) @item_reference
)

(anchor) @anchor_reference

(alias) @alias_reference

(tag) @tag_reference

(plain_scalar) @scalar_reference

(double_quote_scalar) @scalar_reference

(single_quote_scalar) @scalar_reference

(block_scalar) @scalar_reference

(reserved_directive) @directive_reference

(yaml_directive) @directive_reference

(tag_directive) @directive_reference
