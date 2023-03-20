/// All data models should extend from this class and imlement `fromJson`
/// in order to decode from `JSON`
abstract class BaseModel<T> {
  T fromJson(Map<String, dynamic> json);
}
