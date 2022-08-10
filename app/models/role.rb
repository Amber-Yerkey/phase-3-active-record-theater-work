class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map {|a| a.actor}
    end

    def locations
        auditions.map {|a| a.location}
    end

    def lead
        leadAudition = auditions.find_by(hired: true)
        if leadAudition
            leadAudition
        else
            "no actor has been hired for this role"
        end
      end

    def understudy
        auditionsHired = auditions.where(hired: true)
        if auditionsHired[1]
            auditionsHired[1]
        else
            "no actor has been hired for understudy for this role"
        end
      end
end 