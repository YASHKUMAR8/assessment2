# Tokens

This is a basic Solidity contract for a token called "ETHEREUM" with the symbol "ETH". The contract includes functions for minting and burning tokens. 
## Description
The provided Solidity contract, MyToken, defines a basic token named "ETHEREUM" with the abbreviation "ETH". The contract includes public variables, a mapping to store token balances, and functions to mint and burn tokens.
The contract ensures the correct updating of the total supply and individual balances during minting and burning operations, providing a basic framework for token management on the Ethereum blockchain.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```javascript
contract MyToken {

    // public variables here
    string public tokenName = "ETHEREUM";
    string public tokenAbb = "ETH";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address add, uint value) public {
        totalSupply += value;
        balances[add] += value;
    }

    // burn function
    function burn(address add, uint value) public {
        if(balances[add] >= value) {
            totalSupply -= value;
            balances[add] -= value;
        }
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by an account address and value, then simply click transact and you can check the updated balance.
## Authors

Metacrafter Learner  
https://github.com/YASHKUMAR8


## License

This project is licensed under the MIT License - see the LICENSE.md file for details# Tokens
