module Amcss::Css
  class Selector
    attr_reader :value
    alias_method :to_s, :value

    class << self
      def from(modüle, variation_or_trait = nil)
        new(variation_or_trait ?
          %Q{[#{namespace}-#{modüle}~="#{variation_or_trait}"]} :
          %Q{[#{namespace}-#{modüle}]})
      end

      private
        def namespace
          [Amcss.configuration.prefix, "am"].compact.join('-')
        end
    end

    def initialize(value)
      @value = value
    end
  end
end
