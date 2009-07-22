require 'rubygems'
require 'happymapper'
require 'pp'

module Nitfy

  class Keyword
    include HappyMapper
    tag 'keyword'

    attribute :key, String
  end

  class KeyList
    include HappyMapper
    tag 'key-list'
    
    has_many :keywords, Keyword
  end


  class Meta
    include HappyMapper
    tag 'meta'

    attribute :name, String
    attribute :content, String

  end

  class Head
    include HappyMapper
    tag 'head'

    has_one :title, String
    has_one :keylist, KeyList, :tag => 'key-list'

    has_many :metas, Meta
  end

  class Headline
    include HappyMapper
    tag 'hedline'

    has_one :hl1, String, :tag => 'hl1'
  end

  class BodyHead
    include HappyMapper
    tag 'body.head'

    has_one :headline, Headline, :tag => 'hedline'
  end

  class Body
    include HappyMapper
    tag 'body'

    has_one :content, String, :tag => 'body.content'
    has_one :head, BodyHead
  end

  class Document
    include HappyMapper
    tag 'nitf'

    has_one :head, Head
    has_one :body, Body
  end

end

