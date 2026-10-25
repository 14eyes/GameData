require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WendyTrackTriggersp1 = class("WendyTrackTriggersp1", GadgetActorProxy)
WendyTrackTriggersp1.defaultAlias = "WendyTrackTriggersp1"
local n = 0
local v = 0
local Q371ClientConfig = require("Quest/Client/Q371ClientConfig")

function WendyTrackTriggersp1:OnPostDataPrepare()
    n = 0
    v = 0
end

function WendyTrackTriggersp1:OnPostComponentPrepare()
    self:AddComponentTrigger(12, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function WendyTrackTriggersp1:TriggerIn()
    print("Exit 37110")
    local actor = actorMgr:GetActor(Q371ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 37110)
    end

    self:DestroySelf()
end

function WendyTrackTriggersp1:TriggerOut() end
return WendyTrackTriggersp1
