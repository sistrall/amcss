module Amcss::Html
  class Attribute
    attr_reader :name, :value

    class << self
      def from(modüle, *variations_or_traits)
        new("#{namespace}-#{modüle}", variations_or_traits.compact.map(&:to_s).join(' '))
      end

      private
        def namespace
          [Amcss.configuration.prefix, "am"].compact.join('-')
        end
    end

    def initialize(name, value)
      @name, @value = name, value
    end

    def to_hash
      {name => value}
    end

    def to_s
      %Q{#{name}="#{value}"}
    end
  end
end
