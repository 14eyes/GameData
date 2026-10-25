require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101608Trigger = class("Q101608Trigger", GadgetActorProxy)
Q101608Trigger.defaultAlias = "Q101608Trigger"
local Q1016ClientConfig = require("Quest/Client/Q1016ClientConfig")

function Q101608Trigger:OnPostDataPrepare() end

function Q101608Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101608Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1016ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101601)
    end

    self:DestroySelf()
    print("let the player sit down")
end

function Q101608Trigger:TriggerOut() end
return Q101608Trigger
