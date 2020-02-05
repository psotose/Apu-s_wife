class Baby < ApplicationRecord
    has_many :breastfeeds, dependent: :destroy 

    def amount_of_milk
        breastfeeds.sum(:volume)
    end  
    
    def feed_count
        breastfeeds.count
    end    

    def amount_of_time
        breastfeeds.sum(:feed_time)   
    end    

    def feed_volume_today
        breastfeeds.where('created_at> ?', Date.today ).sum(:volume)
    end    

    def amount_times_today
        breastfeeds.where('created_at> ?', Date.today ).count
    end  
    
    def time_feeding_today
        breastfeeds.where('created_at> ?', Date.today ).sum(:feed_time)
    end    

    def last_time_fed
        breastfeeds.last.created_at
    end    
end
