var letter_map = {
  A: 10,
  B: 11,
  C: 12,
  D: 13,
  E: 14,
  F: 15,
  G: 16,
  H: 17,
  I: 18,
  J: 19,
  K: 20,
  L: 21,
  M: 22,
  N: 23,
  O: 24,
  P: 25,
  Q: 26,
  R: 27,
  S: 28,
  T: 29,
  U: 30,
  V: 31,
  W: 32,
  X: 33,
  Y: 34,
  Z: 35,
};
String.prototype.bankAccountKey = function () {
  var str = this.toString(),
    deb,
    rst;
  while (((deb = str.substr(0, 12)), (str = str.substr(12)))) {
    str = (deb % 97).toString() + str;
  }
  rst = 98 - (str % 97);
  return rst < 10 ? '0' + rst : '' + rst;
};

function num_gen3(span) {
  var num2 = '';
  for (var i = 0; i < span; i++) {
    num2 += Math.floor(Math.random() * 10); // Generates a random digit (0-9)
  }
  return num2;
}

function calcChecksum(countryCode, randomPart) {
  var checkString = randomPart + countryCode + '00';
  checkString = replaceChars(checkString);
  var num = BigInt(checkString) % 97n;
  var checksum = (98n - num).toString().padStart(2, '0');
  return checksum;
}

function replaceChars(conv_string) {
  for (i = 0; i < conv_string.length; i++) {
    var conv_char = conv_string[i];
    if (conv_char in letter_map) {
      var IBAN_conv = letter_map[conv_char];
      conv_string = conv_string.replace(conv_char, IBAN_conv.toString());
    }
  }
  return conv_string;
}
function generateGermanIBAN() {
  var DE_randomPart = '50010517' + num_gen3(10);
  var DE_IBAN = calcChecksum('DE', DE_randomPart);
  return 'DE' + DE_IBAN + DE_randomPart;
}

var germanIBAN = generateGermanIBAN();
console.log(germanIBAN);
