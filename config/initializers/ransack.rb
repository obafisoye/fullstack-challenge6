module Ransack
  class Attribute
    def self.ransackable_attributes(auth_object = nil)
      # Allow these attributes to be searched
      [ "blob_id", "created_at", "id", "name", "record_id", "record_type" ]
    end
  end
end
