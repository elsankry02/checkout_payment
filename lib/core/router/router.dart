import 'package:auto_route/auto_route.dart';
import 'package:checkout_payment/features/presentation/my_card_page/my_card_page.dart';
import 'package:checkout_payment/features/presentation/payment_details_page/payment_details_page.dart';
import 'package:checkout_payment/features/presentation/thank_you_page/thank_you_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MyCardRoute.page, initial: true),
    AutoRoute(page: PaymentDetailsRoute.page),
    AutoRoute(page: ThankYouRoute.page),
  ];
}
