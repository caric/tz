#ifndef __TZ_H___
#define __TZ_H___

#include <string>
#include <iostream>

#include <time.h>

class tz
{
public:
  tz();
  tz( const std::string& tz_name );
  tz( const tz& );
  tz& operator=(const tz&);
  ~tz();

  // accessors
  std::string tz_name() const { return m_tz_name; }
  struct tm local_time() const { return m_local_time; }
  bool dst_active() const;
  const char* time_format() const { return m_time_format; }
  struct tm convert_from_there_to_here() const;

  // mutators
  void set_tz_name( const std::string& tz ) { m_tz_name = tz; }
  void set_local_time( const struct tm& t );
  void set_time_format( const char* );

  // Set this object to the current time.
  // uses the time in the local zone, converts it to UTC,
  // then converts that UTC to the local time in the m_tz_name zone.
  void now();

  // calculate the number of seconds difference (at the *this object's stored
  // time) from the *this timezone to 'there'.
  // example:
  //  tz phoenix( "America/Phoenix" );
  //  tz chicago( "America/Chicago" );
  //  cout << phoenix.time_diff( chicago ) << endl;
  // will output either 3600 or 7200 (depending on DST).
  //  cout << chicago.time_diff( phoenix ) << endl;
  // will output either -3600 or -7200.
  int time_diff( const std::string& tz_name ) const;
  int time_diff( const tz& there ) const;

protected:
  std::string m_tz_name;
  struct tm m_local_time;
  time_t m_gmt_secs;
  char* m_saved_old_tz_name;
  char* m_time_format; // for strftime.

  void clear();

  void switch_timezone();
  void restore_timezone();

private:

friend std::ostream& operator<<( std::ostream&, const tz&);
};

std::ostream& operator<<( std::ostream&, const tz&);

#endif //  __TZ_H___
