require 'test_helper'

class NiftyInvalidDocument < Test::Unit::TestCase
  doc = Nitfy::Document.parse('<nitf></nitf>', :single => true)
  should "have not have a header" do
    doc.head.nil?
  end
end

class NitfyTest < Test::Unit::TestCase
  doc = Nitfy::Document.parse(fixture_file('fishing.nitf'), :single => true)
  should "have a header" do
    !doc.head.nil?
  end

  should "have a title" do
    doc.head.title == 'Norfolk Weather and Tide Updates'
  end
end
