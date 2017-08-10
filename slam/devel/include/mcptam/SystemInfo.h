// Generated by gencpp from file mcptam/SystemInfo.msg
// DO NOT EDIT!


#ifndef MCPTAM_MESSAGE_SYSTEMINFO_H
#define MCPTAM_MESSAGE_SYSTEMINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mcptam
{
template <class ContainerAllocator>
struct SystemInfo_
{
  typedef SystemInfo_<ContainerAllocator> Type;

  SystemInfo_()
    : header()
    , dFrameGrabDuration(0.0)
    , dFrameDelayDuration(0.0)
    , dTrackingDuration(0.0)
    , dFPS(0.0)
    , dGrabSuccessRatio(0.0)
    , message()  {
    }
  SystemInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , dFrameGrabDuration(0.0)
    , dFrameDelayDuration(0.0)
    , dTrackingDuration(0.0)
    , dFPS(0.0)
    , dGrabSuccessRatio(0.0)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _dFrameGrabDuration_type;
  _dFrameGrabDuration_type dFrameGrabDuration;

   typedef float _dFrameDelayDuration_type;
  _dFrameDelayDuration_type dFrameDelayDuration;

   typedef float _dTrackingDuration_type;
  _dTrackingDuration_type dTrackingDuration;

   typedef float _dFPS_type;
  _dFPS_type dFPS;

   typedef float _dGrabSuccessRatio_type;
  _dGrabSuccessRatio_type dGrabSuccessRatio;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;




  typedef boost::shared_ptr< ::mcptam::SystemInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mcptam::SystemInfo_<ContainerAllocator> const> ConstPtr;

}; // struct SystemInfo_

typedef ::mcptam::SystemInfo_<std::allocator<void> > SystemInfo;

typedef boost::shared_ptr< ::mcptam::SystemInfo > SystemInfoPtr;
typedef boost::shared_ptr< ::mcptam::SystemInfo const> SystemInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mcptam::SystemInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mcptam::SystemInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mcptam

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'mcptam': ['/home/vgrlab/catkin_ws/src/mcptam/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mcptam::SystemInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mcptam::SystemInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcptam::SystemInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mcptam::SystemInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcptam::SystemInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mcptam::SystemInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mcptam::SystemInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c5f56bd62a47baa9993063032521ffe8";
  }

  static const char* value(const ::mcptam::SystemInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc5f56bd62a47baa9ULL;
  static const uint64_t static_value2 = 0x993063032521ffe8ULL;
};

template<class ContainerAllocator>
struct DataType< ::mcptam::SystemInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mcptam/SystemInfo";
  }

  static const char* value(const ::mcptam::SystemInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mcptam::SystemInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 dFrameGrabDuration\n\
float32 dFrameDelayDuration\n\
float32 dTrackingDuration\n\
float32 dFPS\n\
float32 dGrabSuccessRatio\n\
string message\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::mcptam::SystemInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mcptam::SystemInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.dFrameGrabDuration);
      stream.next(m.dFrameDelayDuration);
      stream.next(m.dTrackingDuration);
      stream.next(m.dFPS);
      stream.next(m.dGrabSuccessRatio);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SystemInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mcptam::SystemInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mcptam::SystemInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "dFrameGrabDuration: ";
    Printer<float>::stream(s, indent + "  ", v.dFrameGrabDuration);
    s << indent << "dFrameDelayDuration: ";
    Printer<float>::stream(s, indent + "  ", v.dFrameDelayDuration);
    s << indent << "dTrackingDuration: ";
    Printer<float>::stream(s, indent + "  ", v.dTrackingDuration);
    s << indent << "dFPS: ";
    Printer<float>::stream(s, indent + "  ", v.dFPS);
    s << indent << "dGrabSuccessRatio: ";
    Printer<float>::stream(s, indent + "  ", v.dGrabSuccessRatio);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MCPTAM_MESSAGE_SYSTEMINFO_H
