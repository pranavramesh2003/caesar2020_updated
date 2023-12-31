// Generated by gencpp from file navigation/Enc_dist.msg
// DO NOT EDIT!


#ifndef NAVIGATION_MESSAGE_ENC_DIST_H
#define NAVIGATION_MESSAGE_ENC_DIST_H


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
struct Enc_dist_
{
  typedef Enc_dist_<ContainerAllocator> Type;

  Enc_dist_()
    : dist(0.0)  {
    }
  Enc_dist_(const ContainerAllocator& _alloc)
    : dist(0.0)  {
  (void)_alloc;
    }



   typedef double _dist_type;
  _dist_type dist;





  typedef boost::shared_ptr< ::navigation::Enc_dist_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navigation::Enc_dist_<ContainerAllocator> const> ConstPtr;

}; // struct Enc_dist_

typedef ::navigation::Enc_dist_<std::allocator<void> > Enc_dist;

typedef boost::shared_ptr< ::navigation::Enc_dist > Enc_distPtr;
typedef boost::shared_ptr< ::navigation::Enc_dist const> Enc_distConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navigation::Enc_dist_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navigation::Enc_dist_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::navigation::Enc_dist_<ContainerAllocator1> & lhs, const ::navigation::Enc_dist_<ContainerAllocator2> & rhs)
{
  return lhs.dist == rhs.dist;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::navigation::Enc_dist_<ContainerAllocator1> & lhs, const ::navigation::Enc_dist_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace navigation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::navigation::Enc_dist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navigation::Enc_dist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::Enc_dist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navigation::Enc_dist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::Enc_dist_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navigation::Enc_dist_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navigation::Enc_dist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3f4fece6412db25720b2bab9f80b3473";
  }

  static const char* value(const ::navigation::Enc_dist_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3f4fece6412db257ULL;
  static const uint64_t static_value2 = 0x20b2bab9f80b3473ULL;
};

template<class ContainerAllocator>
struct DataType< ::navigation::Enc_dist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navigation/Enc_dist";
  }

  static const char* value(const ::navigation::Enc_dist_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navigation::Enc_dist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 dist\n"
;
  }

  static const char* value(const ::navigation::Enc_dist_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navigation::Enc_dist_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.dist);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Enc_dist_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navigation::Enc_dist_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navigation::Enc_dist_<ContainerAllocator>& v)
  {
    s << indent << "dist: ";
    Printer<double>::stream(s, indent + "  ", v.dist);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIGATION_MESSAGE_ENC_DIST_H
