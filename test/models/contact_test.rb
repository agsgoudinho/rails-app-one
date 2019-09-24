require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test "create a simple contact" do
    assert_difference 'Contact.all.count', 1 do
      user = User.create name: "test", age: 25
      Contact.create name: 'user 01', born_date: '01-01-01', user:user
    end
  end

  test "don't create a contact without name" do
    assert_difference 'Contact.all.count', 0 do
      User.create bio: 'anything'
    end
  end

  test "don’t create duplicated user" do
    assert_difference 'User.all.count', 1 do
      User.create name: 'user 01'
      User.create name: 'user 01'
    end
  end
end
