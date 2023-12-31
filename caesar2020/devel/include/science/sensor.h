// Generated by gencpp from file science/sensor.msg
// DO NOT EDIT!


#ifndef SCIENCE_MESSAGE_SENSOR_H
#define SCIENCE_MESSAGE_SENSOR_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace science
{
template <class ContainerAllocator>
struct sensor_
{
  typedef sensor_<ContainerAllocator> Type;

  sensor_()
    : tsl_full(0.0)
    , lps_temp(0.0)
    , lps_pressure(0.0)
    , sht_humidity(0.0)
    , sht_temp(0.0)  {
    }
  sensor_(const ContainerAllocator& _alloc)
    : tsl_full(0.0)
    , lps_temp(0.0)
    , lps_pressure(0.0)
    , sht_humidity(0.0)
    , sht_temp(0.0)  {
  (void)_alloc;
    }



   typedef float _tsl_full_type;
  _tsl_full_type tsl_full;

   typedef float _lps_temp_type;
  _lps_temp_type lps_temp;

   typedef float _lps_pressure_type;
  _lps_pressure_type lps_pressure;

   typedef float _sht_humidity_type;
  _sht_humidity_type sht_humidity;

   typedef float _sht_temp_type;
  _sht_temp_type sht_temp;





  typedef boost::shared_ptr< ::science::sensor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::science::sensor_<ContainerAllocator> const> ConstPtr;

}; // struct sensor_

typedef ::science::sensor_<std::allocator<void> > sensor;

typedef boost::shared_ptr< ::science::sensor > sensorPtr;
typedef boost::shared_ptr< ::science::sensor const> sensorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::science::sensor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::science::sensor_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::science::sensor_<ContainerAllocator1> & lhs, const ::science::sensor_<ContainerAllocator2> & rhs)
{
  return lhs.tsl_full == rhs.tsl_full &&
    lhs.lps_temp == rhs.lps_temp &&
    lhs.lps_pressure == rhs.lps_pressure &&
    lhs.sht_humidity == rhs.sht_humidity &&
    lhs.sht_temp == rhs.sht_temp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::science::sensor_<ContainerAllocator1> & lhs, const ::science::sensor_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace science

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::science::sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::science::sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::science::sensor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::science::sensor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::science::sensor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::science::sensor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::science::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f03c616c12fbcd715e685d60bb04a3dc";
  }

  static const char* value(const ::science::sensor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf03c616c12fbcd71ULL;
  static const uint64_t static_value2 = 0x5e685d60bb04a3dcULL;
};

template<class ContainerAllocator>
struct DataType< ::science::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "science/sensor";
  }

  static const char* value(const ::science::sensor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::science::sensor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 tsl_full\n"
"float32 lps_temp\n"
"float32 lps_pressure\n"
"float32 sht_humidity\n"
"float32 sht_temp\n"
;
  }

  static const char* value(const ::science::sensor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::science::sensor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.tsl_full);
      stream.next(m.lps_temp);
      stream.next(m.lps_pressure);
      stream.next(m.sht_humidity);
      stream.next(m.sht_temp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::science::sensor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::science::sensor_<ContainerAllocator>& v)
  {
    s << indent << "tsl_full: ";
    Printer<float>::stream(s, indent + "  ", v.tsl_full);
    s << indent << "lps_temp: ";
    Printer<float>::stream(s, indent + "  ", v.lps_temp);
    s << indent << "lps_pressure: ";
    Printer<float>::stream(s, indent + "  ", v.lps_pressure);
    s << indent << "sht_humidity: ";
    Printer<float>::stream(s, indent + "  ", v.sht_humidity);
    s << indent << "sht_temp: ";
    Printer<float>::stream(s, indent + "  ", v.sht_temp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCIENCE_MESSAGE_SENSOR_H
