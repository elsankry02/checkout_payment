import '../../../core/constant/app_svgs.dart';

class CardDetailsModel {
  final String Svg;

  CardDetailsModel({required this.Svg});
}

List<CardDetailsModel> cardDetailsItems = [
  CardDetailsModel(Svg: AppSvgs.kCard),
  CardDetailsModel(Svg: AppSvgs.kPaypal),
  CardDetailsModel(Svg: AppSvgs.kPay),
];
