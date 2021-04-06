// Generated by gencpp from file rewa_msgs/ControlCommandAX12A.msg
// DO NOT EDIT!


#ifndef REWA_MSGS_MESSAGE_CONTROLCOMMANDAX12A_H
#define REWA_MSGS_MESSAGE_CONTROLCOMMANDAX12A_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rewa_msgs
{
template <class ContainerAllocator>
struct ControlCommandAX12A_
{
  typedef ControlCommandAX12A_<ContainerAllocator> Type;

  ControlCommandAX12A_()
    : ID(0)
    , goalpos(0)
    , speed(0)
    , torque(false)
    , moving(false)  {
    }
  ControlCommandAX12A_(const ContainerAllocator& _alloc)
    : ID(0)
    , goalpos(0)
    , speed(0)
    , torque(false)
    , moving(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ID_type;
  _ID_type ID;

   typedef uint16_t _goalpos_type;
  _goalpos_type goalpos;

   typedef uint16_t _speed_type;
  _speed_type speed;

   typedef uint8_t _torque_type;
  _torque_type torque;

   typedef uint8_t _moving_type;
  _moving_type moving;





  typedef boost::shared_ptr< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> const> ConstPtr;

}; // struct ControlCommandAX12A_

typedef ::rewa_msgs::ControlCommandAX12A_<std::allocator<void> > ControlCommandAX12A;

typedef boost::shared_ptr< ::rewa_msgs::ControlCommandAX12A > ControlCommandAX12APtr;
typedef boost::shared_ptr< ::rewa_msgs::ControlCommandAX12A const> ControlCommandAX12AConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator1> & lhs, const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator2> & rhs)
{
  return lhs.ID == rhs.ID &&
    lhs.goalpos == rhs.goalpos &&
    lhs.speed == rhs.speed &&
    lhs.torque == rhs.torque &&
    lhs.moving == rhs.moving;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator1> & lhs, const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rewa_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d2ae415b4864b1ee94a8e10b78d938e0";
  }

  static const char* value(const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd2ae415b4864b1eeULL;
  static const uint64_t static_value2 = 0x94a8e10b78d938e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rewa_msgs/ControlCommandAX12A";
  }

  static const char* value(const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 ID\n"
"\n"
"uint16 goalpos\n"
"uint16 speed\n"
"\n"
"bool torque\n"
"bool moving\n"
;
  }

  static const char* value(const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ID);
      stream.next(m.goalpos);
      stream.next(m.speed);
      stream.next(m.torque);
      stream.next(m.moving);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ControlCommandAX12A_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rewa_msgs::ControlCommandAX12A_<ContainerAllocator>& v)
  {
    s << indent << "ID: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ID);
    s << indent << "goalpos: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.goalpos);
    s << indent << "speed: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.speed);
    s << indent << "torque: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.torque);
    s << indent << "moving: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.moving);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REWA_MSGS_MESSAGE_CONTROLCOMMANDAX12A_H
