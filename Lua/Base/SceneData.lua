local SceneData = {}
SceneData.SceneDataDic = {}
SceneData.DefaultSceneID = 3
SceneData.currSceneID = -1

function SceneData:ClearScene()
    if SceneData.currSceneID <= 0 then
        return
    end

    SceneData.SceneDataDic[SceneData.currSceneID] = nil
end

local function func(arg1)
    util.do_require(arg1)
end

local function v(arg1)
    util.unrequire(arg1)
end

local function func2(arg1)
    local str = tostring(arg1)
    return "Scene/" .. str .. "/scene" .. str
end

local function func3()
    groups = nil
    dummy_points = nil
    routes_config = nil
    routes = nil
    monsters = nil
    npcs = nil
    gadgets = nil
    regions = nil
    triggers = nil
    variables = nil
    init_config = nil
end

local function func4(arg1)
    func(arg1)
    local tbl = {
        scene_config = nil,
        blocks = nil,
        groups = nil,
        dummy_points = nil,
        routes = nil,
        ConfigType = {Monster = 0, Npc = 1, Gadget = 2},
        GetDummyPoint = function(arg1, arg2, arg3)
            if arg1.dummy_points == nil then
                return nil
            end

            if arg3 == nil then
                arg3 = false
            end

            if arg3 == false then
                print("try get new dymmy ppint:" .. arg2)
                local ok, v = pcall(SceneData.ParseDummyPoint, arg1, arg2)
                if ok then
                    if v ~= nil then
                        return v
                    end
                else
                    print("ParseDummyPoint Err:" .. v)
                end
            end

            local dummy_point
            if arg1.dummy_points[arg2] ~= nil then
                dummy_point = arg1.dummy_points[arg2]
            end

            return dummy_point
        end,
        scene_config = scene_config
    }

    if dummy_points ~= nil then
        if 0 < #dummy_points then
            local str = arg1 .. "_" .. dummy_points[1]
            func(str)
            tbl.dummy_points = dummy_points
            v(str)
        end
    end

    func3()
    v(arg1)
    return tbl
end

function SceneData:LoadScene(currSceneID, arg2)
    print("######sceneID")
    print(currSceneID)
    local sceneData = SceneData.SceneDataDic[currSceneID]
    if sceneData ~= nil then
        if not arg2 then
            SceneData.currSceneID = currSceneID
        end

        return sceneData
    end

    local v = func4(func2(currSceneID))
    SceneData.SceneDataDic[currSceneID] = v
    if not arg2 then
        SceneData.currSceneID = currSceneID
    end

    return v
end

function SceneData:GetSceneData(arg1)
    local sceneData = SceneData.SceneDataDic[arg1]
    if sceneData == nil then
        sceneData = SceneData.LoadScene(self, arg1, true)
    end

    return sceneData
end

function SceneData:GetDummyPoint(arg1, arg2, arg3)
    return SceneData.GetSceneData(self, arg1):GetDummyPoint(arg2, arg3)
end

function SceneData:ParseDummyPoint(arg1)
    if arg1 == nil then
        return nil
    end

    local pos, v = string.find(arg1, "%[")
    if v ~= 1 then
        return nil
    end

    local pos2, v2 = string.find(arg1, "%]")
    local count = #arg1
    if v2 ~= count then
        error("dummy point format err: " .. arg1)
        return nil
    end

    local pos3, v3 = string.find(arg1, ":")
    if v3 == nil then
        error("dummy point format err: " .. arg1)
        return nil
    end

    local str = string.sub(arg1, v3 + 1, count - 1)
    local split = SceneData.Split(self, str, ",")
    local count2 = #split
    if count2 ~= 3 and count2 ~= 6 then
        return nil
    end

    local num = tonumber(split[1])
    local y = tonumber(split[2])
    local z = tonumber(split[3])
    local x = 0
    local n = 0
    local num2 = 0
    if count2 == 6 then
        x = tonumber(split[4])
        n = tonumber(split[5])
        num2 = tonumber(split[6])
    end

    return {pos = {x = num, y = y, z = z}, rot = {x = x, y = n, z = num2}}
end

SceneData.SplitSep = ","
SceneData.SplitPattern = string.format("([^%s]+)", SceneData.SplitSep)

function SceneData:Split(arg1)
    local tbl = {}
    local splitPattern = SceneData.SplitPattern
    arg1:gsub(splitPattern, function(arg1)
        tbl[#tbl + 1] = arg1
    end)

    return tbl
end

return SceneData
