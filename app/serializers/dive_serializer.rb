class DiveSerializer < ActiveModel::Serializer
  attributes :id, :location, :date, :max_depth, :duration, :psi_used, :weight_used, :rating, :notes, :make_public
  has_one :user
end
