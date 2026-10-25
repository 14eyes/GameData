local clock = os.clock
local sethook = xlua.sethook

if not sethook then
    sethook = debug.sethook
end

local tbl
local v

local function func(db_info)
    return {db_info = db_info, count = 0, total_time = 0}
end

local function func2(arg1, arg2, short_src)
    local v = tbl[arg2]
    if not v then
        v = func(debug.getinfo(2, "nS"))
        tbl[arg2] = v
    end

    if arg1 == "call" then
        v.call_time = clock()
        v.count = v.count + 1
        v.return_time = nil
    elseif arg1 == "return" or arg1 == "tail return" then
        local return_time = clock()
        if v.call_time then
            v.total_time = v.total_time + (return_time - v.call_time)
            v.call_time = nil
        else
            local total_time = v.total_time
            local return_time2 = v.return_time
            if not return_time2 then
                return_time2 = return_time
            end

            v.total_time = total_time + (return_time - return_time2)
            v.count = v.count + 1
        end

        v.return_time = return_time
        if short_src then
            if v.count == 1 then
                v.db_info.short_src = short_src
            end
        end
    end
end

local function start()
    tbl = {}
    v = clock()
    sethook(func2, "cr")
end

local function stop()
    sethook()
    tbl = nil
    v = nil
end

local function func3(arg1, arg2)
    local short_src = arg1.db_info.short_src
    if not short_src then
        short_src = "[NA]"
    end

    local str
    if arg1.db_info.linedefined then
        if 0 <= arg1.db_info.linedefined then
            str = string.format(":%i", arg1.db_info.linedefined)
            if str then
                goto lbl_23
            end
        end
    end

    str = ""
    ::lbl_23::
    local v = short_src .. str
    local name = arg1.db_info.name
    if not name then
        name = "[anonymous]"
    end

    local str2 = string.format("%04.3f", arg1.total_time * 1000)
    local str3 = string.format("%04.3f", arg1.total_time / arg1.count * 1000)
    local str4 = string.format("%03.2f%%", arg1.total_time / arg2 * 100)
    local str5 = string.format("%7i", arg1.count)
    return string.format("|%-40.40s: %-50.50s: %-12s: %-12s: %-12s: %-12s|\n", name, v, str2, str3, str4, str5)
end

local tbl2 = {}

function tbl2:TOTAL(arg1)
    return self.total_time > arg1.total_time
end

function tbl2:AVERAGE(arg1)
    return self.average > arg1.average
end

function tbl2:CALLED(arg1)
    return self.count > arg1.count
end

return {
    start = start,
    report = function(arg1)
        sethook()
        local valueType = type(arg1)
        local v2 = arg1 or valueType
        if v2 ~= "function" or not arg1 then
            v2 = tbl2[arg1]
        end

        local str = string.format("|%-40s: %-50s: %-12s: %-12s: %-12s: %-12s|\n", "FUNCTION", "SOURCE", "TOTAL(MS)", "AVERAGE(MS)", "RELATIVE", "CALLED")
        local v3 = clock()
        local v4 = v
        if not v4 then
            v4 = clock()
        end

        local n = v3 - v4
        local tbl3 = {}
        local v5, v6, v7 = pairs(tbl)
        for k, value in v5, v6, v7 do
            table.insert(tbl3, {
                total_time = value.total_time,
                count = value.count,
                average = value.total_time / value.count,
                output = func3(value, n)
            })
        end

        local sort = table.sort
        local v8 = tbl3
        local total = v2 or v7
        if not v2 then
            total = tbl2.TOTAL
        end

        sort(v8, total)
        local str2 = str
        for i, value in ipairs(tbl3) do
            str2 = str2 .. value.output
        end

        sethook(func2, "cr")
        return str2
    end,
    stop = stop
}
