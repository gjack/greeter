# Greeter - a C++ extension

This is an example of a C++ Ruby extension packaged in a gem.

The extension was made using a Ruby interface for C++ extensions called [Rice](https://github.com/ruby-rice/rice)

## How to experiment

After cloning the repo, run `bundle install`. 

Notice that the gem has not been published and it's not compiled yet, so you will have to run the following in order to build the gem.

```
gem build greeter.gemspec
``` 

Once the gem is built, you should be able to install it

```
% gem install greeter-0.1.0.gem
Building native extensions. This could take a while...
Successfully installed greeter-0.1.0
Parsing documentation for greeter-0.1.0
Done installing documentation for greeter after 0 seconds
1 gem installed
```

And, finally, require it in irb

```
irb(main):001> require "greeter"
=> true
irb(main):002> Greeter::GreeterWrapped.new.say_hello "Bob"
Doing other stuff in C++ and using methods of library
Hello Bob
=> nil
```