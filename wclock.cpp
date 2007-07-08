#include <vector>
#include <string>
#include <iomanip>
using namespace std;

#include <tz.h>

void display( tz& here, tz& there )
{
  cout << setw(20) << there.tz_name() << ": " << there << "; DST: " << there.dst_active() << "; hours from " << here.tz_name() << ": " << (here.time_diff( there )/3600.0) << '\n';
}

int main()
{
  tz here("/etc/localtime");

  string line;
  vector<tz> zones;
  while ( cin >> line )
  {
    tz z( line );
    zones.push_back( z );
  }

  for ( int i = 0; i < zones.size(); i++ )
  {
    display( here, zones[i] );
  }

  return 0;
}
