require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102309Trigger = class("Q1102309Trigger", GadgetActorProxy)
Q1102309Trigger.defaultAlias = "Q1102309Trigger"
local Q11023ClientConfig = require("Quest/Client/Q11023ClientConfig")

function Q1102309Trigger:OnPostDataPrepare() end

function Q1102309Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(4, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1102309Trigger:TriggerIn()
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(Q11023ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:CreateQuestNpcById(1102309, 10303)
            actor:CreateQuestNpcById(1102309, 10232)
            actor:RequestInteraction("Npc10232")
        end
    end)

    self:DestroySelf()
end

function Q1102309Trigger:TriggerOut() end
return Q1102309Trigger
