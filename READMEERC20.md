ERC20 SUBNET README FILE

Token Details
Name: Solidity by Example
Symbol: SOLBYEX
Decimals: 18
Total Supply: Variable (initially set to 0)
Smart Contract Features
ERC-20 Standard Functions
transfer
solidity
Copy code
function transfer(address recipient, uint amount) external returns (bool);
Transfers amount tokens from the sender's account to the recipient account.

approve
solidity
Copy code
function approve(address spender, uint amount) external returns (bool);
Allows spender to withdraw from the sender's account multiple times, up to the amount value.

transferFrom
solidity
Copy code
function transferFrom(address sender, address recipient, uint amount) external returns (bool);
Transfers amount tokens from the sender account to the recipient account. The function can only be executed by someone who has been approved by the sender to spend amount tokens.

Events
Transfer
solidity
Copy code
event Transfer(address indexed from, address indexed to, uint value);
Emitted when tokens are transferred from one account to another.

Approval
solidity
Copy code
event Approval(address indexed owner, address indexed spender, uint value);
Emitted when the approve function is called, indicating approval of the spender to spend value tokens on behalf of the owner.

Additional Functions
mint
solidity
Copy code
function mint(uint amount) external;
Mints new tokens and assigns them to the sender's account. Increases the total supply.

burn
solidity
Copy code
function burn(uint amount) external;
Burns a specified amount of tokens from the sender's account. Decreases the total supply.
