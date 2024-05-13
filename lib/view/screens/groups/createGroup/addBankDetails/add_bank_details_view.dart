import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/textFieldsCommon.dart';

class AddBankDetailsView extends ConsumerStatefulWidget {
  const AddBankDetailsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddBankDetailsViewState();
}

class _AddBankDetailsViewState extends ConsumerState<AddBankDetailsView> {

  final TextEditingController _accountHolderNameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();
  final TextEditingController _branchNameController = TextEditingController();
  final TextEditingController _ifscCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
          'Add Bank Details',
          style: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          height: size.height / 1.2,
          width: size.width,
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Add Bank Details", style: TextStyle(fontWeight: FontWeight.w700, color: primaryColor),),
              gapH16,
              const SizedBox(height: 10),
              const Text(
                'Account Holder Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              CommonTextField(
                padding: EdgeInsets.zero,
                controller: _accountHolderNameController,
                hintText: "Enter Account holder name",
              ),
              const SizedBox(height: 20),
              const Text(
                'Account Number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              CommonTextField(
                padding: EdgeInsets.zero,
                controller: _accountNumberController,
                hintText: "Enter Account number",
                keyboardType: TextInputType.number,
                maxlength: 18,
              ),
              const SizedBox(height: 20),
              const Text(
                'Branch Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              CommonTextField(
                padding: EdgeInsets.zero,
                controller: _branchNameController,
                hintText: "Enter branch name",
              ),
              const SizedBox(height: 20),
              const Text(
                'IFSC Code',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              CommonTextField(
                padding: EdgeInsets.zero,
                controller: _ifscCodeController,
                hintText: "Enter IFSC code",
                maxlength: 11,
              ),
              const Spacer(),
              SizedBox(
                height: 45,
                width: size.width,
                child: MaterialButton(
                  onPressed: () {
                    
                  },
                  color: primaryColor,
                  child: const Center(child: Text("Save", style: TextStyle(color: kWhite, fontWeight: FontWeight.w700),),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
