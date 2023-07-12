// Generated by gencpp from file traversal/user_input.msg
// DO NOT EDIT!


#ifndef TRAVERSAL_MESSAGE_USER_INPUT_H
#define TRAVERSAL_MESSAGE_USER_INPUT_H

#include <ros/service_traits.h>


#include <traversal/user_inputRequest.h>
#include <traversal/user_inputResponse.h>


namespace traversal
{

struct user_input
{

typedef user_inputRequest Request;
typedef user_inputResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct user_input
} // namespace traversal


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::traversal::user_input > {
  static const char* value()
  {
    return "932d3fdf41ce458ae95bf92e0b793237";
  }

  static const char* value(const ::traversal::user_input&) { return value(); }
};

template<>
struct DataType< ::traversal::user_input > {
  static const char* value()
  {
    return "traversal/user_input";
  }

  static const char* value(const ::traversal::user_input&) { return value(); }
};


// service_traits::MD5Sum< ::traversal::user_inputRequest> should match
// service_traits::MD5Sum< ::traversal::user_input >
template<>
struct MD5Sum< ::traversal::user_inputRequest>
{
  static const char* value()
  {
    return MD5Sum< ::traversal::user_input >::value();
  }
  static const char* value(const ::traversal::user_inputRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::traversal::user_inputRequest> should match
// service_traits::DataType< ::traversal::user_input >
template<>
struct DataType< ::traversal::user_inputRequest>
{
  static const char* value()
  {
    return DataType< ::traversal::user_input >::value();
  }
  static const char* value(const ::traversal::user_inputRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::traversal::user_inputResponse> should match
// service_traits::MD5Sum< ::traversal::user_input >
template<>
struct MD5Sum< ::traversal::user_inputResponse>
{
  static const char* value()
  {
    return MD5Sum< ::traversal::user_input >::value();
  }
  static const char* value(const ::traversal::user_inputResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::traversal::user_inputResponse> should match
// service_traits::DataType< ::traversal::user_input >
template<>
struct DataType< ::traversal::user_inputResponse>
{
  static const char* value()
  {
    return DataType< ::traversal::user_input >::value();
  }
  static const char* value(const ::traversal::user_inputResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TRAVERSAL_MESSAGE_USER_INPUT_H
