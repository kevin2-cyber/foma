import 'package:flutter/material.dart';
import 'package:foma/core/app_constants.dart';
import 'package:foma/presentation/screens/display_info.dart';
import 'package:foma/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final _nameController = TextEditingController();
  final _cardNumController = TextEditingController();
  final _dateController = TextEditingController();
  final _cvController = TextEditingController();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: AppConstants.kWaterBlue,
                indent: 16.0,
                endIndent: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Add new Payment Details',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.person_2_rounded, size: 20,),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Card Holder',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    label: const Text('Name on Card'),
                    labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppConstants.kWaterBlue,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppConstants.kWaterBlue,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppConstants.kWaterBlue,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppConstants.kWaterBlue,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.add_card, size: 20,),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Card Details',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextFormField(
                        controller: _cardNumController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: const Text('Card Number'),
                          labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.grey
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextFormField(
                        controller: _dateController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: const Text('MM/YY'),
                          labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.grey
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextFormField(
                        controller: _cvController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: const Text('CVC'),
                          labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.grey
                          ),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          disabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppConstants.kWaterBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                   activeColor: AppConstants.kWaterBlue,
                      value: isSelected,
                      onChanged: (value) {
                        setState(() {
                          value = !isSelected;
                        });
                      }
                  ),
                  Text('Save Card Information'),
                ],
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DisplayInfo(
                  name: _nameController.text,
                  cardNumber: _cardNumController.text,
                  dateTime: _dateController.text,
                  cvc: _cvController.text,
                )));
              },
              color: AppConstants.kWaterBlue,
              height: 50,
              minWidth: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                'Pay \$${provider.getCartTotal()}',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
