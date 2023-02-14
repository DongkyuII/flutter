class Field {
  late String col1;
  late String col2;
  late String col3;
  late String col4;
  late String col5;
  late String col6;
  late String col7;
  late String col8;
  late String col9;
  late String col10;

  late String key;
  late String id;
  late String pw;
  late String nm;

  Field(
      {required this.col1,
      required this.col2,
      required this.col3,
      required this.col4,
      required this.col5,
      required this.col6,
      required this.col7,
      required this.col8,
      required this.col9,
      required this.col10,
      required this.key,
      required this.id,
      required this.pw,
      required this.nm});

  Field.formMap(Map<String, dynamic>? map) {
    col1 = map?['col1'] ?? '';
    col2 = map?['col2'] ?? '';
    col3 = map?['col3'] ?? '';
    col4 = map?['col4'] ?? '';
    col5 = map?['col5'] ?? '';
    col6 = map?['col6'] ?? '';
    col7 = map?['col7'] ?? '';
    col8 = map?['col8'] ?? '';
    col9 = map?['col9'] ?? '';
    col10 = map?['col10'] ?? '';
    key = map?['key'] ?? '';
    id = map?['id'] ?? '';
    pw = map?['pw'] ?? '';
    nm = map?['nm'] ?? '';
  }
}

class CommonCodeSearch {
  late String cd;
  late String nm;

  CommonCodeSearch({required this.cd, required this.nm});

  CommonCodeSearch.formMap(Map<String, dynamic>? map) {
    cd = map?['cd'] ?? '';
    nm = map?['nm'] ?? '';
  }
}

class CategorySearch {
  late int keys;
  late String item;
  late String id;

  CategorySearch({required this.keys, required this.item, required this.id});

  CategorySearch.formMap(Map<String, dynamic>? map) {
    keys = map?['keys'] ?? '';
    item = map?['item'] ?? '';
    id = map?['id'] ?? '';
  }
}

class CusttomerSearch {
  late int custId;
  late String custNm;
  late String custFiller;
  late int custReview;
  late int custLike;
  late int custStore;

  CusttomerSearch(
      {required this.custId,
      required this.custNm,
      required this.custFiller,
      required this.custReview,
      required this.custLike,
      required this.custStore});

  CusttomerSearch.formMap(Map<String, dynamic>? map) {
    custId = map?['CUST_ID'] ?? '';
    custNm = map?['CUST_NM'] ?? '';
    custFiller = map?['CUST_FILLER'] ?? '';
    custReview = map?['CUST_REVIEW'] ?? '';
    custLike = map?['CUST_LIKE'] ?? '';
    custStore = map?['CUST_STORE'] ?? '';
  }
}

class ChatSearch {
  late int chatId;
  late String chat;
  late String date;
  late String time;
  late String dayy;

  ChatSearch(
      {required this.chatId,
      required this.chat,
      required this.date,
      required this.time,
      required this.dayy});

  ChatSearch.formMap(Map<String, dynamic>? map) {
    chatId = map?['chatId'] ?? '';
    chat = map?['chat'] ?? '';
    date = map?['date'] ?? '';
    time = map?['time'] ?? '';
    dayy = map?['dayy'] ?? '';
  }
}

class UserSearch {
  late String id;
  late String pw;
  late String nm;

  UserSearch({
    required this.id,
    required this.pw,
    required this.nm,
  });

  UserSearch.formMap(Map<String, dynamic>? map) {
    id = map?['id'] ?? '';
    pw = map?['pw'] ?? '';
    nm = map?['nm'] ?? '';
  }
}

class StoreSearch {
  late String item;
  late String mony;
  late int qty;
  late int total;
  late String col1;

  StoreSearch(
      {required this.item,
      required this.mony,
      required this.qty,
      required this.total,
      required this.col1});

  StoreSearch.formMap(Map<String, dynamic>? map) {
    item = map?['item'] ?? '';
    mony = map?['mony'] ?? '';
    qty = map?['qty'] ?? '';
    total = map?['total'] ?? '';
    col1 = map?['col1'] ?? '';
  }
}

class EmailSearch {
  late String id;
  late String email;

  EmailSearch({
    required this.id,
    required this.email,
  });

  EmailSearch.formMap(Map<String, dynamic>? map) {
    id = map?['id'] ?? '';
    email = map?['email'] ?? '';
  }
}

class PurchaseFeild {
  late String item;
  late int qty;
  late int mony;
  late int total;
  late String col1;
  late String col2;
  late String col3;
  late String col4;
  late String col5;
  late String col6;
  late String col7;
  late String col8;
  late String col9;
  late String col10;

  PurchaseFeild({
    required this.item,
    required this.mony,
    required this.qty,
    required this.total,
    required this.col1,
  });

  PurchaseFeild.formMap(Map<String, dynamic>? map) {
    item = map?['item'] ?? '';
    mony = map?['mony'] ?? '';
    qty = map?['qty'] ?? '';
    total = map?['total'] ?? '';
    col1 = map?['col1'] ?? '';
    col2 = map?['col2'] ?? '';
    col3 = map?['col3'] ?? '';
    col4 = map?['col4'] ?? '';
    col5 = map?['col5'] ?? '';
    col6 = map?['col6'] ?? '';
    col7 = map?['col7'] ?? '';
    col8 = map?['col8'] ?? '';
    col9 = map?['col9'] ?? '';
    col10 = map?['col10'] ?? '';
  }
}

class Test {
  final String title;
  final String description;
  final String isbn;
  final String thumbnail;

  Test(
      {required this.title,
      required this.description,
      required this.isbn,
      required this.thumbnail});

  factory Test.fromJson(Map<String, dynamic> json) {
    return Test(
      title: json['title'],
      description: json['description'],
      isbn: json['isbn'],
      thumbnail: json['thumbnail'],
    );
  }
}
