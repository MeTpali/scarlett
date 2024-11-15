abstract class Jsons {
  static const base = 'assets/jsons';
  static const baseDialog = 'assets/jsons/dialogs';

  static const chats = '$base/chats.json';
  static String dialog(String id) => '$baseDialog/$id.json';
}
