#include <iostream>
using namespace std;

#include <tz.h>

void tester( const char* const tz_str )
{
  tz date( tz_str );
  struct tm t = date.local_time();

  cout << tz_str << ": \t";
  cout << "DST active: " << (date.dst_active()?"Yes":" No") << "; ";
  cout << asctime(&t);
}

int main()
{
  tester( "Australia/South" );
  tester( "Australia/North" );
  tester( "Australia/Sydney" );
  tester( "America/New_York" );
  tester( "America/Chicago" );
  tester( "America/Denver" );
  tester( "America/Los_Angeles" );
  tester( "Europe/London" );
  tester( "Europe/Paris" );
  tester( "Asia/Shanghai" );
  tester( "Asia/Aden" );

  return 0;
}
