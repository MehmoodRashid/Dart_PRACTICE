//Mehmood Rashid
//2380237

void main() {
  List<String> sentences = [
    "this is a test this is",
    "hello hello world",
    "dart is fun fun fun"
  ];

  for (int i = 0; i < sentences.length; i++) {
    String line = sentences[i].toLowerCase();

    List<String> words = line.split(' ');

    Map<String, int> frequency = {};

    for (String word in words) {
      frequency[word] = (frequency[word] ?? 0) + 1;
    }

    int maxFreq = frequency.values.reduce((a, b) => a > b ? a : b);

    List<String> highestWords = frequency.entries
        .where((entry) => entry.value == maxFreq)
        .map((entry) => entry.key)
        .toList();

    print('$highestWords appears $maxFreq times (in line ${i + 1})');
  }
}