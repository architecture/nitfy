require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'nitfy'

def fixture_file(filename)
  File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
end

class Test::Unit::TestCase
end
