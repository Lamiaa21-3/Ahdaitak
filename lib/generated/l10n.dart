// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ابق على اطلاع`
  String get stayInformed {
    return Intl.message(
      'ابق على اطلاع',
      name: 'stayInformed',
      desc: '',
      args: [],
    );
  }

  /// `تحديثات الحالة على عمليات التعبئة`
  String get statusUpdatesOperations {
    return Intl.message(
      'تحديثات الحالة على عمليات التعبئة',
      name: 'statusUpdatesOperations',
      desc: '',
      args: [],
    );
  }

  /// `عروض وخصومات حصرية`
  String get exclusiveOffersAndDiscounts {
    return Intl.message(
      'عروض وخصومات حصرية',
      name: 'exclusiveOffersAndDiscounts',
      desc: '',
      args: [],
    );
  }

  /// ` منتجات جديدة ومثيرة `
  String get newAndExcitingProducts {
    return Intl.message(
      ' منتجات جديدة ومثيرة ',
      name: 'newAndExcitingProducts',
      desc: '',
      args: [],
    );
  }

  /// `التالى`
  String get next {
    return Intl.message('التالى', name: 'next', desc: '', args: []);
  }

  /// `يمكنك إيقاف تشغيله في أي وقت `
  String get youCanTurnItOffAtAnyTime {
    return Intl.message(
      'يمكنك إيقاف تشغيله في أي وقت ',
      name: 'youCanTurnItOffAtAnyTime',
      desc: '',
      args: [],
    );
  }

  /// `اهلا بعودتك !`
  String get welcomBack {
    return Intl.message(
      'اهلا بعودتك !',
      name: 'welcomBack',
      desc: '',
      args: [],
    );
  }

  /// `سجل باستخدام جوجل`
  String get loginWithGoogle {
    return Intl.message(
      'سجل باستخدام جوجل',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `اكمل باستخدام طريقة اخرى`
  String get completeUsingAnotherMethod {
    return Intl.message(
      'اكمل باستخدام طريقة اخرى',
      name: 'completeUsingAnotherMethod',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get login {
    return Intl.message('تسجيل الدخول', name: 'login', desc: '', args: []);
  }

  /// `سيتم ارسال كود للتحقق من رقم الهاتف`
  String get sendCodeForVerification {
    return Intl.message(
      'سيتم ارسال كود للتحقق من رقم الهاتف',
      name: 'sendCodeForVerification',
      desc: '',
      args: [],
    );
  }

  /// `لا اريد استلام إعلانات تسويقية`
  String get doNotWantToReceiveMarketingAds {
    return Intl.message(
      'لا اريد استلام إعلانات تسويقية',
      name: 'doNotWantToReceiveMarketingAds',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد رقم الجوال`
  String get ensurePhoneNumber {
    return Intl.message(
      'تأكيد رقم الجوال',
      name: 'ensurePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `او اكمل باستخدام`
  String get orCompleteBy {
    return Intl.message(
      'او اكمل باستخدام',
      name: 'orCompleteBy',
      desc: '',
      args: [],
    );
  }

  /// `بالاستمرار فإنك توافق على`
  String get withContinueYouAgree {
    return Intl.message(
      'بالاستمرار فإنك توافق على',
      name: 'withContinueYouAgree',
      desc: '',
      args: [],
    );
  }

  /// `الشروط والاحكام`
  String get termsAndConditions {
    return Intl.message(
      'الشروط والاحكام',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `سياسة الخصوصية `
  String get privacyPolicy {
    return Intl.message(
      'سياسة الخصوصية ',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `ملفات تعريف الارتباط`
  String get cookies {
    return Intl.message(
      'ملفات تعريف الارتباط',
      name: 'cookies',
      desc: '',
      args: [],
    );
  }

  /// `مرحبا بكم في أهديتك`
  String get welcomToAhdidic {
    return Intl.message(
      'مرحبا بكم في أهديتك',
      name: 'welcomToAhdidic',
      desc: '',
      args: [],
    );
  }

  /// `ارسل اول شحن الى مصر في 3 ثوان `
  String get sendFirstShipmentToEgypt {
    return Intl.message(
      'ارسل اول شحن الى مصر في 3 ثوان ',
      name: 'sendFirstShipmentToEgypt',
      desc: '',
      args: [],
    );
  }

  /// `بدء تعبئة الرصيد`
  String get startRechargingTheBalance {
    return Intl.message(
      'بدء تعبئة الرصيد',
      name: 'startRechargingTheBalance',
      desc: '',
      args: [],
    );
  }

  /// `التواصل مع الناس منذ عام 2006`
  String get connectingWithPeopleSince {
    return Intl.message(
      'التواصل مع الناس منذ عام 2006',
      name: 'connectingWithPeopleSince',
      desc: '',
      args: [],
    );
  }

  /// `البلدان`
  String get countries {
    return Intl.message('البلدان', name: 'countries', desc: '', args: []);
  }

  /// `المرسلين`
  String get messengers {
    return Intl.message('المرسلين', name: 'messengers', desc: '', args: []);
  }

  /// `شحن الرصيد`
  String get balanceRecharge {
    return Intl.message(
      'شحن الرصيد',
      name: 'balanceRecharge',
      desc: '',
      args: [],
    );
  }

  /// `موثوق بها من قبل شركائنا`
  String get trustedByOurPartners {
    return Intl.message(
      'موثوق بها من قبل شركائنا',
      name: 'trustedByOurPartners',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد انشطة حتى الآن`
  String get thereNoActivities {
    return Intl.message(
      'لا يوجد انشطة حتى الآن',
      name: 'thereNoActivities',
      desc: '',
      args: [],
    );
  }

  /// `ستظهر هنا قائمة الأشخاص اللذين راسلتهم`
  String get displayHerePeopleYourMessaged {
    return Intl.message(
      'ستظهر هنا قائمة الأشخاص اللذين راسلتهم',
      name: 'displayHerePeopleYourMessaged',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ المراسلة`
  String get startMessaging {
    return Intl.message(
      'ابدأ المراسلة',
      name: 'startMessaging',
      desc: '',
      args: [],
    );
  }

  /// `جهات الإتصال`
  String get contacts {
    return Intl.message('جهات الإتصال', name: 'contacts', desc: '', args: []);
  }

  /// `من فضلك ادخل رقم الهاتف `
  String get pleaseEnterPhone {
    return Intl.message(
      'من فضلك ادخل رقم الهاتف ',
      name: 'pleaseEnterPhone',
      desc: '',
      args: [],
    );
  }

  /// `المراد الارسال له`
  String get WhatYouWantToSendTo {
    return Intl.message(
      'المراد الارسال له',
      name: 'WhatYouWantToSendTo',
      desc: '',
      args: [],
    );
  }

  /// `اختر من جهات اتصالك`
  String get chooseFromYourContacts {
    return Intl.message(
      'اختر من جهات اتصالك',
      name: 'chooseFromYourContacts',
      desc: '',
      args: [],
    );
  }

  /// `حدد جهة الاتصال الخاصة بك على الفور، دون الحاجة إلى إدخال رقم`
  String get selectedContactsWithoutNumber {
    return Intl.message(
      'حدد جهة الاتصال الخاصة بك على الفور، دون الحاجة إلى إدخال رقم',
      name: 'selectedContactsWithoutNumber',
      desc: '',
      args: [],
    );
  }

  /// `لن نرسل رسائل إلى جهات اتصالك أبدًا`
  String get doNotSendMessages {
    return Intl.message(
      'لن نرسل رسائل إلى جهات اتصالك أبدًا',
      name: 'doNotSendMessages',
      desc: '',
      args: [],
    );
  }

  /// `بيانات الاتصال الخاصة بك محفوظة بشكل آمن`
  String get dataContactsPrivatedWellS {
    return Intl.message(
      'بيانات الاتصال الخاصة بك محفوظة بشكل آمن',
      name: 'dataContactsPrivatedWellS',
      desc: '',
      args: [],
    );
  }

  /// `من تريد أن ترسل إليه؟`
  String get whoDoYouWantToSendItTo {
    return Intl.message(
      'من تريد أن ترسل إليه؟',
      name: 'whoDoYouWantToSendItTo',
      desc: '',
      args: [],
    );
  }

  /// `ابحث في جهات الإتصال`
  String get searchContacts {
    return Intl.message(
      'ابحث في جهات الإتصال',
      name: 'searchContacts',
      desc: '',
      args: [],
    );
  }

  /// `الحساب`
  String get account {
    return Intl.message('الحساب', name: 'account', desc: '', args: []);
  }

  /// `السجل`
  String get record {
    return Intl.message('السجل', name: 'record', desc: '', args: []);
  }

  /// `الهدايا`
  String get gifts {
    return Intl.message('الهدايا', name: 'gifts', desc: '', args: []);
  }

  /// `الرئيسية`
  String get home {
    return Intl.message('الرئيسية', name: 'home', desc: '', args: []);
  }

  /// `قسائمنا في مصر تبدأ من 3.00 دولار أمريكي.`
  String get couponsEgyptStartFrom {
    return Intl.message(
      'قسائمنا في مصر تبدأ من 3.00 دولار أمريكي.',
      name: 'couponsEgyptStartFrom',
      desc: '',
      args: [],
    );
  }

  /// `استمتع بترفيه متواصل على بيجو لايف`
  String get enjoyNonStopEntertainmentBigoLive {
    return Intl.message(
      'استمتع بترفيه متواصل على بيجو لايف',
      name: 'enjoyNonStopEntertainmentBigoLive',
      desc: '',
      args: [],
    );
  }

  /// `مسح، تفعيل، توصيل باستخدام بيانات eSIM`
  String get deleteAndDeliverByData {
    return Intl.message(
      'مسح، تفعيل، توصيل باستخدام بيانات eSIM',
      name: 'deleteAndDeliverByData',
      desc: '',
      args: [],
    );
  }

  /// `امازون`
  String get amazon {
    return Intl.message('امازون', name: 'amazon', desc: '', args: []);
  }

  /// `سواء كان ذلك للاحتفال أو لحدث مهم أو مجرد شكر بسيط، أرسل هدية رقمية`
  String get WhetherToCelebrateImportantEventDigitalGift {
    return Intl.message(
      'سواء كان ذلك للاحتفال أو لحدث مهم أو مجرد شكر بسيط، أرسل هدية رقمية',
      name: 'WhetherToCelebrateImportantEventDigitalGift',
      desc: '',
      args: [],
    );
  }

  /// `اشْتَرِ 7699.99 جنية`
  String get buy99 {
    return Intl.message(
      'اشْتَرِ 7699.99 جنية',
      name: 'buy99',
      desc: '',
      args: [],
    );
  }

  /// `المساعدة`
  String get help {
    return Intl.message('المساعدة', name: 'help', desc: '', args: []);
  }

  /// `أرسل تعبئة رصيد`
  String get SendBalanceRecharge {
    return Intl.message(
      'أرسل تعبئة رصيد',
      name: 'SendBalanceRecharge',
      desc: '',
      args: [],
    );
  }

  /// `استقبل تعبئة رصيد`
  String get receiveBalanceRecharge {
    return Intl.message(
      'استقبل تعبئة رصيد',
      name: 'receiveBalanceRecharge',
      desc: '',
      args: [],
    );
  }

  /// `عن اهديتك`
  String get aboutAhdytic {
    return Intl.message('عن اهديتك', name: 'aboutAhdytic', desc: '', args: []);
  }

  /// `إشعار الخصوصية للأصدقاء والعائلة`
  String get privacyNotificationToFriendsFamily {
    return Intl.message(
      'إشعار الخصوصية للأصدقاء والعائلة',
      name: 'privacyNotificationToFriendsFamily',
      desc: '',
      args: [],
    );
  }

  /// `ما هو المبلغ الذي تريد إرساله ؟`
  String get howMuchYouWantToSend {
    return Intl.message(
      'ما هو المبلغ الذي تريد إرساله ؟',
      name: 'howMuchYouWantToSend',
      desc: '',
      args: [],
    );
  }

  /// `قم بإختيار المبلغ المراد شحنه`
  String get chooseTheAmountCharged {
    return Intl.message(
      'قم بإختيار المبلغ المراد شحنه',
      name: 'chooseTheAmountCharged',
      desc: '',
      args: [],
    );
  }

  /// `قبل الخصم`
  String get beforeDiscount {
    return Intl.message(
      'قبل الخصم',
      name: 'beforeDiscount',
      desc: '',
      args: [],
    );
  }

  /// `الارسال الى مصر`
  String get sendToEgypt {
    return Intl.message(
      'الارسال الى مصر',
      name: 'sendToEgypt',
      desc: '',
      args: [],
    );
  }

  /// `المكافئات`
  String get rewards {
    return Intl.message('المكافئات', name: 'rewards', desc: '', args: []);
  }

  /// `تحديد مواعيد الارسال`
  String get determineSendingDates {
    return Intl.message(
      'تحديد مواعيد الارسال',
      name: 'determineSendingDates',
      desc: '',
      args: [],
    );
  }

  /// `وسائل الدفع`
  String get paymentMethods {
    return Intl.message(
      'وسائل الدفع',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `صندوق الرسائل`
  String get messageBox {
    return Intl.message(
      'صندوق الرسائل',
      name: 'messageBox',
      desc: '',
      args: [],
    );
  }

  /// `الاعدادات`
  String get settings {
    return Intl.message('الاعدادات', name: 'settings', desc: '', args: []);
  }

  /// `تفقد طلبك !`
  String get checkYourOrder {
    return Intl.message(
      'تفقد طلبك !',
      name: 'checkYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `سوف تحصل على +7 نقاط`
  String get youWillGetPoints {
    return Intl.message(
      'سوف تحصل على +7 نقاط',
      name: 'youWillGetPoints',
      desc: '',
      args: [],
    );
  }

  /// `لقد ارسلت`
  String get Isent {
    return Intl.message('لقد ارسلت', name: 'Isent', desc: '', args: []);
  }

  /// `ضرائب الدولة`
  String get stateTaxes {
    return Intl.message('ضرائب الدولة', name: 'stateTaxes', desc: '', args: []);
  }

  /// `سوف يتم استلام`
  String get willBeReceived {
    return Intl.message(
      'سوف يتم استلام',
      name: 'willBeReceived',
      desc: '',
      args: [],
    );
  }

  /// `تتم إضافة أرصدة فودافون مصر إلى رصيد دولي خاص لا يمكن استخدامه إلا للمكالمات`
  String get vodafoneEgyptCreditsAreAddedToSpec {
    return Intl.message(
      'تتم إضافة أرصدة فودافون مصر إلى رصيد دولي خاص لا يمكن استخدامه إلا للمكالمات',
      name: 'vodafoneEgyptCreditsAreAddedToSpec',
      desc: '',
      args: [],
    );
  }

  /// `إضافة برومو كود`
  String get addPromoCode {
    return Intl.message(
      'إضافة برومو كود',
      name: 'addPromoCode',
      desc: '',
      args: [],
    );
  }

  /// `تطبيق`
  String get apply {
    return Intl.message('تطبيق', name: 'apply', desc: '', args: []);
  }

  /// `إلغاء`
  String get cansel {
    return Intl.message('إلغاء', name: 'cansel', desc: '', args: []);
  }

  /// `اجمالي المبلغ`
  String get totalAmount {
    return Intl.message(
      'اجمالي المبلغ',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد الدفع`
  String get confirmPayment {
    return Intl.message(
      'تأكيد الدفع',
      name: 'confirmPayment',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
