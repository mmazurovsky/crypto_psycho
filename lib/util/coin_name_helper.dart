import '../data/selected_coins.dart';

class CoinNameHelper {
  static String getListOfCoinIds(List<SelectedCoin> coins) {
    final listOfIds = coins.map((e) => e.id).toList();
    final string = listOfIds.join(',');
    return string;
  }
}
