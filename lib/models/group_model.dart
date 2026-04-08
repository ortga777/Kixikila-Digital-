class Group {
  String id;
  String name;
  int amount;
  int membersCount;
  List<String> members;

  Group({
    required this.id,
    required this.name,
    required this.amount,
    required this.membersCount,
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'amount': amount,
      'membersCount': membersCount,
      'members': members,
    };
  }
}
