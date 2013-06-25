#include <iostream>
#include <iomanip>
using namespace std;

#include <tz.h>


void convert( tz &there, int year, int mon, int mday, int hour, int min )
{
  struct tm there_tm = there.local_time();
  there_tm.tm_isdst = -1;
  there_tm.tm_year = year-1900;
  there_tm.tm_mon = mon-1;
  there_tm.tm_mday = mday;
  there_tm.tm_hour = hour;
  there_tm.tm_min = min;
  there_tm.tm_sec = 0;
  there.set_local_time( there_tm );
  cout << there.tz_name() << ": " << there << endl;
  struct tm local = there.convert_from_there_to_here();
  const char* const reference = "America/Phoenix";
  tz ref( reference );
  cout << "here will be: " << asctime(&local) << endl;
}

void tester(
    const char* const start_tz, int start_year, int start_mon, int start_mday, int start_hour, int start_min,
    const char* const end_tz, int end_year, int end_mon, int end_mday, int end_hour, int end_min,
    const char* const local_time_zone
) {
  tz start( start_tz );
  convert( start, start_year, start_mon, start_mday, start_hour, start_min );

  tz end( end_tz );
  convert( end, end_year, end_mon, end_mday, end_hour, end_min );

  //cout << start_tz << ": " << start << endl;
  //start.set_tz_name( local_time_zone );
  //cout << "\t" << start << endl;
  //cout << end_tz << ": " << end << endl;
  //end.set_tz_name( local_time_zone );
  //cout << "\t" << end << endl;

  //const int pad = 25;
  //cout << setw(pad) << tz_str << ": ";
  ////for ( int i = pad; i-strlen(tz_str) > 0; i-- ) cout << ' ';
  //cout << date << '\n';
  ////for ( int i = pad; i > 0; i-- ) cout << ' ';
  //cout << setw(pad+2) << " " << "DST active: " << (date.dst_active()?"Yes":" No") << "; ";
  //const char* const reference = "America/Phoenix";
  //tz ref( reference );
  //cout << " hours from " << reference << ": " << setw(5) << (ref.time_diff( date )/3600.0) << "\n";

}

int main()
{
  /*
  Mon, Jul 8, 2013
Muscat, (MCT) to Phoenix Sky Harbor International Airport, (PHX)

Flight: 		United Flight 7685    operated by Swiss Intl Air Lines  (on Airbus A330-300)
Depart: 		11:35 PM, Muscat, Oman (MCT)
Arrive: 		06:20 AM, Zurich, Switzerland (ZRH)


1 Stop - change planes Dubai, United Arab Emirates (DXB) 


1 Stop - change planes in Zurich, (ZRH)
Connection Time:  6   hrs    35 mins 


Flight: 		United Flight 7680    operated by Swiss Intl Air Lines  (on Airbus A330-300)
Depart: 		12:55 PM, Zurich, Switzerland (ZRH)
Arrive: 		03:40 PM, Chicago, IL (ORD)



1 Stop - change planes in Chicago, (ORD)
Connection Time:  5   hrs    25 mins 


Flight: 		United Flight 1245    (on Boeing 737-900)
Depart: 		09:05 PM, Chicago, IL (ORD)
Arrive: 		10:54 PM, Next day Phoenix, AZ (PHX)

Requested Seats: 	23E, 24E 

Total Travel Time: 34 hrs 19 mins 
*/
  tester( "Asia/Muscat", 2013, 7, 8, 23, 35,
          "Europe/Zurich", 2013, 7, 9, 6, 20,
          "America/Phoenix"
  );
  tester( "Europe/Zurich", 2013, 7, 9, 12, 55,
          "America/Chicago", 2013, 7, 9, 15, 40,
          "America/Phoenix"
  );
  //tester( "America/Los_Angeles" );
  //tester( "America/Chicago" );
  //tester( "America/New_York" );
  //tester( "Europe/London" );
  //tester( "Europe/Paris" );
  //tester( "Asia/Shanghai" );
  //tester( "Australia/Sydney" );
  //tester( "Asia/Calcutta" );
  //tester( "GMT" );
  //tester( "UTC" );

  return 0;
}
