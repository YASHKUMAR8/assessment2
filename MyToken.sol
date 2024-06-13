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
