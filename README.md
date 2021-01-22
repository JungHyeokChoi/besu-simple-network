# Besu Simple Network

It contains:

* Besu
* Orion

### How to Use

------

* Execute  `docker-compose up` to start the services
* Run `./jsonrpc-2.0.sh` to get the response (See  the Besu API Methods for request) 

**Example:**

```
$ ./jsonrpc-2.0.sh net_version
>>
{
  "jsonrpc" : "2.0",
  "id" : 53,
  "result" : "2018"
}

$ ./jsonrpc-2.0.sh priv_getPrivateTransaction \"0x24205669f60be865e2917ecbbb239c5d25a902879c24bd4e0b07aaeab5a661a7\"
>>
{
  "jsonrpc" : "2.0",
  "id" : 53,
  "result" : {
    "from" : "0x077a1bd07f7c5004eaeb9c69d4ec48c33d21ded6",
    "gas" : "0x2dc6c0",
    "gasPrice" : "0x0",
    "hash" : "0xfc244f238dc3a820c334ebd26dc18da00f27616410e5c103cda8846e227ba289",
    "input" : "0x608060405234801561001057600080fd5b50336000806101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550610221806100606000396000f300608060405260043610610057576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680633fa4f2451461005c5780636057361d1461008757806367e404ce146100b4575b600080fd5b34801561006857600080fd5b5061007161010b565b6040518082815260200191505060405180910390f35b34801561009357600080fd5b506100b260048036038101908080359060200190929190505050610115565b005b3480156100c057600080fd5b506100c96101cb565b604051808273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6000600254905090565b7fc9db20adedc6cf2b5d25252b101ab03e124902a73fcb12b753f3d1aaa2d8f9f53382604051808373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020018281526020019250505060405180910390a18060028190555033600160006101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff16021790555050565b6000600160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff169050905600a165627a7a723058208efaf938851fb2d235f8bf9a9685f149129a30fe0f4b20a6c1885dc02f639eba0029",
    "nonce" : "0x0",
    "to" : null,
    "value" : "0x0",
    "v" : "0xfe8",
    "r" : "0x630ef2fc434aecb3cae8e289026ab63d77ec48fb1d20b33fe7e84fef074e8244",
    "s" : "0x34988a9ecf08480fcd6be36710ea8c15edca04ddef21f1a0c00b9ac33d5dee3b",
    "privateFrom" : "alecmQx1dwfMXBywLGi7Lnym1AJWkjOKoSfc22TQpGk=",
    "privateFor" : [ "tWaWg6RVKElXog8mjYMaLdlaRVD8dgbZv3dB0XMhL1c=" ],
    "restriction" : "restricted"
  }
}
```



### Network mapping

------

* Besu 1 - http://localhost:8515
* Besu 2 - http://localshost:8525
* Besu 3  - http://localhost:8535
* Orion 1 - http://localhost:8888
* Orion 2 - http://localhost:8889
* Orion 3 - http://localhost:8890