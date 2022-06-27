extension ListExtension<T> on List<T> {
  find(dynamicToBool) {
    try {
      return firstWhere(dynamicToBool);
    } catch (error) {}
  }

  findWithIndex(dynamicToBool) {
    try {
      final index = indexWhere(dynamicToBool);
      if (index == -1) return;
      return {"index": index, "value": elementAt(index)};
    } catch (error) {}
  }

  splitsInRangeOf(int n) {
    try {
      List<List<T>> lists = [];
      for (var i = 0; i < length; i += n) {
        int size = i + n;
        lists.add(sublist(i, size > length ? length : size));
      }
      return lists;
    } catch (error) {}
  }
}
