/* Auto-generated by genmsg_cpp for file /home/vadim/Desktop/workspace/kinect_bridge2/msg/KinectBodyLean.msg */
#ifndef KINECT_BRIDGE2_MESSAGE_KINECTBODYLEAN_H
#define KINECT_BRIDGE2_MESSAGE_KINECTBODYLEAN_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace kinect_bridge2
{
template <class ContainerAllocator>
struct KinectBodyLean_ {
  typedef KinectBodyLean_<ContainerAllocator> Type;

  KinectBodyLean_()
  : x(0.0)
  , y(0.0)
  {
  }

  KinectBodyLean_(const ContainerAllocator& _alloc)
  : x(0.0)
  , y(0.0)
  {
  }

  typedef float _x_type;
  float x;

  typedef float _y_type;
  float y;


  typedef boost::shared_ptr< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator>  const> ConstPtr;
}; // struct KinectBodyLean
typedef  ::kinect_bridge2::KinectBodyLean_<std::allocator<void> > KinectBodyLean;

typedef boost::shared_ptr< ::kinect_bridge2::KinectBodyLean> KinectBodyLeanPtr;
typedef boost::shared_ptr< ::kinect_bridge2::KinectBodyLean const> KinectBodyLeanConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace kinect_bridge2

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const  ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xff8d7d66dd3e4b73ULL;
  static const uint64_t static_value2 = 0x1ef14a45d38888b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> > {
  static const char* value() 
  {
    return "kinect_bridge2/KinectBodyLean";
  }

  static const char* value(const  ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 x\n\
float32 y\n\
";
  }

  static const char* value(const  ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.x);
    stream.next(m.y);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct KinectBodyLean_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::kinect_bridge2::KinectBodyLean_<ContainerAllocator> & v) 
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};


} // namespace message_operations
} // namespace ros

#endif // KINECT_BRIDGE2_MESSAGE_KINECTBODYLEAN_H

