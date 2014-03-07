module ActiveModelComplianceTest
  include ActiveModel::Lint::Tests
  def setup
    @model  = record_class.new(@client)
  end
end
