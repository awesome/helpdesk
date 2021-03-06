# Helpdesk [![Build Status](https://secure.travis-ci.org/johnbeynon/helpdesk.png?branch=master)](http://travis-ci.org/johnbeynon/helpdesk)
Helpdesk is a Rails engine that provides simple helpdesk functionality directly into your site.

It should be considered a Work in progress if you find it and attempt to install it.

## <a name="features"></a>Features

* Coming Soon!

## <a name="demo"></a>Demo

* Coming Soon!

## Installation
### 1. Install helpdesk gem
In your `Gemfile`, add the following dependencies:
In <b>Rails 3</b>, add this to your Gemfile and run the +bundle+ command.

```ruby
gem "helpdesk", '0.0.14'
```

In <b>Rails 4</b>, add this to your Gemfile and run the +bundle+ command.

```ruby
gem "helpdesk", ">= 0.0.20"
```
### 2. Run installation

```
rails g helpdesk:install
```
That creates a Helpdesk initializer and copy locale files to your application.

### 3. Add 3 methods to your applications application_controller.rb
   * helpdesk_user - to exposes your current_user
   * helpdesk_admin? - to check privileges
   * helpdesk_admins_collection - to list all admin

Example, for app with devise&rolify gems:
```ruby
class ApplicationController < ActionController::Base
[...]
      helper_method :helpdesk_user,:helpdesk_admin?,:helpdesk_admin_collection
      def helpdesk_user
        current_user
      end

      def helpdesk_admin?
        current_user.has_role? :admin
      end

      def helpdesk_admin_collection
        (Helpdesk.user_class).with_role(:admin)
      end
end
```

### 4. Restart app
and visit http://localhost:3000/helpdesk
