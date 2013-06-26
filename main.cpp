#include <iostream>
#include <iomanip>
using namespace std;

#include <tz.h>

void tester( const char* const tz_str )
{
  tz date( tz_str );
  struct tm t = date.local_time();

  const int pad = 27;
  cout << setw(pad) << tz_str << ": ";
  //for ( int i = pad; i-strlen(tz_str) > 0; i-- ) cout << ' ';
  cout << date << '\n';
  //for ( int i = pad; i > 0; i-- ) cout << ' ';
  cout << setw(pad+2) << " " << "DST active: " << (date.dst_active()?"Yes":" No") << "; ";
  const char* const reference = "America/Phoenix";
  tz ref( reference );
  cout << " hours from " << reference << ": " << setw(5) << (ref.time_diff( date )/3600.0) << "\n";

}

int main()
{
  tester( "Pacific/Honolulu" );
  tester( "America/Los_Angeles" );
  tester( "America/Chicago" );
  tester( "America/New_York" );
  tester( "America/Kentucky/Louisville" );
  tester( "Europe/London" );
  tester( "Europe/Paris" );
  tester( "Asia/Muscat" );
  tester( "Asia/Calcutta" );
  tester( "Asia/Shanghai" );
  tester( "Australia/Sydney" );
  tester( "GMT" );
  tester( "UTC" );

  return 0;
}
