// Note: Jika hanya cukup field dapat di set dan get atau tidak ada perubahan di setter, maka cukup gunakan field saja.
class Post {
  final int? _id;
  String? _title;

  Post(this._id, this._title);

  int? get id {
    return _id;
  }

  String? get title {
    return _title;
  }

  set title (String? title) {
    _title = _title;
  }
}