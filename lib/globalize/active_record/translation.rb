module Globalize
  module ActiveRecord
    class Translation < ::ActiveRecord::Base
      attr_accessible :locale
      
      class << self
        def with_locales(*locales)
          # Avoid using "IN" with SQL queries when only using one locale.
          locales = locales.flatten.map(&:to_s)
          locales = locales.first if locales.one?
          where(:locale => locales)
        end
        alias with_locale with_locales

        def translated_locales
          select('DISTINCT locale').map(&:locale)
        end
      end

      def locale
        read_attribute(:locale).to_sym
      end

      def locale=(locale)
        write_attribute(:locale, locale.to_s)
      end
    end
  end
end

# Setting this will force polymorphic associations to subclassed objects
# to use their table_name rather than the parent object's table name,
# which will allow you to get their models back in a more appropriate
# format.
#
# See http://www.ruby-forum.com/topic/159894 for details.
Globalize::ActiveRecord::Translation.abstract_class = true
