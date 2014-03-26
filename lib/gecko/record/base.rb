module Gecko
  module Record
    class Base < Lizard::Record::Base
      # Set up the default attributes associated with all records
      attribute :id,          Integer,    readonly: true
      attribute :updated_at,  DateTime,   readonly: true
      attribute :created_at,  DateTime,   readonly: true
    end
  end
end
