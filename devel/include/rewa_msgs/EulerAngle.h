// Generated by gencpp from file rewa_msgs/EulerAngle.msg
// DO NOT EDIT!


#ifndef REWA_MSGS_MESSAGE_EULERANGLE_H
#define REWA_MSGS_MESSAGE_EULERANGLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>

namespace rewa_msgs
{
template <class ContainerAllocator>
struct EulerAngle_
{
  typedef EulerAngle_<ContainerAllocator> Type;

  EulerAngle_()
    : r()
    , p()
    , y()  {
    }
  EulerAngle_(const ContainerAllocator& _alloc)
    : r(_alloc)
    , p(_alloc)
    , y(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32_<ContainerAllocator>  _r_type;
  _r_type r;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _p_type;
  _p_type p;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::rewa_msgs::EulerAngle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rewa_msgs::EulerAngle_<ContainerAllocator> const> ConstPtr;

}; // struct EulerAngle_

typedef ::rewa_msgs::EulerAngle_<std::allocator<void> > EulerAngle;

typedef boost::shared_ptr< ::rewa_msgs::EulerAngle > EulerAnglePtr;
typedef boost::shared_ptr< ::rewa_msgs::EulerAngle const> EulerAngleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rewa_msgs::EulerAngle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rewa_msgs::EulerAngle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rewa_msgs::EulerAngle_<ContainerAllocator1> & lhs, const ::rewa_msgs::EulerAngle_<ContainerAllocator2> & rhs)
{
  return lhs.r == rhs.r &&
    lhs.p == rhs.p &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rewa_msgs::EulerAngle_<ContainerAllocator1> & lhs, const ::rewa_msgs::EulerAngle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rewa_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rewa_msgs::EulerAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rewa_msgs::EulerAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rewa_msgs::EulerAngle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b12334b058a796e17415fad4ae059df8";
  }

  static const char* value(const ::rewa_msgs::EulerAngle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb12334b058a796e1ULL;
  static const uint64_t static_value2 = 0x7415fad4ae059df8ULL;
};

template<class ContainerAllocator>
struct DataType< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rewa_msgs/EulerAngle";
  }

  static const char* value(const ::rewa_msgs::EulerAngle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32 r\n"
"std_msgs/Float32 p\n"
"std_msgs/Float32 y\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
;
  }

  static const char* value(const ::rewa_msgs::EulerAngle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.r);
      stream.next(m.p);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EulerAngle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rewa_msgs::EulerAngle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rewa_msgs::EulerAngle_<ContainerAllocator>& v)
  {
    s << indent << "r: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.r);
    s << indent << "p: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.p);
    s << indent << "y: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REWA_MSGS_MESSAGE_EULERANGLE_H