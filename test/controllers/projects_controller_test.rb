require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should list projects" do
    get :index
    assert_select "li.project", 2
  end
end
