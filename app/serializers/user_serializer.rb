class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :username, :photo_url, :id

  def photo_url
    rails_blob_path(self.object.photo, disposition: "attachment", only_path: true)
  end
end
