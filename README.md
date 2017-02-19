# Oweb3SoftDelete
Small gem to add soft delete feature to active record

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'oweb3_soft_delete'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install oweb3_soft_delete
```

#### Adding migration to the model
```bash
rails g migration AddSoftDeletedToMyModel soft_deleted:datetime:index
```

## Usage
#### In your model

To add a default_scope simply add acts_as_soft_delete
```bash
class MyModel < ActiveRecord::Base
  acts_as_soft_delete

  # ...
end
```

To soft delete and item :
```bash
my_model.oweb3_delete!
```

To find and undelete an item
```bash
MyModel.oweb3_deleted.find(1).oweb3_undelete!
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
