import 'package:test/test.dart';

import '../lib/src/sort_strategy.dart';
import '../lib/src/bubble_sort_strategy.dart';
import '../lib/src/merge_sort_strategy.dart';
import '../lib/src/quick_sort_strategy.dart';

void main(){
  group('Testes das implementações da Strategy de ordenação', () {
    test('Ordenação com Quick Sort retorna uma lista de inteiros ordenados', () {
      SortStrategy strategy = QuickSortStrategy();
      List<int> list = [0, 4, 7, 2, 3, 8, 55];

      List<int> sortedList = strategy.sortList(list);

      expect(sortedList, equals([0, 2, 3, 4, 7, 8, 55]));
    });

    test('Ordenação com Merge Sort retorna uma lista de inteiros ordenados', () {
      SortStrategy strategy = MergeSortStrategy();
      List<int> list = [0, 4, 7, 2, 3, 8, 55];

      List<int> sortedList = strategy.sortList(list);

      expect(sortedList, equals([0, 2, 3, 4, 7, 8, 55]));
    });

    test('Ordenação com Bubble Sort retorna uma lista de inteiros ordenados', () {
      SortStrategy strategy = BubbleSortStrategy();
      List<int> list = [0, 4, 7, 2, 3, 8, 55];

      List<int> sortedList = strategy.sortList(list);

      expect(sortedList, equals([0, 2, 3, 4, 7, 8, 55]));
    });
    // TODO: Fazer mais um teste
    test('Ordenação apenas com a interface Strategy retorna uma exceção', () {
      SortStrategy? strategy;
      List<int> list = [0, 4, 7, 2, 3, 8, 55];

      expect(strategy!.sortList(list), throwsException);
    });
    
  });
}
