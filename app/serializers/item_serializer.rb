class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :list
end
