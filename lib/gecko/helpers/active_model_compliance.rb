require 'active_model'
module Gecko
  module Helpers
    module ActiveModelCompliance
      def self.included(klass)
        klass.send(:extend,  ActiveModel::Naming)
        klass.send(:include, ActiveModel::Conversion)
        klass.send(:include, ActiveModel::Validations)
      end

      def persisted?
        !new_record?
      end
    end
  end
end
