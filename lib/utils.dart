import 'package:intl/intl.dart';

class Utils {
  static String formatCurrency(int value) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'id_ID');
    return formatCurrency.format(value);
  }

  static String formatDate(DateTime date) {
    final formatDate = DateFormat('dd MMMM yyyy');
    return formatDate.format(date);
  }
}
