class Apartment
    attr_reader :renter

    def initialize(unit)
        @unit = unit
        @renter
    end

    def number
        @unit[:number]
    end

    def monthly_rent
        @unit[:monthly_rent]
    end

    def bathrooms
        @unit[:bathrooms]
    end

    def bedrooms
        @unit[:bedrooms]
    end
    
    def add_renter(new_renter)
        @renter = new_renter
    end
end