require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WendyTrackTriggersp4 = class("WendyTrackTriggersp4", GadgetActorProxy)
WendyTrackTriggersp4.defaultAlias = "WendyTrackTriggersp4"
local n = 0
local v = 0
local Q371ClientConfig = require("Quest/Client/Q371ClientConfig")

function WendyTrackTriggersp4:OnPostDataPrepare()
    n = 0
    v = 0
end

function WendyTrackTriggersp4:OnPostComponentPrepare()
    self:AddComponentTrigger(12, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function WendyTrackTriggersp4:TriggerIn()
    print("Exit 37113")
    local actor = actorMgr:GetActor(Q371ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 37113)
    end

    self:DestroySelf()
end

function WendyTrackTriggersp4:TriggerOut() end
return WendyTrackTriggersp4
