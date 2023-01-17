import 'package:intl/intl.dart';

class ItemModel {
  final String title;
  final String id;
  final String imageURL;
  final DateTime releaseDate;

  ItemModel({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.releaseDate,
  });

  String daysleft() {
    return releaseDate.difference(DateTime.now()).inDays.toString();
  }

  String releaseDateFormatted() {
    return DateFormat.yMMMMEEEEd().format(releaseDate);
  }
}
