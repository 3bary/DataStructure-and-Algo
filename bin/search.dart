int searchInListWithBinarySearch({required List<int> numbers,required int number}){
  if(numbers.isEmpty){
    return -1;
  }
  int high = numbers.length - 1;
  int low = 0;
  while(low <= high){
    int mid = (high + low) ~/ 2;
    if(number == numbers[mid]) {
      return mid;
    } else if(number < numbers[mid]) {
      low = mid + 1;
    } else{
      high = mid - 1;
    }
  }
  return -1;
}

int searchInListWithLinearSearch({required List<int> numbers,required int number}){
  if(numbers.isEmpty){
    return -1;
  }
  for(int i = 0;i<numbers.length;i++){
    if(number == numbers[i]){
      return i;
    }
  }
  return -1;
}
