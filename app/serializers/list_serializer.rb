class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :items
end
