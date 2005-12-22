#include <iostream>
using namespace std;

#include <tz.h>

int main()
{
  //tz date( "Australia/Southern" );
  tz date( "US/Eastern" );
  //tz date( "US/Eastern" );

  struct tm t = date.local_time();

  cout << asctime(&t);
  cout << date.dst_active() << endl;


  return 0;
}
