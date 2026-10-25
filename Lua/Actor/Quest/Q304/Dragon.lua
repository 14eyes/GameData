require("Actor/ActorCommon")
local MQ304 = require("Actor/Quest/MQ304")
local NpcActorProxy = require("Actor/Npc/NpcActorProxy")

local Dragon = class("Dragon", NpcActorProxy)
Dragon.defaultAlias = "Dragon"
Dragon.pointID = 1
local Q304Config = require("Actor/Quest/Q304/Q304Config")
local Q361ClientConfig = require("Quest/Client/Q361ClientConfig")

local dragonData = Q304Config.DragonData

function Dragon:PreGetAlias()
    return dragonData.Dragon
end

function Dragon:FlyCircle()
    if self.pointID == dragonData.CircleNum then
        self.pointID = 1
    else
        self.pointID = self.pointID + 1
    end

    print("DragonPos" .. tostring(self.pointID))
    self:ClearFollowTask()
    self:SwitchAirMode(true)
    self:WalkToTask(dragonData.DragonPos[self.pointID], self.Standby, self.Standby)
    self:CallDelay(5, self.FlyCircle)
end

function Dragon:FlyCircle2()
    if self.pointID == dragonData.CircleNum then
        self.pointID = 1
    else
        self.pointID = self.pointID + 1
    end

    print("DragonPos" .. tostring(self.pointID))
    self:ClearFollowTask()
    self:SwitchAirMode(true)
    self:WalkToTask(dragonData.DragonPos[self.pointID], self.FlyCircle, self.Standby)
end

function Dragon:Start()
    print("start!Dragon")
end

function Dragon:OnDestroy()
    print("Dragon " .. dragonData.DragonID .. " destroied")
end

return Dragon
