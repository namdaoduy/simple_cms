class User < ApplicationRecord

  # if table name was changed, must configure
  self.table_name = "admin_users"
end
