require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WendyTrackTriggersp2 = class("WendyTrackTriggersp2", GadgetActorProxy)
WendyTrackTriggersp2.defaultAlias = "WendyTrackTriggersp2"
local n = 0
local v = 0
local Q371ClientConfig = require("Quest/Client/Q371ClientConfig")

function WendyTrackTriggersp2:OnPostDataPrepare()
    n = 0
    v = 0
end

function WendyTrackTriggersp2:OnPostComponentPrepare()
    self:AddComponentTrigger(12, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function WendyTrackTriggersp2:TriggerIn()
    print("Exit 37111")
    local actor = actorMgr:GetActor(Q371ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 37111)
    end

    self:DestroySelf()
end

function WendyTrackTriggersp2:TriggerOut() end
return WendyTrackTriggersp2
