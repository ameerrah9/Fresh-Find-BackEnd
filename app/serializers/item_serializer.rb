class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :list_id
end
