#include <iostream>
#include <iomanip>
using namespace std;

#include <tz.h>

void die( const char* const msg )
{
  cerr << msg << endl << endl;
  cerr << "useage: flt label_start start_tz start_year start_month start_dayofmonth start_hour start_minute label_end end_tz end_year end_month end_dayofmonth end_hour end_minute local_tz" << endl;
  cerr << "example: flt takeoff Asia/Muscat 2013 7 8 23 35 land Europe/Zurich 2013 7 9 6 20 America/Phoenix" << endl;
  exit(-1);
}

void convert( const char*const label, tz &there, int year, int mon, int mday, int hour, int min, const char* const local_time_zone )
{
  struct tm there_tm = there.local_time();
  there_tm.tm_isdst = -1;
  there_tm.tm_year = year-1900;
  there_tm.tm_mon = mon-1;
  there_tm.tm_mday = mday;
  there_tm.tm_hour = hour;
  there_tm.tm_min = min;
  there_tm.tm_sec = 0;
  //strcpy( there_tm.tm_zone, there.tz_name().c_str() );
  //there_tm.tm_zone = 0;
  //there_tm.tm_zone[0] = 0;
  there.set_local_time( there_tm );

  cout << label << endl;
  cout << there.tz_name() << ": " << there << endl;

  tz here(there);
  struct tm local = here.convert_from_there_to_here();
  cout << "in " << local.tm_zone << " (current local timezone) time will be: " << asctime(&local);

  tz ref( local_time_zone );
  ref.set_local_time( there_tm ); // Set the reference timezone to the same date we are interested in so daylight savings time is correct.
  cout << " time difference (hours) from " << local_time_zone << " on " << there_tm.tm_year+1900 << '-' << setw(2) << setfill('0') << there_tm.tm_mon+1 << '-' << setw(2) << there_tm.tm_mday <<": " << setw(5) << setfill(' ') << (ref.time_diff( here )/3600.0) << "\n" << endl;
}

void calculate_flight(
    const char* label_start,
    const char* const start_tz, int start_year, int start_mon, int start_mday, int start_hour, int start_min,
    const char* label_end,
    const char* const end_tz, int end_year, int end_mon, int end_mday, int end_hour, int end_min,
    const char* const local_time_zone
) {
  tz start( start_tz );
  convert( label_start, start, start_year, start_mon, start_mday, start_hour, start_min, local_time_zone );

  tz end( end_tz );
  convert( label_end, end, end_year, end_mon, end_mday, end_hour, end_min, local_time_zone );

  cout << " hours from " << label_start << " in " << start.tz_name() << " to " << label_end << " in " << end.tz_name() << ": " << setw(5) << (float)(end.duration( start )/3600.0) << "\n" << endl;
}

int get_number( const char *const str ) {
  char *endptr;
  int number = strtol( str, &endptr, 10);
  if ( endptr == str ) {
    char msg[512];
    snprintf( msg, 512, "failed to parse '%s' as a number", str );
    die( msg );
  }
  return number;
}

int main( int argc, char *argv[] )
{
  if ( argc < 15 )
    die( "not enough input" );

  const char* label_start = argv[1];
  const char* start_tz = argv[2];
  int start_year = get_number( argv[3] );
  int start_month = get_number( argv[4] );
  int start_mday = get_number( argv[5] );
  int start_hour = get_number( argv[6] );
  int start_minute = get_number( argv[7] );
  const char* label_end = argv[8];
  const char* end_tz = argv[9];
  int end_year = get_number( argv[10] );
  int end_month = get_number( argv[11] );
  int end_mday = get_number( argv[12] );
  int end_hour = get_number( argv[13] );
  int end_minute = get_number( argv[14] );
  const char* local_tz = argv[15];

  calculate_flight(
      label_start, start_tz, start_year, start_month, start_mday, start_hour, start_minute,
      label_end, end_tz, end_year, end_month, end_mday, end_hour, end_minute,
      local_tz
  );

  return 0;
}
