import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gloswitch_smart_contract_test/controllers/contractController.dart';
import 'package:gloswitch_smart_contract_test/utilities/globalVariable.dart';
import 'package:gloswitch_smart_contract_test/widgets/btn.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contractController = Get.put(ContractController());
  Client? httpClient;
  Web3Client? ethClient;

  @override
  void initState() {
    httpClient = Client();
    ethClient = Web3Client(contractController.url.value, httpClient!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 600),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomText(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  text: 'Smart contract test',
                  color: blackColor,
                ),
              ),
              // generate adress btn
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    var adress =
                        await contractController.callFunctionWithoutGasfee(
                            "generateDepositAddress",
                            ["oihgloirgir"],
                            ethClient!);
                    log(adress.toString());
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "Generate User Adress",
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    // var adressvar adress =
                    try {
                      var setAdressResult =
                          await contractController.callFunctionWithGasfee(
                              "AddGloSwitchAddress",
                              [
                                EthereumAddress.fromHex(
                                    "0xEcd1f2216aCF5e7A82930afF3feb6B5009C8b05d")
                              ],
                              ethClient!,
                              "4c24f3cadd7e63558ab0e2c820d83d041b6eb88fd1ab7d22e902f8da23c2e4e3");
                      log(setAdressResult.toString());
                    } on Exception catch (e) {
                      log(e.toString());
                    }
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "Add gloswitch adress",
                      color: firstColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    // var adressvar adress =
                    try {
                      var setAdressResult =
                          await contractController.callFunctionWithGasfee(
                              "SetActiveAddress",
                              [
                                EthereumAddress.fromHex(
                                    "0xEcd1f2216aCF5e7A82930afF3feb6B5009C8b05d")
                              ],
                              ethClient!,
                              "4c24f3cadd7e63558ab0e2c820d83d041b6eb88fd1ab7d22e902f8da23c2e4e3");
                      log(setAdressResult.toString());
                    } on Exception catch (e) {
                      log(e.toString());
                    }
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "Set active adress",
                      color: firstColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    var adress = await contractController.callFunctionWithGasfee(
                        "GetActiveAddress",
                        [
                          // "4c24f3cadd7e63558ab0e2c820d83d041b6eb88fd1ab7d22e902f8da23c2e4e3"
                        ],
                        ethClient!,
                        "4c24f3cadd7e63558ab0e2c820d83d041b6eb88fd1ab7d22e902f8da23c2e4e3");
                    log(adress.toString());
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "GetActiveAddress",
                      color: blackColor,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    var adress = await contractController.callFunctionWithGasfee(
                        "AddCryptoAddressAnItsCurrencyId",
                        [
                          BigInt.from(1),
                          EthereumAddress.fromHex(
                              "0x5E1DeAdfb43832Ab33363167AbCc8D1fF74D08D9")
                        ],
                        ethClient!,
                        "4c24f3cadd7e63558ab0e2c820d83d041b6eb88fd1ab7d22e902f8da23c2e4e3");
                    log(adress.toString());
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "AddCryptoAddressAnItsCurrencyId",
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    var adress =
                        await contractController.callFunctionWithoutGasfee(
                      "currencyIdToCryptoAddresses",
                      [
                        BigInt.from(1),
                      ],
                      ethClient!,
                    );
                    log(adress.toString());
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "currencyIdToCryptoAddresses",
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () async {
                    var adress =
                        await contractController.callFunctionWithoutGasfee(
                      "getBalance",
                      [
                        EthereumAddress.fromHex(
                            "0x35a53f8d03c631d6d9ddf6a0a9a42375d714cd42"),
                        BigInt.from(1),
                      ],
                      ethClient!,
                    );
                    log(adress.toString());
                  },
                  child: SizedBox(
                    width: 200,
                    child: Btn(
                      text: "getBalance",
                      color: blackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
