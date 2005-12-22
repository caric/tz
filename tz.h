#ifndef __TZ_H___
#define __TZ_H___

#include <string>

#include <time.h>

class tz
{
public:
  tz();
  tz( const std::string& tz_name );

  // accessors
  std::string tz_name() const { return m_tz_name; }
  struct tm local_time() const { return m_local_time; }
  bool dst_active() const { return m_local_time.tm_isdst; }

  // mutators
  void set_tz_name( const std::string& tz ) { m_tz_name = tz; }

  // Set this object to the current time.
  // uses the time in the local zone, converts it to UTC,
  // then converts that UTC to the local time in the m_tz_name zone.
  void now();

protected:
  std::string m_tz_name;
  struct tm m_local_time;
  time_t m_local_secs;
  char* m_saved_old_tz_name;

  void clear();

  void switch_timezone();
  void restore_timezone();

private:
  // make these private until we need them. 
  // This ensures we won't accidentally get a default implementation.
  tz& operator=(const tz&);
  tz( const tz& );
};

#endif //  __TZ_H___
