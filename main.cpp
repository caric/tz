#include <iostream>
using namespace std;

#include <tz.h>

void tester( const char* const tz_str )
{
  tz date( tz_str );
  struct tm t = date.local_time();

  cout << tz_str << ' ';
  cout << asctime(&t);
  cout << date.dst_active() << endl;
}

int main()
{
  tester( "Australia/South" );
  tester( "Australia/North" );
  tester( "Australia/Sydney" );
  tester( "US/Eastern" );

  return 0;
}
