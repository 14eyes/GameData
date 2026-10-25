require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102206Trigger = class("Q1102206Trigger", GadgetActorProxy)
Q1102206Trigger.defaultAlias = "Q1102206Trigger"
local Q11022ClientConfig = require("Quest/Client/Q11022ClientConfig")

local subIDs = Q11022ClientConfig.SubIDs

function Q1102206Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102206Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102206Trigger:TriggerIn()
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(Q11022ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:CreateQuestNpcById(1102206, 10232)
            actor:RequestInteraction("Npc10232")
        end

        arg1:DestroySelf()
    end)
end

function Q1102206Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102206Trigger
