class LinkSerializer < ActiveModel::Serializer
  attributes :title, :url, :upvotes, :downvotes
end
