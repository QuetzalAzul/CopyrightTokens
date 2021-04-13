# @version ^0.2.11



# @notice Handle the receipt of a single ERC1155 token type.
# @dev An ERC1155-compliant smart contract MUST call this function on the token recipient contract, at the end of a `safeTransferFrom` after the balance has been updated.
# This function MUST return `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))` (i.e. 0xf23a6e61) if it accepts the transfer.
# This function MUST revert if it rejects the transfer.
# Return of any other value than the prescribed keccak256 generated value MUST result in the transaction being reverted by the caller.
# @param _operator  The address which initiated the transfer (i.e. msg.sender)
# @param _from      The address which previously owned the token
# @param _id        The ID of the token being transferred
# @param _value     The amount of tokens being transferred
# @param _data      Additional data with no specified format
# @return           `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))`

@external
def onERC1155Received(_operator: address, _from: address, _id: uint256, _value: uint256, _data: bytes32) -> Bytes[4]:
    pass



# @notice Handle the receipt of multiple ERC1155 token types.
# @dev An ERC1155-compliant smart contract MUST call this function on the token recipient contract, at the end of a `safeBatchTransferFrom` after the balances have been updated.
# This function MUST return `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))` (i.e. 0xbc197c81) if it accepts the transfer(s).
# This function MUST revert if it rejects the transfer(s).
# return of any other value than the prescribed keccak256 generated value MUST result in the transaction being reverted by the caller.
# @param _operator  The address which initiated the batch transfer (i.e. msg.sender)
# @param _from      The address which previously owned the token
# @param _ids       An array containing ids of each token being transferred (order and length must match _values array)
# @param _values    An array containing amounts of each token being transferred (order and length must match _ids array)
# @param _data      Additional data with no specified format
# @return           `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))`





@external
def onERC2266BatchReceived(_operator: address, _from: address, _ids: uint256[100], _values: uint256[100], _data: bytes32 ) -> Bytes[4]:
    pass
