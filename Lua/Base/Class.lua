function clone(arg1)
    local tbl = {}
    local func
    function func(arg1)
        if type(arg1) ~= "table" then
            return arg1
        else
            if tbl[arg1] then
                return tbl[arg1]
            end
        end

        local v = {}
        tbl[arg1] = v
        for k, value in pairs(arg1) do
            v[func(k)] = func(value)
        end

        return setmetatable(v, getmetatable(arg1))
    end

    return func(arg1)
end

function class(className, super)
    if type(super) == "table" then
        if super.new ~= nil then
            goto lbl_10
        end
    end

    super = nil
    ::lbl_10::
    local new = {}
    if super then
        new = super:new()
        setmetatable(new, super)
    end

    new.__className = className
    new.__super = super
    function new.new(arg1, ...)
        local tbl = {}
        new.__index = new
        setmetatable(tbl, new)
        return tbl
    end

    return new
end
