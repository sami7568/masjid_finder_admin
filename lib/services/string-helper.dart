class StringHelper {
  wordCapitalize(String s) {
//    print('In Capitalize');
    if (s != null && s.length > 0) {
      final updatedString = '${s[0].toUpperCase()}${s.substring(1)}';
//      print('Update name : $updatedString');
      return updatedString;
    } else {
      return s;
    }
  }

  firstTwoNames(str) {
    return str.split(' ').length > 0
        ? '${str.split(' ')[0]} ${str.split(' ')[1]}'
        : str;
  }

  nameSize(str) {
    final String result = firstTwoNames(str);
    return result.length;
  }

  addCommasToNumber(str) {
    RegExp reg = new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    Function mathFunc = (Match match) => '${match[1]},';

//    List<String> tests = [
//      '0',
//      '10',
//      '123',
//      '1230',
//      '12300',
//      '123040',
//      '12k',
//      '12 ',
//    ];

//    tests.forEach((String test) {
//      String result = test.replaceAllMapped(reg, mathFunc);
//      print('$test -> $result');
//    });
    String result = str.replaceAllMapped(reg, mathFunc);
    print('Price with commas: $result');
    return result;
  }
}