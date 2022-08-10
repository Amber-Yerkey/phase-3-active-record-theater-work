class Audition < ActiveRecord::Base
    belongs_to :role

    def self.role
        self.role
    end

    def call_back
        update(hired: true)
    end
end