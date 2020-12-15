class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :list
  # belongs_to :list
end
