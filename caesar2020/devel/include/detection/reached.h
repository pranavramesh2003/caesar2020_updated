// Generated by gencpp from file detection/reached.msg
// DO NOT EDIT!


#ifndef DETECTION_MESSAGE_REACHED_H
#define DETECTION_MESSAGE_REACHED_H

#include <ros/service_traits.h>


#include <detection/reachedRequest.h>
#include <detection/reachedResponse.h>


namespace detection
{

struct reached
{

typedef reachedRequest Request;
typedef reachedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct reached
} // namespace detection


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::detection::reached > {
  static const char* value()
  {
    return "c22f2a1ed8654a0b365f1bb3f7ff2c0f";
  }

  static const char* value(const ::detection::reached&) { return value(); }
};

template<>
struct DataType< ::detection::reached > {
  static const char* value()
  {
    return "detection/reached";
  }

  static const char* value(const ::detection::reached&) { return value(); }
};


// service_traits::MD5Sum< ::detection::reachedRequest> should match
// service_traits::MD5Sum< ::detection::reached >
template<>
struct MD5Sum< ::detection::reachedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::detection::reached >::value();
  }
  static const char* value(const ::detection::reachedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::detection::reachedRequest> should match
// service_traits::DataType< ::detection::reached >
template<>
struct DataType< ::detection::reachedRequest>
{
  static const char* value()
  {
    return DataType< ::detection::reached >::value();
  }
  static const char* value(const ::detection::reachedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::detection::reachedResponse> should match
// service_traits::MD5Sum< ::detection::reached >
template<>
struct MD5Sum< ::detection::reachedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::detection::reached >::value();
  }
  static const char* value(const ::detection::reachedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::detection::reachedResponse> should match
// service_traits::DataType< ::detection::reached >
template<>
struct DataType< ::detection::reachedResponse>
{
  static const char* value()
  {
    return DataType< ::detection::reached >::value();
  }
  static const char* value(const ::detection::reachedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DETECTION_MESSAGE_REACHED_H
