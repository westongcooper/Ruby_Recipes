# test/person_test.rb

require_relative File.join( '../app/person')
require 'test/unit'

class PersonTest < Test::Unit::TestCase
  def test_first_name
    person = Person.new('Weston', 'Cooper', 25)
    assert_equal 'Weston', person.first_name
  end

  def test_last_name
    person = Person.new('Weston','Cooper', 29)
    assert_equal 'Cooper', person.last_name
  end

  def test_full_name
    person = Person.new('Weston', 'Cooper', 29)
    assert_equal 'Weston Cooper', person.full_name
  end

  def test_age
    person = Person.new('Weston', 'Cooper', 29)
    assert_equal 29, person.age
    assert_raise(ArgumentError) { Person.new('Weston', 'Cooper', -4) }
    assert_raise(ArgumentError) { Person.new('Weston', 'Cooper', 'four') }
  end
end
