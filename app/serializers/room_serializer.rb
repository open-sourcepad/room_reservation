class RoomSerializer < ActiveModel::Serializer
  attributes *%i(name tag)
end
