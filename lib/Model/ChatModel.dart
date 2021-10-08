// @dart=2.9
class ChatModel {
  String name;
  String icon;
  String time;
  bool isGroup;
  String currentMessage;
  String staus;
  bool select = false;

  ChatModel(
      {
      this.select=false,
      this.staus,
      this.name,
      this.icon,
      this.time,
      this.isGroup,
      this.currentMessage});
}
