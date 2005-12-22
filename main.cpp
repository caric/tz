#include <iostream>
using namespace std;

#include <tz.h>

int main()
{
  tz date( "US/Eastern" );

  struct tm t = date.local_time();

  cout << asctime(&t);


  return 0;
}
