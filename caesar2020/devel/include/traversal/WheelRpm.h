// Generated by gencpp from file traversal/WheelRpm.msg
// DO NOT EDIT!


#ifndef TRAVERSAL_MESSAGE_WHEELRPM_H
#define TRAVERSAL_MESSAGE_WHEELRPM_H


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
struct WheelRpm_
{
  typedef WheelRpm_<ContainerAllocator> Type;

  WheelRpm_()
    : vel(0)
    , omega(0)
    , hb(false)  {
    }
  WheelRpm_(const ContainerAllocator& _alloc)
    : vel(0)
    , omega(0)
    , hb(false)  {
  (void)_alloc;
    }



   typedef int16_t _vel_type;
  _vel_type vel;

   typedef int16_t _omega_type;
  _omega_type omega;

   typedef uint8_t _hb_type;
  _hb_type hb;





  typedef boost::shared_ptr< ::traversal::WheelRpm_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::traversal::WheelRpm_<ContainerAllocator> const> ConstPtr;

}; // struct WheelRpm_

typedef ::traversal::WheelRpm_<std::allocator<void> > WheelRpm;

typedef boost::shared_ptr< ::traversal::WheelRpm > WheelRpmPtr;
typedef boost::shared_ptr< ::traversal::WheelRpm const> WheelRpmConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::traversal::WheelRpm_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::traversal::WheelRpm_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::traversal::WheelRpm_<ContainerAllocator1> & lhs, const ::traversal::WheelRpm_<ContainerAllocator2> & rhs)
{
  return lhs.vel == rhs.vel &&
    lhs.omega == rhs.omega &&
    lhs.hb == rhs.hb;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::traversal::WheelRpm_<ContainerAllocator1> & lhs, const ::traversal::WheelRpm_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace traversal

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::traversal::WheelRpm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::traversal::WheelRpm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::WheelRpm_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::traversal::WheelRpm_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::WheelRpm_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::traversal::WheelRpm_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::traversal::WheelRpm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "524ce3b1091d34ce15083042edf1da49";
  }

  static const char* value(const ::traversal::WheelRpm_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x524ce3b1091d34ceULL;
  static const uint64_t static_value2 = 0x15083042edf1da49ULL;
};

template<class ContainerAllocator>
struct DataType< ::traversal::WheelRpm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "traversal/WheelRpm";
  }

  static const char* value(const ::traversal::WheelRpm_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::traversal::WheelRpm_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 vel\n"
"int16 omega\n"
"bool hb\n"
;
  }

  static const char* value(const ::traversal::WheelRpm_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::traversal::WheelRpm_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vel);
      stream.next(m.omega);
      stream.next(m.hb);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WheelRpm_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::traversal::WheelRpm_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::traversal::WheelRpm_<ContainerAllocator>& v)
  {
    s << indent << "vel: ";
    Printer<int16_t>::stream(s, indent + "  ", v.vel);
    s << indent << "omega: ";
    Printer<int16_t>::stream(s, indent + "  ", v.omega);
    s << indent << "hb: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hb);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRAVERSAL_MESSAGE_WHEELRPM_H