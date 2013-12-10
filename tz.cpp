#include <string.h>
#include <stdlib.h>

#include <tz.h>

//-----------------------------------------------------------------------------
tz::tz():
  m_gmt_secs(0),
  m_saved_old_tz_name(0),
  m_time_format(0),
  m_tz_abbrev(0)
{
  clear();
}

tz::tz( const std::string& tz_name ):
  m_gmt_secs(0),
  m_saved_old_tz_name(0),
  m_time_format(0),
  m_tz_abbrev(0)
{
  clear();
  set_tz_name( tz_name );
  now();
}

tz::tz( const tz& other ):
  m_tz_name( other.m_tz_name ),
  m_local_time( other.m_local_time ),
  m_gmt_secs( other.m_gmt_secs ),
  m_saved_old_tz_name( other.m_saved_old_tz_name ),
  m_time_format(0),
  m_tz_abbrev(0)
{
  if ( other.m_time_format )
  {
    m_time_format = new char[ strlen( other.m_time_format ) + 1 ];
    strncpy( m_time_format, other.m_time_format, strlen( other.m_time_format ) + 1 );
    m_time_format[ strlen( other.m_time_format ) ] = 0;
  }
  if ( other.m_tz_abbrev )
  {
    m_tz_abbrev = new char[ strlen( other.m_tz_abbrev ) + 1 ];
    strncpy( m_tz_abbrev, other.m_tz_abbrev, strlen( other.m_tz_abbrev ) + 1 );
    m_tz_abbrev[ strlen( other.m_tz_abbrev ) ] = 0;
  }
}

tz& tz::operator=(const tz& other)
{
  m_tz_name = other.m_tz_name;
  m_local_time = other.m_local_time;
  m_gmt_secs = other.m_gmt_secs;
  m_saved_old_tz_name = other.m_saved_old_tz_name;
  // TODO: delete[] m_time_format and m_tz_abbrev?
  m_time_format = 0;
  m_tz_abbrev = 0;
  if ( other.m_time_format )
  {
    m_time_format = new char[ strlen( other.m_time_format ) + 1 ];
    strncpy( m_time_format, other.m_time_format, strlen( other.m_time_format ) + 1 );
    m_time_format[ strlen( other.m_time_format ) ] = 0;
  }
  if ( other.m_tz_abbrev )
  {
    m_tz_abbrev = new char[ strlen( other.m_tz_abbrev ) + 1 ];
    strncpy( m_tz_abbrev, other.m_tz_abbrev, strlen( other.m_tz_abbrev ) + 1 );
    m_tz_abbrev[ strlen( other.m_tz_abbrev ) ] = 0;
  }
  return *this;
}

//-----------------------------------------------------------------------------
void tz::clear()
{
  m_tz_name.clear();
  memset( (void*)&m_local_time, 0, sizeof(struct tm) );
  m_local_time.tm_isdst = -1;
  m_gmt_secs = 0;
  m_saved_old_tz_name = 0;
  if ( m_time_format )
    delete[] m_time_format;
  m_time_format = new char[40];
  strcpy( m_time_format, "%a %b %d %k:%M:%S %Z %G" );
  if ( m_tz_abbrev )
    delete[] m_tz_abbrev;
  m_tz_abbrev = new char[16];
}

//-----------------------------------------------------------------------------
tz::~tz()
{
  clear();
  delete[] m_time_format;
  m_time_format = 0;
  delete[] m_tz_abbrev;
  m_tz_abbrev = 0;
}

//-----------------------------------------------------------------------------
std::ostream& operator<<( std::ostream& os, tz& the_tz )
{
  struct tm t = the_tz.local_time();
  const int max_length = 128;
  char buf[max_length];
  size_t length = strftime( buf, max_length, the_tz.time_format(), &t );
  os << buf;
  return os;
}

//-----------------------------------------------------------------------------
void tz::switch_timezone()
{
  // Save old time zone.
  m_saved_old_tz_name = getenv("TZ");

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

//-----------------------------------------------------------------------------
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
  m_gmt_secs = mktime( &m_local_time );
  strcpy( m_tz_abbrev, m_local_time.tm_zone );

  restore_timezone();
}

//-----------------------------------------------------------------------------
struct tm tz::convert_from_there_to_here()
{
  // first, switch and restore timezone so tm_zone is set correctly.
  switch_timezone();
  restore_timezone();
  // convert from utc to localtime.
  struct tm local = *localtime( &m_gmt_secs );
  return local;
}

//-----------------------------------------------------------------------------
void tz::set_time_format( const char* f )
{
  if ( m_time_format )
    delete[] m_time_format;
  const int max_length = 128;
  m_time_format = new char[ max_length ];
  strncpy( m_time_format, f, max_length );
  m_time_format[max_length-1] = 0;
}

//-----------------------------------------------------------------------------
void tz::set_local_time( const struct tm& t )
{
  m_local_time = t;
  m_local_time.tm_isdst = -1;
  switch_timezone();
  m_gmt_secs = mktime( &m_local_time );
  m_local_time.tm_isdst = -1;
  m_local_time = *localtime( &m_gmt_secs );
  strcpy( m_tz_abbrev, m_local_time.tm_zone );
  restore_timezone();
}

//-----------------------------------------------------------------------------
int tz::time_diff( const std::string& tz_name ) const
{
  tz there( tz_name );
  return time_diff( there );
}

int tz::time_diff( const tz& there ) const
{
  tz temp( there );
  temp.set_local_time( m_local_time );
  return m_gmt_secs - temp.m_gmt_secs; // reverse offset.
}
int tz::duration( const tz& there ) const
{
  return m_gmt_secs - there.m_gmt_secs; // reverse offset.
}
