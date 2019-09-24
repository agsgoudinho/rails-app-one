require 'test_helper'

class TelephoneTest < ActiveSupport::TestCase
  test "create a simple telephone" do
    assert_difference 'Telephone.all.count', 1 do
      user = User.create name: 'test', age: 25
      contact = Contact.create name: 'test', born_date: '01-01-01', user: user
      Telephone.create number: '42 9 8899 7766', isDefault: true, contact: contact
    end
  end

  test "don't create a telephone without number" do
    assert_difference 'Telephone.all.count', 0 do
      user = User.create name: 'test', age: 25
      contact = Contact.create name: 'test', born_date: '01-01-01', user: user
      Telephone.create isDefault: true, contact: contact
    end
  end
end
