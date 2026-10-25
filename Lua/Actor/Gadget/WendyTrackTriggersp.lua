require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WendyTrackTriggersp = class("WendyTrackTriggersp", GadgetActorProxy)
WendyTrackTriggersp.defaultAlias = "WendyTrackTriggersp"
local n = 0
local v = 0
local Q371ClientConfig = require("Quest/Client/Q371ClientConfig")

function WendyTrackTriggersp:OnPostDataPrepare()
    n = 0
    v = 0
end

function WendyTrackTriggersp:OnPostComponentPrepare()
    self:AddComponentTrigger(12, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function WendyTrackTriggersp:TriggerIn()
    print("Exit 37109")
    local actor = actorMgr:GetActor(Q371ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 37109)
    end

    self:DestroySelf()
end

function WendyTrackTriggersp:TriggerOut() end
return WendyTrackTriggersp
