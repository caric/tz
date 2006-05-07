#include <tz.h>

//-----------------------------------------------------------------------------
tz::tz():
  m_local_secs(0),
  m_saved_old_tz_name(0)
{
  clear();
}

tz::tz( const std::string& tz_name ):
  m_local_secs(0),
  m_saved_old_tz_name(0)
{
  clear();
  set_tz_name( tz_name );
  now();
}

//-----------------------------------------------------------------------------
void tz::clear()
{
  m_tz_name.clear();
  memset( (void*)&m_local_time, 0, sizeof(struct tm) );
  m_local_time.tm_isdst = -1;
  m_local_secs = 0;
  m_saved_old_tz_name = 0;
}

//-----------------------------------------------------------------------------
void tz::switch_timezone()
{
  // Save old time zone.
  char *m_saved_old_tz_name = getenv("TZ");

  // Switch to the specified time zone.
  setenv( "TZ", (":" + m_tz_name).c_str(), 1 );
  tzset();
}

//-----------------------------------------------------------------------------
void tz::restore_timezone()
{
  if ( m_saved_old_tz_name )
    setenv("TZ", m_saved_old_tz_name, 1);
  else
    unsetenv("TZ");
  tzset();
}

bool tz::dst_active() const
{
  if ( m_local_time.tm_isdst > 0 )
    return true;
  else if ( m_local_time.tm_isdst == 0 )
    return false;
  else // < 0: unknown
    return false;
}

//-----------------------------------------------------------------------------
void tz::now()
{
  time_t current_secs = time(NULL);

  switch_timezone();

  // convert from utc to localtime.
  m_local_time = *localtime( &current_secs );
  m_local_time.tm_isdst = -1;
  m_local_secs = mktime( &m_local_time );

  restore_timezone();
}
