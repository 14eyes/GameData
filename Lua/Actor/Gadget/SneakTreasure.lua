require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local SneakTreasure = class("SneakTreasure", GadgetActorProxy)
SneakTreasure.defaultAlias = "SneakTreasure"
local n = 0
local v = 0
local Q424ClientConfig = require("Quest/Client/Q424ClientConfig")

function SneakTreasure:OnPostDataPrepare()
    n = 0
    v = 0
end

function SneakTreasure:OnPostComponentPrepare()
    self:AddComponentTrigger(1.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function SneakTreasure:TriggerIn()
    local actor = actorMgr:GetActor(Q424ClientConfig.ActorAlias)
    if actor ~= nil then
        print("Got A Treasure")
        actor:GetTreasure()
    end

    local pos = self:GetPos()
    self:PlayEffect("Eff_FlyRace_Marker_Active_AS", pos)
    self:DestroySelf()
end

function SneakTreasure:TriggerOut()
    v = v + 1
end

return SneakTreasure
