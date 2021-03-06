// Generated by gencpp from file mcptam/FilterPCRequest.msg
// DO NOT EDIT!


#ifndef MCPTAM_MESSAGE_FILTERPCREQUEST_H
#define MCPTAM_MESSAGE_FILTERPCREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace mcptam
{
template <class ContainerAllocator>
struct FilterPCRequest_
{
  typedef FilterPCRequest_<ContainerAllocator> Type;

  FilterPCRequest_()
    : max()
    , min()  {
    }
  FilterPCRequest_(const ContainerAllocator& _alloc)
    : max(_alloc)
    , min(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _max_type;
  _max_type max;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _min_type;
  _min_type min;




  typedef boost::shared_ptr< ::mcptam::FilterPCRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mcptam::FilterPCRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FilterPCRequest_

typedef ::mcptam::FilterPCRequest_<std::allocator<void> > FilterPCRequest;

typedef boost::shared_ptr< ::mcptam::FilterPCRequest > FilterPCRequestPtr;
typedef boost::shared_ptr< ::mcptam::FilterPCRequest const> FilterPCRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mcptam::FilterPCRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mcptam::FilterPCRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mcptam

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mcptam': ['/home/vgrlab/catkin_ws/src/mcptam/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mcptam::FilterPCRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mcptam::FilterPCRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcptam::FilterPCRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcptam::FilterPCRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcptam::FilterPCRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcptam::FilterPCRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mcptam::FilterPCRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "564e1f3d44af5b9d73226679d298f9f8";
  }

  static const char* value(const ::mcptam::FilterPCRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x564e1f3d44af5b9dULL;
  static const uint64_t static_value2 = 0x73226679d298f9f8ULL;
};

template<class ContainerAllocator>
struct DataType< ::mcptam::FilterPCRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mcptam/FilterPCRequest";
  }

  static const char* value(const ::mcptam::FilterPCRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mcptam::FilterPCRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Vector3 max\n\
geometry_msgs/Vector3 min\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::mcptam::FilterPCRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mcptam::FilterPCRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.max);
      stream.next(m.min);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FilterPCRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mcptam::FilterPCRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mcptam::FilterPCRequest_<ContainerAllocator>& v)
  {
    s << indent << "max: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.max);
    s << indent << "min: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.min);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MCPTAM_MESSAGE_FILTERPCREQUEST_H
