class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo
  has_many :sneakers
end
