module Gecko
  module Record
    class BaseAdapter < Lizard::Record::BaseAdapter
      attr_reader :client
      # Returns the model class associated with an adapter
      #
      # @example
      #   product_adapter.model_class #=> Lizard::Record::Product
      #
      # @return [Class]
      #
      # @api private
      def model_class
        Gecko::Record.const_get(@model_name)
      end
  end
end
