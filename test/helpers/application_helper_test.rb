require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,"茶余饭后的RailsApp"
    assert_equal full_title("Help"), "Help | 茶余饭后的RailsApp"
  end
end
