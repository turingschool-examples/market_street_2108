class Building
    attr_reader :units
                # :renters

    def initialize
        @units = []
        # @renters = []
    end

    def add_unit(unit)
        @units << unit
    end

    def renters
        unit_renters = []
        @units.each do | unit |
            unit_renters << unit.renter.name
        end
        return unit_renters
    end

    def average_rent
        unit_rent = @units.map do | unit |
            unit.monthly_rent.to_f
        end
        (unit_rent.sum / @units.length).round(1)
    end
end