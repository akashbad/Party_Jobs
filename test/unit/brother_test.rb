require 'test_helper'

class BrotherTest < ActiveSupport::TestCase
  test "Brother has a name" do
    assert_equal "AAB", brothers(:akash).name, "Incorrect Name"
  end

  test "Brother has Social Score" do
  	assert_equal 10, brothers(:nick).social_score.value
  end

end
