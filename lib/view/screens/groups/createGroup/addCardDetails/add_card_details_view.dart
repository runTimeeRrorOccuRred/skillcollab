import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/data/remote/payment/add_card/models/customer_add_card_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';
import 'package:skill_colab/view/screens/groups/createGroup/create_group_view_model.dart';

class AddCardDetailsView extends ConsumerStatefulWidget {
  const AddCardDetailsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddCardDetailsViewState();
}

class _AddCardDetailsViewState extends ConsumerState<AddCardDetailsView> with BaseScreenView{

  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expireDateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  int month = -1;
  int year = -1;
  late CreateGroupViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(createGroupViewModel);
    _viewModel.attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(createGroupViewModel);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
        title: const Text(
          'Add Card Details',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.of(context).pop();
            },
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
                top: 10,
                bottom: 10,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F6),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.settings_outlined,
                  color: primaryColor,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Add Card Details", style: TextStyle(fontWeight: FontWeight.w700, color: primaryColor),),
            gapH16,
            const SizedBox(height: 10),
            const Text(
              'Name on Card',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            CommonTextField(
              padding: EdgeInsets.zero,
              controller: _cardNameController,
              hintText: "Enter name",
            ),
            const SizedBox(height: 20),
            const Text(
              'Card Number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            CommonTextField(
              keyboardType: TextInputType.number,
              maxlength: 16,
              padding: EdgeInsets.zero,
              controller: _cardNumberController,
              hintText: "Enter Account number",
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Expire Date',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: kWhite,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            builder: (context) {
                              return Container(
                                height: 400,
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: 
                                      // CupertinoDatePicker(
                                      //   initialDateTime: DateTime.now(),
                                      //   onDateTimeChanged: (DateTime newdate) {
                                      //     print(newdate);
                                      //   },
                                      //   minimumYear: 2010,
                                      //   maximumYear: 2030,
                                      //   mode: CupertinoDatePickerMode.date,
                                      // )
                                      CupertinoDatePicker(
                                        mode: CupertinoDatePickerMode.monthYear,
                                        initialDateTime: DateTime.now().add(const Duration(days: 2)),
                                        onDateTimeChanged: (value) {
                                          setState(() {
                                            _expireDateController.text = DateFormat('MM/yy').format(value);
                                            month = int.parse(DateFormat('MM').format(value));
                                            year = int.parse(DateFormat('yyyy').format(value));
                                          });
                                        },
                                        minimumDate: DateTime.now(),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width,
                                      height: 45,
                                      child: MaterialButton(
                                        onPressed: () => Navigator.pop(context),
                                        color: primaryColor,
                                        child: const Center(child: Text("Done", style: TextStyle(color: kWhite, fontWeight: FontWeight.w700),),),
                                      ),
                                    ),
                                    gapH32,
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: CommonTextField(
                          padding: EdgeInsets.zero,
                          controller: _expireDateController,
                          hintText: "MM/YY",
                          enabled: false,
                        ),
                      ),
                    ],
                  ),
                ),
                gapW16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CVV',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CommonTextField(
                        padding: EdgeInsets.zero,
                        controller: _cvvController,
                        hintText: "Enter cvv",
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 45,
              width: size.width,
              child: MaterialButton(
                onPressed: () {
                  Logger.printError("$month/$year");
                  if(month != -1 && year != -1){
                    final AddCustomerCardRequestModel addCustomerCardRequestModel = AddCustomerCardRequestModel(
                      cvc: _cvvController.text,
                      name: _cardNameController.text,
                      number: _cardNumberController.text,
                      expMonth: month,
                      expYear: year,
                    );
                    Logger.printError(addCustomerCardRequestModel.toString());
                    _viewModel.addCard(context, addCustomerCardRequestModel, ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? "").then((value) {
                      // ref.read(selfDataProvider).getCardList(context, ref.read(selfDataProvider).singleUserResponseModel.data?.customerId ?? "");
                      Navigator.pop(context);
                    });
                  }
                },
                color: primaryColor,
                child: const Center(child: Text("Save", style: TextStyle(color: kWhite, fontWeight: FontWeight.w700),),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
