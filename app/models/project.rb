class Project < ApplicationRecord
    belongs_to :building
    belongs_to :user
end
