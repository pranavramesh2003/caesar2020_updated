// Generated by gencpp from file navigation/dist_state.msg
// DO NOT EDIT!


#ifndef NAVIGATION_MESSAGE_DIST_STATE_H
#define NAVIGATION_MESSAGE_DIST_STATE_H

#include <ros/service_traits.h>


#include <navigation/dist_stateRequest.h>
#include <navigation/dist_stateResponse.h>


namespace navigation
{

struct dist_state
{

typedef dist_stateRequest Request;
typedef dist_stateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct dist_state
} // namespace navigation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::navigation::dist_state > {
  static const char* value()
  {
    return "af6d3a99f0fbeb66d3248fa4b3e675fb";
  }

  static const char* value(const ::navigation::dist_state&) { return value(); }
};

template<>
struct DataType< ::navigation::dist_state > {
  static const char* value()
  {
    return "navigation/dist_state";
  }

  static const char* value(const ::navigation::dist_state&) { return value(); }
};


// service_traits::MD5Sum< ::navigation::dist_stateRequest> should match
// service_traits::MD5Sum< ::navigation::dist_state >
template<>
struct MD5Sum< ::navigation::dist_stateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::navigation::dist_state >::value();
  }
  static const char* value(const ::navigation::dist_stateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::navigation::dist_stateRequest> should match
// service_traits::DataType< ::navigation::dist_state >
template<>
struct DataType< ::navigation::dist_stateRequest>
{
  static const char* value()
  {
    return DataType< ::navigation::dist_state >::value();
  }
  static const char* value(const ::navigation::dist_stateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::navigation::dist_stateResponse> should match
// service_traits::MD5Sum< ::navigation::dist_state >
template<>
struct MD5Sum< ::navigation::dist_stateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::navigation::dist_state >::value();
  }
  static const char* value(const ::navigation::dist_stateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::navigation::dist_stateResponse> should match
// service_traits::DataType< ::navigation::dist_state >
template<>
struct DataType< ::navigation::dist_stateResponse>
{
  static const char* value()
  {
    return DataType< ::navigation::dist_state >::value();
  }
  static const char* value(const ::navigation::dist_stateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // NAVIGATION_MESSAGE_DIST_STATE_H
