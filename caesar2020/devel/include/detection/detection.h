// Generated by gencpp from file detection/detection.msg
// DO NOT EDIT!


#ifndef DETECTION_MESSAGE_DETECTION_H
#define DETECTION_MESSAGE_DETECTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace detection
{
template <class ContainerAllocator>
struct detection_
{
  typedef detection_<ContainerAllocator> Type;

  detection_()
    : xmin(0)
    , ymin(0)
    , xmax(0)
    , ymax(0)
    , score(0.0)
    , category(0)  {
    }
  detection_(const ContainerAllocator& _alloc)
    : xmin(0)
    , ymin(0)
    , xmax(0)
    , ymax(0)
    , score(0.0)
    , category(0)  {
  (void)_alloc;
    }



   typedef uint16_t _xmin_type;
  _xmin_type xmin;

   typedef uint16_t _ymin_type;
  _ymin_type ymin;

   typedef uint16_t _xmax_type;
  _xmax_type xmax;

   typedef uint16_t _ymax_type;
  _ymax_type ymax;

   typedef float _score_type;
  _score_type score;

   typedef uint8_t _category_type;
  _category_type category;





  typedef boost::shared_ptr< ::detection::detection_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::detection::detection_<ContainerAllocator> const> ConstPtr;

}; // struct detection_

typedef ::detection::detection_<std::allocator<void> > detection;

typedef boost::shared_ptr< ::detection::detection > detectionPtr;
typedef boost::shared_ptr< ::detection::detection const> detectionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::detection::detection_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::detection::detection_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::detection::detection_<ContainerAllocator1> & lhs, const ::detection::detection_<ContainerAllocator2> & rhs)
{
  return lhs.xmin == rhs.xmin &&
    lhs.ymin == rhs.ymin &&
    lhs.xmax == rhs.xmax &&
    lhs.ymax == rhs.ymax &&
    lhs.score == rhs.score &&
    lhs.category == rhs.category;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::detection::detection_<ContainerAllocator1> & lhs, const ::detection::detection_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace detection

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::detection::detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::detection::detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::detection::detection_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::detection::detection_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection::detection_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::detection::detection_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::detection::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "749131da678d2cc04e6f077d4ec426e4";
  }

  static const char* value(const ::detection::detection_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x749131da678d2cc0ULL;
  static const uint64_t static_value2 = 0x4e6f077d4ec426e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::detection::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "detection/detection";
  }

  static const char* value(const ::detection::detection_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::detection::detection_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 xmin\n"
"uint16 ymin\n"
"uint16 xmax\n"
"uint16 ymax\n"
"float32 score\n"
"uint8 category #1:left 2:right 3:Ball\n"
"\n"
;
  }

  static const char* value(const ::detection::detection_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::detection::detection_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xmin);
      stream.next(m.ymin);
      stream.next(m.xmax);
      stream.next(m.ymax);
      stream.next(m.score);
      stream.next(m.category);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct detection_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::detection::detection_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::detection::detection_<ContainerAllocator>& v)
  {
    s << indent << "xmin: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.xmin);
    s << indent << "ymin: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.ymin);
    s << indent << "xmax: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.xmax);
    s << indent << "ymax: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.ymax);
    s << indent << "score: ";
    Printer<float>::stream(s, indent + "  ", v.score);
    s << indent << "category: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.category);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DETECTION_MESSAGE_DETECTION_H
