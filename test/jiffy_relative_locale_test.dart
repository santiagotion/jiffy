import 'package:jiffy/jiffy.dart';
import 'package:test/test.dart';

void main() {
  group('Test for all relative date locales', () {
    var jiffy1 = Jiffy();
    var jiffy2 = Jiffy()..add(duration: Duration(seconds: 1));
    var jiffy3 = Jiffy()..subtract(duration: Duration(minutes: 1));
    var jiffy5 = Jiffy()..subtract(duration: Duration(minutes: 10));
    var jiffy6 = Jiffy()..subtract(duration: Duration(hours: 1));
    var jiffy7 = Jiffy()..subtract(duration: Duration(hours: 10));
    var jiffy8 = Jiffy()..subtract(duration: Duration(days: 1));
    var jiffy9 = Jiffy()..subtract(duration: Duration(days: 10));
    var jiffy10 = Jiffy()..subtract(months: 1);
    var jiffy11 = Jiffy()..subtract(months: 10);
    var jiffy12 = Jiffy()..subtract(years: 1);
    var jiffy13 = Jiffy()..subtract(years: 10);

    test("Test ar locale", () async {
      await Jiffy.locale("ar");
      expect(jiffy1.fromNow(), "منذ ثانية واحدة");
      expect(jiffy2.fromNow(), "بعد ثانية واحدة");
      expect(jiffy3.fromNow(), "منذ دقيقة واحدة");
      expect(jiffy5.fromNow(), "منذ ۱۰ دقائق ");
      expect(jiffy6.fromNow(), "منذ ساعة واحدة");
      expect(jiffy7.fromNow(), "منذ ۱۰ ساعات ");
      expect(jiffy8.fromNow(), "منذ يوم واحد");
      expect(jiffy9.fromNow(), "منذ ۱۰ ايام ");
      expect(jiffy10.fromNow(), "منذ شهر واحد");
      expect(jiffy11.fromNow(), "منذ ۱۰ اشهر ");
      expect(jiffy12.fromNow(), "منذ عام واحد");
      expect(jiffy13.fromNow(), "منذ ۱۰ أعوام ");
    });
    test("Test ar-dz/kw/ma/tn with no arabic numbers locale", () async {
      await Jiffy.locale("ar-dz");
      expect(jiffy1.fromNow(), "منذ ثوان");
      expect(jiffy2.fromNow(), "في ثوان");
      expect(jiffy3.fromNow(), "منذ دقيقة");
      expect(jiffy5.fromNow(), "منذ 10 دقائق ");
      expect(jiffy6.fromNow(), "منذ ساعة");
      expect(jiffy7.fromNow(), "منذ 10 ساعات ");
      expect(jiffy8.fromNow(), "منذ يوم");
      expect(jiffy9.fromNow(), "منذ 10 أيام ");
      expect(jiffy10.fromNow(), "منذ شهر");
      expect(jiffy11.fromNow(), "منذ 10 أشهر ");
      expect(jiffy12.fromNow(), "منذ سنة");
      expect(jiffy13.fromNow(), "منذ 10 سنوات ");
    });
    test("Test ar-sa with arabic numbers locale", () async {
      await Jiffy.locale("ar-sa");
      expect(jiffy1.fromNow(), "منذ ثوان");
      expect(jiffy2.fromNow(), "في ثوان");
      expect(jiffy3.fromNow(), "منذ دقيقة");
      expect(jiffy5.fromNow(), "منذ ۱۰ دقائق ");
      expect(jiffy6.fromNow(), "منذ ساعة");
      expect(jiffy7.fromNow(), "منذ ۱۰ ساعات ");
      expect(jiffy8.fromNow(), "منذ يوم");
      expect(jiffy9.fromNow(), "منذ ۱۰ أيام ");
      expect(jiffy10.fromNow(), "منذ شهر");
      expect(jiffy11.fromNow(), "منذ ۱۰ أشهر ");
      expect(jiffy12.fromNow(), "منذ سنة");
      expect(jiffy13.fromNow(), "منذ ۱۰ سنوات ");
    });
    test("Test de/de-at/de-ch locale", () async {
      await Jiffy.locale("de");
      expect(jiffy1.fromNow(), "vor ein paar Sekunden");
      expect(jiffy2.fromNow(), "in ein paar Sekunden");
      expect(jiffy3.fromNow(), "vor einer Minute");
      expect(jiffy5.fromNow(), "vor 10 Minuten");
      expect(jiffy6.fromNow(), "vor einer Stunde");
      expect(jiffy7.fromNow(), "vor 10 Stunden");
      expect(jiffy8.fromNow(), "vor einem Tag");
      expect(jiffy9.fromNow(), "vor 10 Tagen");
      expect(jiffy10.fromNow(), "vor einem Monat");
      expect(jiffy11.fromNow(), "vor 10 Monaten");
      expect(jiffy12.fromNow(), "vor einem Jahr");
      expect(jiffy13.fromNow(), "vor 10 Jahren");
    });
    test("Test en locale", () async {
      await Jiffy.locale("en");
      expect(jiffy1.fromNow(), "a few seconds ago");
      expect(jiffy2.fromNow(), "in a few seconds");
      expect(jiffy3.fromNow(), "a minute ago");
      expect(jiffy5.fromNow(), "10 minutes ago");
      expect(jiffy6.fromNow(), "an hour ago");
      expect(jiffy7.fromNow(), "10 hours ago");
      expect(jiffy8.fromNow(), "a day ago");
      expect(jiffy9.fromNow(), "10 days ago");
      expect(jiffy10.fromNow(), "a month ago");
      expect(jiffy11.fromNow(), "10 months ago");
      expect(jiffy12.fromNow(), "a year ago");
      expect(jiffy13.fromNow(), "10 years ago");
    });
    test("Test es locale", () async {
      await Jiffy.locale("es");
      expect(jiffy1.fromNow(), "hace un momento");
      expect(jiffy2.fromNow(), "en un momento");
      expect(jiffy3.fromNow(), "hace un minuto");
      expect(jiffy5.fromNow(), "hace 10 minutos");
      expect(jiffy6.fromNow(), "hace una hora");
      expect(jiffy7.fromNow(), "hace 10 horas");
      expect(jiffy8.fromNow(), "hace un día");
      expect(jiffy9.fromNow(), "hace 10 días");
      expect(jiffy10.fromNow(), "hace un mes");
      expect(jiffy11.fromNow(), "hace 10 meses");
      expect(jiffy12.fromNow(), "hace un año");
      expect(jiffy13.fromNow(), "hace 10 años");
    });
    test("Test fr locale", () async {
      await Jiffy.locale("fr");
      expect(jiffy1.fromNow(), "il y a quelques secondes");
      expect(jiffy2.fromNow(), "dans quelques secondes");
      expect(jiffy3.fromNow(), "il y a une minute");
      expect(jiffy5.fromNow(), "il y a 10 minutes");
      expect(jiffy6.fromNow(), "il y a une heure");
      expect(jiffy7.fromNow(), "il y a 10 heures");
      expect(jiffy8.fromNow(), "il y a un jour");
      expect(jiffy9.fromNow(), "il y a 10 jours");
      expect(jiffy10.fromNow(), "il y a un mois");
      expect(jiffy11.fromNow(), "il y a 10 mois");
      expect(jiffy12.fromNow(), "il y a un an");
      expect(jiffy13.fromNow(), "il y a 10 ans");
    });
    test("Test hi locale", () async {
      await Jiffy.locale("hi");
      expect(jiffy1.fromNow(), "कुछ ही क्षण पहले");
      expect(jiffy2.fromNow(), "कुछ ही क्षण में");
      expect(jiffy3.fromNow(), "एक मिनट पहले");
      expect(jiffy5.fromNow(), "१० मिनट पहले");
      expect(jiffy6.fromNow(), "एक घंटा पहले");
      expect(jiffy7.fromNow(), "१० घंटे पहले");
      expect(jiffy8.fromNow(), "एक दिन पहले");
      expect(jiffy9.fromNow(), "१० दिन पहले");
      expect(jiffy10.fromNow(), "एक महीने पहले");
      expect(jiffy11.fromNow(), "१० महीने पहले");
      expect(jiffy12.fromNow(), "एक वर्ष पहले");
      expect(jiffy13.fromNow(), "१० वर्ष पहले");
    });
    test("Test it locale", () async {
      await Jiffy.locale("it");
      expect(jiffy1.fromNow(), "alcuni secondi fa");
      expect(jiffy2.fromNow(), "tra alcuni secondi");
      expect(jiffy3.fromNow(), "un minuto fa");
      expect(jiffy5.fromNow(), "10 minuti fa");
      expect(jiffy6.fromNow(), "un'ora fa");
      expect(jiffy7.fromNow(), "10 ore fa");
      expect(jiffy8.fromNow(), "un giorno fa");
      expect(jiffy9.fromNow(), "10 giorni fa");
      expect(jiffy10.fromNow(), "un mese fa");
      expect(jiffy11.fromNow(), "10 mesi fa");
      expect(jiffy12.fromNow(), "un anno fa");
      expect(jiffy13.fromNow(), "10 anni fa");
    });
    test("Test ja locale", () async {
      await Jiffy.locale("ja");
      expect(jiffy1.fromNow(), "数秒前");
      expect(jiffy2.fromNow(), "数秒後");
      expect(jiffy3.fromNow(), "1分前");
      expect(jiffy5.fromNow(), "10分前");
      expect(jiffy6.fromNow(), "1時間前");
      expect(jiffy7.fromNow(), "10時間前");
      expect(jiffy8.fromNow(), "1日前");
      expect(jiffy9.fromNow(), "10日前");
      expect(jiffy10.fromNow(), "1ヶ月前");
      expect(jiffy11.fromNow(), "10ヶ月前");
      expect(jiffy12.fromNow(), "1年前");
      expect(jiffy13.fromNow(), "10年前");
    });
    test("Test ko locale", () async {
      await Jiffy.locale("ko");
      expect(jiffy1.fromNow(), "몇 초 전");
      expect(jiffy2.fromNow(), "몇 초 후");
      expect(jiffy3.fromNow(), "1분 전");
      expect(jiffy5.fromNow(), "10분 전");
      expect(jiffy6.fromNow(), "한 시간 전");
      expect(jiffy7.fromNow(), "10시간 전");
      expect(jiffy8.fromNow(), "하루 전");
      expect(jiffy9.fromNow(), "10일 전");
      expect(jiffy10.fromNow(), "한 달 전");
      expect(jiffy11.fromNow(), "10달 전");
      expect(jiffy12.fromNow(), "일 년 전");
      expect(jiffy13.fromNow(), "10년 전");
    });
    test("Test pt locale", () async {
      await Jiffy.locale("pt");
      expect(jiffy1.fromNow(), "há segundos");
      expect(jiffy2.fromNow(), "em segundos");
      expect(jiffy3.fromNow(), "há um minuto");
      expect(jiffy5.fromNow(), "há 10 minutos");
      expect(jiffy6.fromNow(), "há uma hora");
      expect(jiffy7.fromNow(), "há 10 horas");
      expect(jiffy8.fromNow(), "há um dia");
      expect(jiffy9.fromNow(), "há 10 dias");
      expect(jiffy10.fromNow(), "há um mês");
      expect(jiffy11.fromNow(), "há 10 meses");
      expect(jiffy12.fromNow(), "há um ano");
      expect(jiffy13.fromNow(), "há 10 anos");
    });
    test("Test ru locale", () async {
      await Jiffy.locale("ru");
      expect(jiffy1.fromNow(), "несколько секунд назад");
      expect(jiffy2.fromNow(), "через несколько секунд");
      expect(jiffy3.fromNow(), "минуту назад");
      expect(jiffy5.fromNow(), "10 минут назад");
      expect(jiffy6.fromNow(), "час назад");
      expect(jiffy7.fromNow(), "10 часов назад");
      expect(jiffy8.fromNow(), "день назад");
      expect(jiffy9.fromNow(), "10 дней назад");
      expect(jiffy10.fromNow(), "месяц назад");
      expect(jiffy11.fromNow(), "10 месяцев назад");
      expect(jiffy12.fromNow(), "год назад");
      expect(jiffy13.fromNow(), "10 лет назад");
    });
    test("Test zh-cn locale", () async {
      await Jiffy.locale("zh");
      expect(jiffy1.fromNow(), "几秒前");
      expect(jiffy2.fromNow(), "几秒内");
      expect(jiffy3.fromNow(), "1 分钟前");
      expect(jiffy5.fromNow(), "10 分钟前");
      expect(jiffy6.fromNow(), "1 小时前");
      expect(jiffy7.fromNow(), "10 小时前");
      expect(jiffy8.fromNow(), "1 天前");
      expect(jiffy9.fromNow(), "10 天前");
      expect(jiffy10.fromNow(), "1 个月前");
      expect(jiffy11.fromNow(), "10 个月前");
      expect(jiffy12.fromNow(), "1 年前");
      expect(jiffy13.fromNow(), "10 年前");
    });
    test("Test zh-hk/tw locale", () async {
      await Jiffy.locale("zh-hk");
      expect(jiffy1.fromNow(), "幾秒前");
      expect(jiffy2.fromNow(), "幾秒内");
      expect(jiffy3.fromNow(), "1 分鐘前");
      expect(jiffy5.fromNow(), "10 分鐘前");
      expect(jiffy6.fromNow(), "1 小時前");
      expect(jiffy7.fromNow(), "10 小時前");
      expect(jiffy8.fromNow(), "1 天前");
      expect(jiffy9.fromNow(), "10 天前");
      expect(jiffy10.fromNow(), "1 個月前");
      expect(jiffy11.fromNow(), "10 個月前");
      expect(jiffy12.fromNow(), "1 年前");
      expect(jiffy13.fromNow(), "10 年前");
    });
  });
}
