require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  
  def setup
    @user = users(:yusuke)
    @article = @user.articles.build(content: "hello")
    @article.drawing = File.open(File.join(Rails.root,
                                           '/test/fixtures/files/kapibara.jpg'))
  end

  test "validであるはず" do
    assert @article.valid?
  end

  test "user idが存在するはず" do
    @article.user_id = nil
    assert_not @article.valid?
  end

  test "contentはなくてもいい" do
    @article.content = nil
    assert @article.valid?
  end

  test "drawingが存在するはず" do
    @article.drawing = nil
    assert_not @article.valid?
  end
end
