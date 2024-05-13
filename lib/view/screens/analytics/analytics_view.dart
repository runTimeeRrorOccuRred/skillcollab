// ignore_for_file: avoid_dynamic_calls, use_build_context_synchronously, depend_on_referenced_packages

import 'package:auto_size_text/auto_size_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/analytics/model/analytics_model.dart';
import 'package:skill_colab/data/remote/transactions/models/get_earning_group_model.dart';
import 'package:skill_colab/data/remote/transactions/models/transactions_and_tips_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/view/screens/analytics/all_recent_transactions_view.dart';
import 'package:skill_colab/view/screens/analytics/analytics_view_model.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AnalyticsView extends ConsumerStatefulWidget {
  const AnalyticsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AnalyticsViewState();
}

class _AnalyticsViewState extends ConsumerState<AnalyticsView>
    with BaseScreenView {
  String dropdownValue = 'All';
  List<Color> gradientColors = [
    primaryColor,
    primaryColor,
  ];
  bool showAvg = false;
  AnalyticsViewModel? _viewModel;
  List<FlSpot> flspots = [];

  Map<String, dynamic> txnDetails = {
    "user": "User Subscription",
    "group": "Group Subscription",
    "userTip": "User Tip",
    "groupTip": "Group Tip",
    "": "",
  };

  String _startDate = DateFormat.yMMMd()
      .format(DateTime.now().subtract(const Duration(days: 7)));
  String _endDate = DateFormat.yMMMd().format(DateTime.now());
  DateTime _startDateTime = DateTime.now().subtract(const Duration(days: 60));
  DateTime _endDateTime = DateTime.now();

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    print(args.value.startDate);
    print(args.value.endDate);
    setState(() {
      _startDate = DateFormat.yMMMd().format(args.value.startDate);
      _startDateTime = args.value.startDate;
      _endDate = DateFormat.yMMMd().format(args.value.endDate);
      _endDateTime = args.value.endDate;
    });
  }

  @override
  void initState() {
    super.initState();
    _viewModel?.attachView(this);
    // print(DateFormat("yyyy-MM-dd").format(DateTime.now()));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _viewModel = ref.read(analyticsViewModelProvider);

      _viewModel?.getTransactionAndTipsList(
          const TransactionAndTipsRequestModel(type: ""),);
      _viewModel?.getMyGroups();

      final AnalyticsRequestModel analyticsRequestModel = AnalyticsRequestModel(
        startDate: DateFormat("yyyy-MM-dd")
            .format(DateTime.now().subtract(const Duration(days: 30))),
        endDate: DateFormat("yyyy-MM-dd")
            .format(DateTime.now().add(const Duration(days: 1))),
      );
      print(analyticsRequestModel);
      _viewModel?.getTotalTransactions();
      await _viewModel
          ?.getDataForAnalytics(context, analyticsRequestModel)
          .then((value) {
        for (int i = 0;
            i < (_viewModel?.getAnalyticsResponse?.data?.values?.length ?? 0);
            i++) {
          flspots.add(
            FlSpot(i.toDouble(),
                (_viewModel?.getAnalyticsResponse?.data?.values?[i].amount ?? 0).toDouble(),),
          );
          Logger.printSuccess(flspots.length.toString());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(analyticsViewModelProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Select Group',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 70,
                          width: size.width * 0.55,
                          decoration: BoxDecoration(
                            boxShadow: [CustomBoxShadow()],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFFE1E1EF),
                            ),
                          ),
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 2,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            value: dropdownValue.isEmpty ? dropdownValue : null,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                if (dropdownValue != "All") {
                                  _viewModel?.getEarningBasedOnGroup(
                                      GetEarningGroupRequestModel(groupId: [
                                    dropdownValue.split("|")[1],
                                  ],),);
                                }
                              });
                            },
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: _viewModel?.myGroupName.isNotEmpty ?? false
                                ? _viewModel?.myGroupName
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value.split("|")[0],
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    );
                                  }).toList()
                                : null,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Image(
                              image: AssetImage("assets/icons/Group.png"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Earnings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 70,
                          width: size.width * 0.33,
                          decoration: BoxDecoration(
                            boxShadow: [CustomBoxShadow()],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFFE1E1EF),
                            ),
                          ),
                          child: Center(
                            child: _viewModel?.earningLoader ?? false
                                ? const SpinKitThreeBounce(
                                    color: primaryColor, size: 30,)
                                : Text(
                                    dropdownValue == "All"
                                        ? '\$${_viewModel?.getTotalTransactionResponseModel.data?.groupTotalAmount?.netAmount ?? 0}'
                                        : '\$${_viewModel?.getEarningGroupResponseModel.data?.totalEarnings ?? 0}',
                                    style: const TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Container(
                          color: Colors.white,
                          height: 400,
                          width: 400,
                          child: SfDateRangePicker(
                            onSelectionChanged: _onSelectionChanged,
                            selectionMode: DateRangePickerSelectionMode.range,
                            initialSelectedRange: PickerDateRange(
                              _startDateTime,
                              _endDateTime,
                            ),
                            maxDate: DateTime.now(),
                            confirmText: "Done",
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () async {
                              flspots.clear();

                              final AnalyticsRequestModel
                                  analyticsRequestModel = AnalyticsRequestModel(
                                startDate: DateFormat("yyyy-MM-dd")
                                    .format(_startDateTime),
                                endDate: (_endDateTime.year ==
                                            DateTime.now().year &&
                                        _endDateTime.month ==
                                            DateTime.now().month &&
                                        _endDateTime.day == DateTime.now().day)
                                    ? DateFormat("yyyy-MM-dd").format(
                                        _endDateTime
                                            .add(const Duration(days: 1)),)
                                    : DateFormat("yyyy-MM-dd")
                                        .format(_endDateTime),
                              );
                              print(analyticsRequestModel);

                              await _viewModel
                                  ?.getDataForAnalytics(
                                      context, analyticsRequestModel,)
                                  .then((value) {
                                for (int i = 0;
                                    i <
                                        (_viewModel?.getAnalyticsResponse?.data
                                                ?.values?.length ??
                                            0);
                                    i++) {
                                  flspots.add(
                                    FlSpot(
                                        i.toDouble(),
                                        (_viewModel?.getAnalyticsResponse?.data?.values?[i].amount ?? 0).toDouble(),),
                                  );
                                  Logger.printSuccess(
                                      flspots.length.toString(),);
                                }
                              });
                              Navigator.pop(context);
                            },
                            child: const Text("Ok"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey.shade700,
                      ),
                      const SizedBox(
                        width: 21,
                      ),
                      Text(
                        "$_startDate - $_endDate",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              SizedBox(
                child: (_viewModel?.getAnalyticsResponse?.data?.maxY == null)
                    ? Container(
                        width: size.width,
                        height: size.width / 1.5,
                        padding: const EdgeInsets.all(16),
                        child: const Center(
                          child: Text(
                            "There are no transactions made with your account",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : SizedBox(
                        width: size.width,
                        height: size.width / 1.5,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: LineChart(
                            mainData(),
                          ),
                        ),
                      ),
              ),
              const SizedBox(
                height: 30,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [CustomBoxShadow()],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE1E1EF),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Subscription',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                AutoSizeText(
                                  'Groups',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  'Profile',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  'Gross',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                AutoSizeText(
                                  '\$${_viewModel?.getTotalTransactionResponseModel.data?.groupTotalAmount?.grossAmount ?? 0}',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  '\$${_viewModel?.getTotalTransactionResponseModel.data?.profileTotalAmount?.grossAmount ?? 0}',
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  'Net',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                AutoSizeText(
                                  '\$${_viewModel?.getTotalTransactionResponseModel.data?.groupTotalAmount?.netAmount ?? 0}',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AutoSizeText(
                                  '\$${_viewModel?.getTotalTransactionResponseModel.data?.profileTotalAmount?.netAmount ?? 0}',
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: Colors.grey.shade800,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const AutoSizeText(
                            'Total',
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '\$${(_viewModel?.getTotalTransactionResponseModel.data?.profileTotalAmount?.grossAmount ?? 0) + (_viewModel?.getTotalTransactionResponseModel.data?.groupTotalAmount?.grossAmount ?? 0)}',
                            maxLines: 1,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 6,
                          ),
                          Text(
                            '\$${(_viewModel?.getTotalTransactionResponseModel.data?.profileTotalAmount?.netAmount ?? 0) + (_viewModel?.getTotalTransactionResponseModel.data?.groupTotalAmount?.netAmount ?? 0)}',
                            maxLines: 1,
                            style: const TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Visibility(
                      visible: _viewModel?.transactionAndTipsResponseModel.data
                              ?.isNotEmpty ??
                          false,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const AllRecentTransactionsView(),),);
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              SizedBox(
                child: _viewModel
                            ?.transactionAndTipsResponseModel.data?.isEmpty ??
                        true
                    ? Container(
                        height: 150,
                        width: size.width,
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: const Center(
                          child: Text(
                            "No Recent Transactions made in your account",
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w700,),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        itemCount: (_viewModel?.transactionAndTipsResponseModel
                                        .data?.length ??
                                    0) <
                                4
                            ? _viewModel?.transactionAndTipsResponseModel.data
                                    ?.length ??
                                0
                            : 3,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.grey[400],
                          );
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            //!======Outer BIG box
                            // padding: const EdgeInsets.symmetric(
                            //   // vertical: 10,
                            //   horizontal: 8,
                            // ),
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      padding: _viewModel
                                                  ?.transactionAndTipsResponseModel
                                                  .data?[index]
                                                  .fromUser
                                                  ?.profilePhoto
                                                  ?.isEmpty ??
                                              true
                                          ? const EdgeInsets.all(16)
                                          : EdgeInsets.zero,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        border: Border.all(
                                            color: primaryColor, width: 4,),
                                        color: Colors.white,
                                      ),
                                      child: _viewModel
                                                  ?.transactionAndTipsResponseModel
                                                  .data?[index]
                                                  .fromUser
                                                  ?.profilePhoto
                                                  ?.isEmpty ??
                                              true
                                          ? Image.asset("assets/icons/user.png")
                                          : ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              child: Image(image:  NetworkImage(
                                                 _viewModel?.transactionAndTipsResponseModel.data?[index].fromUser?.profilePhoto ??
                                                    AppConstants
                                                        .imageNotFoundLink,
                                                
                                              ),fit: BoxFit.cover,)
                                            ),
                                    ),
                                    const SizedBox(width: 7),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 7),
                                        SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: size.width * 0.7,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "${_viewModel?.transactionAndTipsResponseModel.data?[index].fromUser?.firstName ?? ""} ${_viewModel?.transactionAndTipsResponseModel.data?[index].fromUser?.lastName ?? ""}",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style:
                                                              const TextStyle(
                                                            color: primaryColor,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                        Text(
                                                          '+\$${_viewModel?.transactionAndTipsResponseModel.data?[index].netAmount ?? 0}',
                                                          style:
                                                              const TextStyle(
                                                            color: primaryColor,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  gapH8,
                                                  SizedBox(
                                                    width: size.width * 0.7,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          DateFormat(
                                                                  'd MMM, h:mm a',)
                                                              .format(_viewModel
                                                                      ?.getAnalyticsResponse
                                                                      ?.data
                                                                      ?.values?[
                                                                          index]
                                                                      .createdAt ??
                                                                  DateTime
                                                                      .now(),),
                                                          style:
                                                              const TextStyle(
                                                            color: kNevada,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                        Text(
                                                          txnDetails[_viewModel
                                                                  ?.getAnalyticsResponse
                                                                  ?.data
                                                                  ?.values?[
                                                                      index]
                                                                  .type ??
                                                              ""],
                                                          style:
                                                              const TextStyle(
                                                            color: kNevada,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              gapW10,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String formatAmount(int number) {
    if (number < 1000) {
      return number.toString();
    } else {
      return '${(number / 1000).toStringAsFixed(number % 1000 == 0 ? 0 : 1)}k';
    }
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        horizontalInterval: 1000,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Colors.black12,
            strokeWidth: 0.5,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.white,
            strokeWidth: 0.5,
          );
        },
      ),
      titlesData: FlTitlesData(
        rightTitles: const AxisTitles(),
        topTitles: const AxisTitles(),
        bottomTitles: const AxisTitles(),
        // bottomTitles: AxisTitles(
        //   sideTitles: SideTitles(
        //     showTitles: true,
        //     reservedSize: 30,
        //     interval: 1,
        //     getTitlesWidget: (value, meta) {
        //       return SideTitleWidget(
        //         axisSide: meta.axisSide,
        //         child:  Text(DateFormat("dd/MM").format(_viewModel?.getAnalyticsResponse?.data?.values?[value.toInt()].updatedAt ?? DateTime.now()), style: const TextStyle(fontSize: 14),)
        //       );
        //     },
        //   ),
        // ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1000,
            getTitlesWidget: (value, meta) {
              return value >= 0
                  ? Text(
                      "\$${formatAmount(value.toInt())}",
                      style: const TextStyle(fontSize: 14),
                    )
                  : const Text("");
            },
            reservedSize: 50,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Colors.white,
          ),
          left: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      minX: 0,
      maxX: flspots.length.toDouble() - 0.6,
      minY: _viewModel?.getAnalyticsResponse?.data?.minY?.toDouble() ?? 0,
      maxY: _viewModel?.getAnalyticsResponse?.data?.maxY?.toDouble() ?? 0,
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((e) {
              return LineTooltipItem(
                "\$ ${e.y.toStringAsFixed(2)}\n${DateFormat("MM-dd-yyyy").format(_viewModel?.getAnalyticsResponse?.data?.values?[e.x.floor()].updatedAt ?? DateTime.now())}",
                const TextStyle(color: Colors.white),
              );
            }).toList();
          },
          tooltipBgColor: primaryColor,
        ),
      ),
      lineBarsData: [
        LineChartBarData(
          // spots: flspots,
          spots: flspots,
          isCurved: true,
          color: primaryColor,
          barWidth: 1,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          isStrokeJoinRound: true,
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                const Color(0xFF1B9AAA).withOpacity(0.3),
                const Color(0xFF1B9AAA).withOpacity(0.2),
                const Color(0xFF1B9AAA).withOpacity(0.1),
                const Color(0xFF1B9AAA).withOpacity(0.05),
                const Color(0xFF1B9AAA).withOpacity(0.03),
                const Color(0xFF1B9AAA).withOpacity(0.01),
                const Color(0xFF1B9AAA).withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // colors: gradientColors
              //     .map((color) => color.withOpacity(0.1))
              //     .toList(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
