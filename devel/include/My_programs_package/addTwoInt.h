// Generated by gencpp from file My_programs_package/addTwoInt.msg
// DO NOT EDIT!


#ifndef MY_PROGRAMS_PACKAGE_MESSAGE_ADDTWOINT_H
#define MY_PROGRAMS_PACKAGE_MESSAGE_ADDTWOINT_H

#include <ros/service_traits.h>


#include <My_programs_package/addTwoIntRequest.h>
#include <My_programs_package/addTwoIntResponse.h>


namespace My_programs_package
{

struct addTwoInt
{

typedef addTwoIntRequest Request;
typedef addTwoIntResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct addTwoInt
} // namespace My_programs_package


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::My_programs_package::addTwoInt > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::My_programs_package::addTwoInt&) { return value(); }
};

template<>
struct DataType< ::My_programs_package::addTwoInt > {
  static const char* value()
  {
    return "My_programs_package/addTwoInt";
  }

  static const char* value(const ::My_programs_package::addTwoInt&) { return value(); }
};


// service_traits::MD5Sum< ::My_programs_package::addTwoIntRequest> should match
// service_traits::MD5Sum< ::My_programs_package::addTwoInt >
template<>
struct MD5Sum< ::My_programs_package::addTwoIntRequest>
{
  static const char* value()
  {
    return MD5Sum< ::My_programs_package::addTwoInt >::value();
  }
  static const char* value(const ::My_programs_package::addTwoIntRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::My_programs_package::addTwoIntRequest> should match
// service_traits::DataType< ::My_programs_package::addTwoInt >
template<>
struct DataType< ::My_programs_package::addTwoIntRequest>
{
  static const char* value()
  {
    return DataType< ::My_programs_package::addTwoInt >::value();
  }
  static const char* value(const ::My_programs_package::addTwoIntRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::My_programs_package::addTwoIntResponse> should match
// service_traits::MD5Sum< ::My_programs_package::addTwoInt >
template<>
struct MD5Sum< ::My_programs_package::addTwoIntResponse>
{
  static const char* value()
  {
    return MD5Sum< ::My_programs_package::addTwoInt >::value();
  }
  static const char* value(const ::My_programs_package::addTwoIntResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::My_programs_package::addTwoIntResponse> should match
// service_traits::DataType< ::My_programs_package::addTwoInt >
template<>
struct DataType< ::My_programs_package::addTwoIntResponse>
{
  static const char* value()
  {
    return DataType< ::My_programs_package::addTwoInt >::value();
  }
  static const char* value(const ::My_programs_package::addTwoIntResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_PROGRAMS_PACKAGE_MESSAGE_ADDTWOINT_H
