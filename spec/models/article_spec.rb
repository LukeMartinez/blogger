require 'spec_helper'

describe Article do
  
  it "should validate the presence of title" do
    article = Article.new
    article2 = Article.new(title: "Title", body: "Body")

    expect(article).to_not be_valid
    expect(article2).to be_valid
  end

  it "should validate the presence of body" do
    article = Article.new(title: "Title")
    expect(article).to_not be_valid
    article2 = Article.new(title: "Title", body: "Body")
    expect(article2).to be_valid
  end

end
