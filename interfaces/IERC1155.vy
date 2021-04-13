# @version ^0.2.11


# * @dev Required interface of an ERC1155 compliant contract, as defined in the
# * https://eips.ethereum.org/EIPS/eip-1155[EIP].
# *
# * _Available since v3.1._

# * @dev Emitted when `value` tokens of token type `id` are transferred from `from` to `to` by `operator`.
event TransferSingle:
    operator: indexed(address)
    _from: indexed(address)
    to: indexed(address)
    id: uint256
    value: uint256

# * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
#event TranferBatch:
#    operator: indexed(address)
#    _from: indexed(address)
#    to: indexed(address)
#    ids: uint256[100]
#    values: uint256[100]


# * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to `approved`.
event ApprovalForAll:
    account: indexed(address)
    operator: indexed(address)
    approved: bool

# @dev MUST emit when the URI is updated for a token ID.
# URIs are defined in RFC 3986.
# The URI MUST point to a JSON file that conforms to the "ERC-1155 Metadata URI JSON Schema".
event URI:
    value: String[100]
    id: indexed(uint256)

# @notice Get the balance of an account's tokens.
# @param _owner  The address of the token holder
# @param _id     ID of the token
# @return        The _owner's balance of the token type requested
@external
@view
def balanceOf(account: address, id: uint256) -> uint256:
    pass


# @notice Get the balance of multiple account/token pairs
# @param _owners The addresses of the token holders
# @param _ids    ID of the tokens
# @return        The _owner's balance of the token types requested (i.e. balance for each (owner, id) pair)
#@external
#@view
#def balanceOfBatch(accounts: address[50], ids: uint256[50]) -> uint256[100]:
#    pass


# @notice Enable or disable approval for a third party ("operator") to manage all of the caller's tokens.
# @dev MUST emit the ApprovalForAll event on success.
# @param _operator  Address to add to the set of authorized operators
# @param _approved  True if the operator is approved, false to revoke approval
@external
def setApprovalForAll(operator: address, approved: bool):
    pass


# @notice Queries the approval status of an operator for a given owner.
# @param _owner     The owner of the tokens
# @param _operator  Address of authorized operator
# @return           True if the operator is approved, false if not
@external
@view
def isApprovedForAll(account: address, operator: address) -> bool:
    pass


# @notice Transfers `_value` amount of an `_id` from the `_from` address to the `_to` address specified (with safety call).
# @dev Caller must be approved to manage the tokens being transferred out of the `_from` account (see "Approval" section of the standard).
# MUST revert if `_to` is the zero address.
# MUST revert if balance of holder for token `_id` is lower than the `_value` sent.
# MUST revert on any other error.
# MUST emit the `TransferSingle` event to reflect the balance change (see "Safe Transfer Rules" section of the standard).
# After the above conditions are met, this function MUST check if `_to` is a smart contract (e.g. code size > 0). If so, it MUST call `onERC1155Received` on `_to` and act appropriately (see "Safe Transfer Rules" section of the standard).
# @param _from    Source address
# @param _to      Target address
# @param _id      ID of the token type
# @param _value   Transfer amount
# @param _data    Additional data with no specified format, MUST be sent unaltered in call to `onERC1155Received` on `_to`
@external
def safeTransferFrom(_from: address, to: address, id: uint256, amount: uint256, data: bytes32):
    pass



# @notice Transfers `_values` amount(s) of `_ids` from the `_from` address to the `_to` address specified (with safety call).
# @dev Caller must be approved to manage the tokens being transferred out of the `_from` account (see "Approval" section of the standard).
# MUST revert if `_to` is the zero address.
# MUST revert if length of `_ids` is not the same as length of `_values`.
# MUST revert if any of the balance(s) of the holder(s) for token(s) in `_ids` is lower than the respective amount(s) in `_values` sent to the recipient.
# MUST revert on any other error.
# MUST emit `TransferSingle` or `TransferBatch` event(s) such that all the balance changes are reflected (see "Safe Transfer Rules" section of the standard).
# Balance changes and events MUST follow the ordering of the arrays (_ids[0]/_values[0] before _ids[1]/_values[1], etc).
# After the above conditions for the transfer(s) in the batch are met, this function MUST check if `_to` is a smart contract (e.g. code size > 0). If so, it MUST call the relevant `ERC1155TokenReceiver` hook(s) on `_to` and act appropriately (see "Safe Transfer Rules" section of the standard).
# @param _from    Source address
# @param _to      Target address
# @param _ids     IDs of each token type (order and length must match _values array)
# @param _values  Transfer amounts per token type (order and length must match _ids array)
# @param _data    Additional data with no specified format, MUST be sent unaltered in call to the `ERC1155TokenReceiver` hook(s) on `_to`

#@external
#def safeBatchTransferFrom(_from: address, to: address, ids: uint256[100], amounts: uint256[100], data: bytes32):
#    pass
