#include <iostream>
#include <iomanip>
using namespace std;
#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <strings.h>

#include <tz.h>

void die( const char* const msg )
{
  cerr << msg << endl << endl;
  cerr << "useage: when day(sun, mon, etc.) time" << endl;
  cerr << "example: when fri 15:47" << endl;
  exit(-1);
}

int day_of_the_week( const char *const arg )
{
  if ( !strncasecmp( "sun", arg, 3 ) )
    return 0;
  if ( !strncasecmp( "mon", arg, 3 ) )
    return 1;
  if ( !strncasecmp( "tue", arg, 3 ) )
    return 2;
  if ( !strncasecmp( "wed", arg, 3 ) )
    return 3;
  if ( !strncasecmp( "thu", arg, 3 ) )
    return 4;
  if ( !strncasecmp( "fri", arg, 3 ) )
    return 5;
  if ( !strncasecmp( "sat", arg, 3 ) )
    return 6;

  char msg[80];
  snprintf( msg, 80, "'%s' doesn't look like a day of the week.", arg );
  die( msg );
}

int main( int argc, char *argv[] )
{
  tz there( "Asia/Tokyo" );
  struct tm there_time = there.local_time();

  if ( argc < 3 )
    die( "tell the program the day and time you are interested in" );

  cout << "Now, there, it's " << there << endl;

  ///////////////////////////////////////////////////////////////////
  // process & convert arguments.
  int day = day_of_the_week( argv[1] );
  char *endptr;
  int hour = strtol(argv[2], &endptr, 10);
  int min = strtol(endptr+1, NULL, 10);

  ///////////////////////////////////////////////////////////////////
  // adjust the day of the month.
  int old_day = there_time.tm_wday;
  int day_diff = day - old_day;
  cout << day_diff << ' ';
  if ( day_diff <= 0 )
    day_diff = day_diff + 7;
  cout << day_diff << ' ' << endl;

  there_time.tm_mday += day_diff;
  there_time.tm_isdst = -1;

  ///////////////////////////////////////////////////////////////////
  // adjust the time of day.
  there_time.tm_hour = hour;
  there_time.tm_min = min;
  there_time.tm_sec = 0;

  ///////////////////////////////////////////////////////////////////
  // normalize the time.
  there.set_local_time( there_time );
  
  cout << "Then, and there, it will be " << there << endl;

  ///////////////////////////////////////////////////////////////////
  // convert it to local time.
  struct tm local = there.convert_from_there_to_here();
  cout << "Then, and here,  it will be " << asctime(&local) << endl;

  return 0;
}
