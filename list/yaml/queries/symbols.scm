(document
  (block_node) @root
)

(block_mapping
  (block_mapping_pair
    key: (flow_node) @name
  )
) @mapping

(block_mapping_pair
  key: (flow_node) @name
) @property

(block_sequence
  (block_sequence_item) @item
) @sequence

(block_sequence_item
  (flow_node) @sequence_value
)

(block_sequence_item
  (block_node) @sequence_value
)

(flow_mapping
  (flow_pair
    key: (flow_node) @name
  )
) @flow_mapping

(flow_pair
  key: (flow_node) @name
) @flow_property

(flow_sequence
  (flow_node) @item
) @flow_sequence

(plain_scalar) @scalar

(double_quote_scalar) @scalar

(single_quote_scalar) @scalar

(block_scalar) @block_scalar

(anchor) @anchor

(alias) @alias

(tag) @tag

(reserved_directive) @directive

(yaml_directive) @yaml_directive

(tag_directive) @tag_directive
