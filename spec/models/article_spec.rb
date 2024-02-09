require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'with valid attributes' do

    it 'is not valid' do
      article = Article.create(title:'title')
      expect(article).to_not be_valid
    end
    
    it 'is not valid' do
      article = Article.create(content:Faker::Lorem.paragraph)
      expect(article).to_not be_valid
    end

    it 'is valid' do
      article = Article.create(title:'Title1',content:Faker::Lorem.paragraph_by_chars)
      expect(article).to  be_valid
    end

    it 'is not valid' do
      content = Article.create(title:'it',content:Faker::Lorem.paragraph)
      expect(content).to_not be_valid
    end

    it 'is not valid' do
      content = Article.create(title:'tester',content:'too short')
      expect(content).to_not be_valid
    end
  end
end
