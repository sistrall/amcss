require "amcss/version"
require "amcss/configuration"

require "amcss/concepts"
require "amcss/concepts/module"
require "amcss/concepts/trait"
require "amcss/concepts/variation"

require "amcss/html"
require "amcss/html/attribute"

require "amcss/css"
require "amcss/css/selector"

module Amcss
  def self.configure
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end
end
