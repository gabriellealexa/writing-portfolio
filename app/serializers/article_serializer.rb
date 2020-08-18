class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :publication, :summary, :img, :link
end
