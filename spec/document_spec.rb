require_relative '../lib/document.rb'
require 'rspec'

RSpec.describe "document" do
  let(:title) do
    "Thomas and his roar"
  end

  let(:author) do
    "Alicia Kundratic"
  end

  let(:content) do
    "thomas the lion and george the mouse are the main characters.
    george helps thomas learn to roar."
  end

  let(:author_cut) do
    author.split
  end

  subject do
    Document.new(title, author, content)
  end

  it "should set title" do
    expect(subject.title).to eq(title)
  end

  it "should set author" do
    expect(subject.author).to eq(author)
  end

  it "should set content" do
    expect(subject.content).to eq(content)
  end

  context "for our specialized functions" do
    it "give us a list of words when .words is called" do
      expect(subject.author_cut).to eq(author_cut)
    end
  end
end
