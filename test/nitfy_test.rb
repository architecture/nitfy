require 'test_helper'

class NiftyInvalidDocument < Test::Unit::TestCase

  context "An empty NIFT file" do

    setup do
      @doc = Nitfy::Document.parse('<nitf></nitf>', :single => true)
    end

    should "have not have a header" do
      assert @doc.head.nil?
    end

  end
end

class NitfyTest < Test::Unit::TestCase

  context "A NIFT file" do

    setup do
      @doc = Nitfy::Document.parse(fixture_file('fishing.nitf'), :single => true)
    end

    should "have a header" do
      assert !@doc.head.nil?
    end

    should "have a title" do
      assert @doc.head.title == 'Norfolk Weather and Tide Updates'
    end
  end
end
