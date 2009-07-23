require 'test_helper'

class NiftyInvalidDocument < Test::Unit::TestCase

  context "An empty NIFT file" do

    setup do
      @doc = Nitfy::Document.parse('<nitf></nitf>', :single => true)
    end

    should "not have a header section" do
      assert @doc.head.nil?
    end

  end
end

class NitfyTest < Test::Unit::TestCase

  context "A NIFT file" do

    setup do
      @doc = Nitfy::Document.parse(fixture_file('fishing.nitf'), :single => true)
    end

    should "have a header section" do
      assert !@doc.head.nil?
    end

    should "have a header title" do
      assert @doc.head.title == 'Norfolk Weather and Tide Updates'
    end

    should "have a document data section" do
      assert !@doc.head.docdata.nil?
    end

    should "have a document issue date" do
      assert @doc.head.docdata.issue_date.is_a? DateTime
    end

    should "have a document release date" do
      assert @doc.head.docdata.release_date.is_a? DateTime
    end

    should "have a document expiry date" do
      assert @doc.head.docdata.expiry_date.is_a? DateTime
    end

  end
end
