require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101127Trigger = class("Q101127Trigger", GadgetActorProxy)
Q101127Trigger.defaultAlias = "Q101127Trigger"
local Q1011ClientConfig = require("Quest/Client/Q1011ClientConfig")

function Q101127Trigger:OnPostDataPrepare() end

function Q101127Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(60, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101127Trigger:TriggerIn() end

function Q101127Trigger:TriggerOut()
    print("Out Q101127Trigger")
    local actor = actorMgr:GetActor(Q1011ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 101127)
    end

    self:DestroySelf()
end

return Q101127Trigger
