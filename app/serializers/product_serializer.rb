class ProductSerializer < ActiveModel::Serializer
  attributes :id, :before_photo_url, :description, :price, :after_photo_url, :editable

  def editable
    scope == object.user
  end
end
