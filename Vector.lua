local sqrt = math.sqrt; 

Vector = {__type = "Vector"}
Vector.__index = Vector;
setmetatable(Vector,{__index=Vector})


function Vector.new (x,y,z)
    local a = {}
    a.x = x; a.y = y; a.z = z; 

    setmetatable(a,Vector);

    return a
end

function Vector:magnitude() return sqrt(self.x*self.x + self.y*self.y) end
function Vector:dot(b) return (a.x*b.x + a.y+b.y) end
function Vector:cross(b) return Vector.new(a.y*b.z - a.z*b.y,a.z*b.x - a.x*b.z,a.x*b.y-a.y*b.x) end
