

List<int> winningNumber = [12,6,34,22,41,9];

void main(){
  List<int> ticket1 = [45,2,9,18,12,33];
  List<int> ticket2 = [41,17,26,32,7,35];


  checkNumber(ticket1);

}

void checkNumber(List<int> myNumbers){
  int count = 0;
  for(int win_num in winningNumber){
    for(int my_num in myNumbers){
      if(win_num == my_num){
        count++;
      }
    }


  }

    print('Your ticket have $count matching number');



}