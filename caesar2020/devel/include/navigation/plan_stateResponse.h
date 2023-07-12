// Generated by gencpp from file navigation/plan_stateResponse.msg
// DO NOT EDIT!


#ifndef NAVIGATION_MESSAGE_PLAN_STATERESPONSE_H
#define NAVIGATION_MESSAGE_PLAN_STATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace navigation
{
template <class ContainerAllocator>
struct plan_stateResponse_
{
  typedef plan_stateResponse_<ContainerAllocator> Type;

  plan_stateResponse_()
    : state()  {
    }
  plan_stateResponse_(const ContainerAllocator& _alloc)
    : state(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::navigation::plan_stateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation::plan_stateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct plan_stateResponse_

typedef ::navigation::plan_stateResponse_<std::allocator<void> > plan_stateResponse;

typedef boost::shared_ptr< ::navigation::plan_stateResponse > plan_stateResponsePtr;
typedef boost::shared_ptr< ::navigation::plan_stateResponse const> plan_stateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation::plan_stateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation::plan_stateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navigation::plan_stateResponse_<ContainerAllocator1> & lhs, const ::navigation::plan_stateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navigation::plan_stateResponse_<ContainerAllocator1> & lhs, const ::navigation::plan_stateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::navigation::plan_stateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::plan_stateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::plan_stateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::plan_stateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::plan_stateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::plan_stateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation::plan_stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "af6d3a99f0fbeb66d3248fa4b3e675fb";
  }

  static const char* value(const ::navigation::plan_stateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaf6d3a99f0fbeb66ULL;
  static const uint64_t static_value2 = 0xd3248fa4b3e675fbULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation::plan_stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation/plan_stateResponse";
  }

  static const char* value(const ::navigation::plan_stateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation::plan_stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string state\n"
"\n"
;
  }

  static const char* value(const ::navigation::plan_stateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation::plan_stateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct plan_stateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation::plan_stateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation::plan_stateResponse_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_MESSAGE_PLAN_STATERESPONSE_H
