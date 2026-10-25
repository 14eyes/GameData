require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local WendyTrackTrigger = class("WendyTrackTrigger", GadgetActorProxy)
WendyTrackTrigger.defaultAlias = "WendyTrackTrigger"
local n = 0
local v = 0
local Q371ClientConfig = require("Quest/Client/Q371ClientConfig")

function WendyTrackTrigger:OnPostDataPrepare()
    n = 0
    v = 0
end

function WendyTrackTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(12, DistType.EULER_XZ, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function WendyTrackTrigger:TriggerIn()
    local actor = actorMgr:GetActor(Q371ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function WendyTrackTrigger:TriggerOut() end
return WendyTrackTrigger
