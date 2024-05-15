import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:web3dart/contracts.dart';
import 'package:web3dart/credentials.dart';
import 'package:web3dart/web3dart.dart';

class ContractController extends GetxController {
  var contractAdress = "0x025fB4f9D6D853D5FA7656c8B05dBD3870d39e01";
  var url =
      'https://eth-sepolia.g.alchemy.com/v2/oi00B9tTWlPYt0S2QWfzYwI79hGvj7Ao'
          .obs;

// 0x35a53f8d03c631d6d9ddf6a0a9a42375d714cd42
  Future<DeployedContract> loadCntract() async {
    var abi = await rootBundle.loadString('assets/abi.json');
    var contract = DeployedContract(
        ContractAbi.fromJson(abi, 'GloSwitchContract'),
        EthereumAddress.fromHex(contractAdress));
    return contract;
  }

  Future<String> callFunctionWithGasfee(String funcName, List<dynamic> args,
      Web3Client ethClient, String privateKey) async {
    // get credentials
    EthPrivateKey credentials = EthPrivateKey.fromHex(privateKey);
    // ethClient.
    // get the contract
    DeployedContract contract = await loadCntract();
    // select the specific function to call
    var ethFunction = contract.function(funcName);
    // call specific function
    // get the function call result
    var result = await ethClient.sendTransaction(
        credentials,
        Transaction.callContract(
            contract: contract, function: ethFunction, parameters: args),
        chainId: null,
        fetchChainIdFromNetworkId: true);

    return result;
  }

  Future<List<dynamic>> callFunctionWithoutGasfee(
    String funcName,
    List<dynamic> args,
    Web3Client ethClient,
  ) async {
    // get the contract
    DeployedContract contract = await loadCntract();
    // select the specific function to call
    var ethFunction = contract.function(funcName);
    // call specific function
    var result = await ethClient.call(
        contract: contract, function: ethFunction, params: args);

    return result;
  }
}
