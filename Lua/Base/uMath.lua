local uMath = M

if not uMath then
    uMath = {}
end

csMath = CS.MoleMole.LuaMath
uMath.PI = 3.14159

function uMath:Deg2Rad()
    return uMath.PI / 180 * self
end

function uMath:Rad2Deg()
    return 180 / uMath.PI * self
end

function uMath:Pos(arg1, arg2)
    local vector3 = CS.UnityEngine.Vector3(self, arg1, arg2)
    return vector3
end

function uMath:Dir(arg1, arg2)
    local vector3 = CS.UnityEngine.Vector3(self, arg1, arg2)
    return vector3
end

function uMath:Euler(arg1, arg2)
    local vector3 = CS.UnityEngine.Vector3(self, arg1, arg2)
    return vector3
end

function uMath:Euler2DirXZ()
    local deg2Rad = uMath.Deg2Rad(self.y)
    return uMath.Dir(math.sin(deg2Rad), 0, math.cos(deg2Rad))
end

function uMath:Euler2Forward()
    return csMath.Euler2Forward(self)
end

function uMath:Dir2Euler()
    return csMath.Forward2Euler(self)
end

function uMath:Dot(arg1)
    return csMath.Dot(self, arg1)
end

function uMath:IsSameXZ(arg1, arg2)
    if self.x - arg1.x > -arg2 then
        if arg2 > self.x - arg1.x then
            if self.z - arg1.z > -arg2 then
                if arg2 > self.z - arg1.z then
                    return true
                end
            end
        end
    end

    return false
end

function uMath:Dist(arg1)
    return CS.UnityEngine.Vector3.Distance(self, arg1)
end

function uMath:IsSamePos(arg1, arg2)
    if arg2 > uMath.Dist(self, arg1) then
        return true
    end

    return false
end

function uMath:CompareEuler(arg1, arg2)
    if arg2 == nil then
        arg2 = 1
    end

    return csMath.CompareEuler(self, arg1, arg2)
end

function uMath:ForwardAngle(arg1)
    return csMath.ForwardAngle(self, arg1)
end

function uMath:Color(arg1, arg2, arg3)
    local color = CS.UnityEngine.Color(self, arg1, arg2, arg3)
    return color
end

return uMath
