module Vehicle

# 1. Export/Imports
export go!

# 2. Interface documentation
# A vehicle (v) must implement the following functions:
#
# power_on!(v) - turn on the vehicle's engine
# power_off!(v) - turn off the vehicle's engine
# turn!(v, direction) - steer the vehicle to the specified direction
# move!(v, distance) - move the vehicle by the specified distance
# position(v) - returns the (x,y) position of the vehicle

# 3. Generig definitions for the interface
"""
Power on the vehicle so it is ready to go.
"""
function power_on! end
function power_off! end
function turn! end
function move! end
function position end

# 4. Logic

# Returns a travel plan from current position to destination
function travel_path(position, destination)
    return round(π/6, digits=2), 1_000 # just a test
end

# travel Logic
function go!(vehicle, destination)
    power_on!(vehicle)
    direction, distance = travel_path(position(vehicle), destination)
    turn!(vehicle, direction)
    move!(vehicle, distance)
    power_off!(vehicle)
    nothing
end

end # module