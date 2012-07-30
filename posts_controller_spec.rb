
describe PostsController, "POST create" do
  
  before(:each) do
    @post = mock_model(Post, :save => nil)
    Post.stub(:new).and_return @post
  end

  it "should build a new post" do
    Post.should_receive(:new).with("body" => "a quick brown fox")
    post :create, :post => { "body" => "a quick brown fox" }
  end
  
  it "should save the post" do
    @post.should_receive(:save)
    post :create
  end

  context "when the post saves successfully" do
    before(:each) do
      @post.stub(:save).and_return true
    end
    
    it "should set a flash[:notice] post" do
      post :create
      flash[:notice].should == "The post was saved successfully."
    end
    
    it "should redirect to the posts index" do
      post :create
      response.should redirect_to(posts_path)
    end
  end

  context "when the post fails to save" do
    before(:each) do
      @post.stub(:save).and_return false
    end
    
    it "should assign @post" do
      post :create
      assigns[:post].should == @post
    end

    
    it "should render the new template" do
      post :create
      response.should render_template("new")
    end
    
  end
end


