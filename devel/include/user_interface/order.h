// Generated by gencpp from file user_interface/order.msg
// DO NOT EDIT!


#ifndef USER_INTERFACE_MESSAGE_ORDER_H
#define USER_INTERFACE_MESSAGE_ORDER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace user_interface
{
template <class ContainerAllocator>
struct order_
{
  typedef order_<ContainerAllocator> Type;

  order_()
    : cup_type()
    , coffee_type()
    , milk_level()
    , sugar_level()
    , payment()  {
    }
  order_(const ContainerAllocator& _alloc)
    : cup_type(_alloc)
    , coffee_type(_alloc)
    , milk_level(_alloc)
    , sugar_level(_alloc)
    , payment(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cup_type_type;
  _cup_type_type cup_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _coffee_type_type;
  _coffee_type_type coffee_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _milk_level_type;
  _milk_level_type milk_level;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sugar_level_type;
  _sugar_level_type sugar_level;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _payment_type;
  _payment_type payment;





  typedef boost::shared_ptr< ::user_interface::order_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::user_interface::order_<ContainerAllocator> const> ConstPtr;

}; // struct order_

typedef ::user_interface::order_<std::allocator<void> > order;

typedef boost::shared_ptr< ::user_interface::order > orderPtr;
typedef boost::shared_ptr< ::user_interface::order const> orderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::user_interface::order_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::user_interface::order_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::user_interface::order_<ContainerAllocator1> & lhs, const ::user_interface::order_<ContainerAllocator2> & rhs)
{
  return lhs.cup_type == rhs.cup_type &&
    lhs.coffee_type == rhs.coffee_type &&
    lhs.milk_level == rhs.milk_level &&
    lhs.sugar_level == rhs.sugar_level &&
    lhs.payment == rhs.payment;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::user_interface::order_<ContainerAllocator1> & lhs, const ::user_interface::order_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace user_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::user_interface::order_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::user_interface::order_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::user_interface::order_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::user_interface::order_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::user_interface::order_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::user_interface::order_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::user_interface::order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "19f5dcce4001610f56c1d06d25f2822a";
  }

  static const char* value(const ::user_interface::order_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x19f5dcce4001610fULL;
  static const uint64_t static_value2 = 0x56c1d06d25f2822aULL;
};

template<class ContainerAllocator>
struct DataType< ::user_interface::order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "user_interface/order";
  }

  static const char* value(const ::user_interface::order_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::user_interface::order_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string cup_type\n"
"string coffee_type\n"
"string milk_level\n"
"string sugar_level\n"
"string payment\n"
;
  }

  static const char* value(const ::user_interface::order_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::user_interface::order_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cup_type);
      stream.next(m.coffee_type);
      stream.next(m.milk_level);
      stream.next(m.sugar_level);
      stream.next(m.payment);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct order_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::user_interface::order_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::user_interface::order_<ContainerAllocator>& v)
  {
    s << indent << "cup_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cup_type);
    s << indent << "coffee_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.coffee_type);
    s << indent << "milk_level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.milk_level);
    s << indent << "sugar_level: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sugar_level);
    s << indent << "payment: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.payment);
  }
};

} // namespace message_operations
} // namespace ros

#endif // USER_INTERFACE_MESSAGE_ORDER_H
