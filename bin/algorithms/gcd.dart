int gcd(int a, int b){
  if(b == 0) {
    return a;
  }
  else{
    int r = a%b;
    if(r != 0){
      return gcd(b,r);
    }
    else {
      return b;
    }
  }
}