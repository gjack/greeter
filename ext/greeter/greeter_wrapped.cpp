#include <rice/rice.hpp>
#include <rice/stl.hpp>
#include <iostream>
#include "greeter.h"

using namespace Rice;

void say_hello(VALUE self, String name) {
  std::string c_name = name.c_str();
  Greeter greeter;
  std::cout << "Doing other stuff in C++ and using methods of library" << std::endl;
  greeter.complain();
  greeter.greet(c_name);
  
}

extern "C"
void Init_greeter()
{
    Module rb_Greeter = define_module("Greeter");
  Class rb_GreeterWrapped = define_class_under(rb_Greeter, "GreeterWrapped")
    .define_method("say_hello", &say_hello);
}