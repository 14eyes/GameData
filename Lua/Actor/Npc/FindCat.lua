require("Actor/ActorCommon")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local FindCat = class("FindCat", NpcActorProxy)
FindCat.defaultAlias = "FindCat"
FindCat.PatrolPosNum = 0
FindCat.PatrolPos = nil
FindCat.PatrolDir = nil
FindCat.PatrolNext = 1

function FindCat:GetCustomFreeStyleList()
    local tbl = {}
    local n = 1
    local v = 2
    tbl[1] = 0
    tbl[2] = n
    tbl[3] = v
    return tbl
end

function FindCat:Return()
    self:DoFreeStateTrigger()
end

function FindCat:Aware()
    print("********************Aware")
    self:ClearFollowTask()
    self:Standby()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:TurnTo(tbl)
    self:DoFreeStyle(1)
end

function FindCat:CheckLure()
    print("********************CheckLure")
    self:Standby()
end

function FindCat:OnLure(arg1, arg2)
    print("********************OnLure")
    if arg2.hasSound == true then
        print("********************MoveToLure")
        local pos = self:GetPos()
        local tbl = {x = arg2.soundPos.x - pos.x, y = arg2.soundPos.y - pos.y, z = arg2.soundPos.z - pos.z}
        local v = {x = arg2.soundPos.x, y = arg2.soundPos.y + 1, z = arg2.soundPos.z}
        print("SpawnItem")
        print("TurnDir")
        print(tbl.x)
        self:TurnTo(tbl)
        self:DoFreeStyle(0)
        self:CallDelay(1, function(arg1, arg2_2)
            arg1:Standby()
            arg1:DoFreeStateTrigger()
            arg1:WalkToTask(arg2.soundPos, arg1.CheckLure)
        end)
    end
end

function FindCat:Discover()
    print("********************Discover")
    self:Standby()
    self:DoFreeStateTrigger()
    self:DoFreeStyle(2)
    local pos = self:GetPos()
    local avatarPos = actorUtils.GetAvatarPos()
    local n = 6
    local vectorCal = self:VectorCal(pos, avatarPos)
    local tbl = {x = vectorCal.x * n + pos.x, y = vectorCal.y * n + pos.y, z = vectorCal.z * n + pos.z}
    self:CallDelay(1, self.DisAppear)
    self:RunToTask(tbl, nil)
end

function FindCat:DisAppear()
    self:PerformDither(false, 0.3, self.ChangePlace)
end

function FindCat:ChangePlace()
    local actor = actorMgr:GetActor("487")
    if actor ~= nil then
        actor:CatRun()
    end

    self:Destroy(false)
end

function FindCat:VectorCal(arg1, arg2)
    local tbl = {x = arg1.x - arg2.x, y = arg1.y - arg2.y, z = arg1.z - arg2.z}
    return self:Normallize(tbl)
end

function FindCat:Normallize(arg1)
    local x = arg1.x
    local y = arg1.y
    local z = arg1.z
    local n = math.sqrt(x * x + y * y + z * z)
    return {x = x / n, y = y / n, z = z / n}
end

function FindCat:Start()
    print("********************Start")
    self:ThreatTask(self.Discover, self.Aware, self.Return, self.OnLure)
end

return FindCat
