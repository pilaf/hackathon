require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "#add_labels" do
     issue = issues(:one)
     issue.add_labels([labels(:security).id, labels(:traffic).id])

     assert_equal [labels(:security), labels(:traffic)], issue.labels
  end
end
