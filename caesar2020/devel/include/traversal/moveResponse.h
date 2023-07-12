// Generated by gencpp from file traversal/moveResponse.msg
// DO NOT EDIT!


#ifndef TRAVERSAL_MESSAGE_MOVERESPONSE_H
#define TRAVERSAL_MESSAGE_MOVERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace traversal
{
template <class ContainerAllocator>
struct moveResponse_
{
  typedef moveResponse_<ContainerAllocator> Type;

  moveResponse_()
    : result()  {
    }
  moveResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::traversal::moveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traversal::moveResponse_<ContainerAllocator> const> ConstPtr;

}; // struct moveResponse_

typedef ::traversal::moveResponse_<std::allocator<void> > moveResponse;

typedef boost::shared_ptr< ::traversal::moveResponse > moveResponsePtr;
typedef boost::shared_ptr< ::traversal::moveResponse const> moveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traversal::moveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traversal::moveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traversal::moveResponse_<ContainerAllocator1> & lhs, const ::traversal::moveResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traversal::moveResponse_<ContainerAllocator1> & lhs, const ::traversal::moveResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traversal

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traversal::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traversal::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::moveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::moveResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::moveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::moveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traversal::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c22f2a1ed8654a0b365f1bb3f7ff2c0f";
  }

  static const char* value(const ::traversal::moveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc22f2a1ed8654a0bULL;
  static const uint64_t static_value2 = 0x365f1bb3f7ff2c0fULL;
};

template<class ContainerAllocator>
struct DataType< ::traversal::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traversal/moveResponse";
  }

  static const char* value(const ::traversal::moveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traversal::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string result\n"
"\n"
;
  }

  static const char* value(const ::traversal::moveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traversal::moveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traversal::moveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traversal::moveResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAVERSAL_MESSAGE_MOVERESPONSE_H