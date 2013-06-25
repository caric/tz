#include <iostream>
#include <iomanip>
using namespace std;

#include <tz.h>


void convert( const char*const label, tz &there, int year, int mon, int mday, int hour, int min )
{
  struct tm there_tm = there.local_time();
  there_tm.tm_isdst = -1;
  there_tm.tm_year = year-1900;
  there_tm.tm_mon = mon-1;
  there_tm.tm_mday = mday;
  there_tm.tm_hour = hour;
  there_tm.tm_min = min;
  there_tm.tm_sec = 0;
  //there_tm.tm_zone = 0;
  there.set_local_time( there_tm );

  cout << label << endl;
  cout << there.tz_name() << ": " << there << endl;

  tz here(there);
  struct tm local = here.convert_from_there_to_here();
  const char* const reference = "America/Phoenix";
  tz ref( reference );
  cout << "in " << reference << " time will be: " << asctime(&local);
  cout << " time difference (hours) from " << reference << ": " << setw(5) << (ref.time_diff( here )/3600.0) << "\n" << endl;
}

void calculate_flight(
    const char* label_start,
    const char* const start_tz, int start_year, int start_mon, int start_mday, int start_hour, int start_min,
    const char* label_end,
    const char* const end_tz, int end_year, int end_mon, int end_mday, int end_hour, int end_min,
    const char* const local_time_zone
) {
  tz start( start_tz );
  convert( label_start, start, start_year, start_mon, start_mday, start_hour, start_min );

  tz end( end_tz );
  convert( label_end, end, end_year, end_mon, end_mday, end_hour, end_min );

  cout << " hours from " << label_start << " in " << start.tz_name() << " to " << label_end << " in " << end.tz_name() << ": " << setw(5) << (float)(end.duration( start )/3600.0) << "\n" << endl;
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
  // fly from oman to zurich
  calculate_flight(
          "takeoff", "Asia/Muscat", 2013, 7, 8, 23, 35,
          "land", "Europe/Zurich", 2013, 7, 9, 6, 20,
          "America/Phoenix"
  );
  //wait in zurich
  calculate_flight(
          "land", "Europe/Zurich", 2013, 7, 9, 6, 20,
          "takeoff", "Europe/Zurich", 2013, 7, 9, 12, 55,
          "America/Phoenix"
  );
  // fly from zurich to chicago
  calculate_flight(
          "takeoff", "Europe/Zurich", 2013, 7, 9, 12, 55,
          "land", "America/Chicago", 2013, 7, 9, 15, 40,
          "America/Phoenix"
  );
  // wait in chicago
  calculate_flight(
          "land", "America/Chicago", 2013, 7, 9, 15, 40,
          "takeoff", "America/Chicago", 2013, 7, 9, 21, 5,
          "America/Phoenix"
  );
  // fly from chicago to phoenix
  calculate_flight(
          "takeoff", "America/Chicago", 2013, 7, 9, 21, 5,
          "land", "America/Phoenix", 2013, 7, 9, 22, 54,
          "America/Phoenix"
  );
  return 0;
}
