require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72736Trigger = class("Q72736Trigger", GadgetActorProxy)
Q72736Trigger.defaultAlias = "Q72736Trigger"
local Q72736ClientConfig = require("Quest/Client/Q72736ClientConfig")

local this
local subIDs = Q72736ClientConfig.SubIDs
local npcs = Q72736ClientConfig.Npcs

function Q72736Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q72736Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q72736Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72736"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("72736")
        actor:CreateQuestNpcById(7273603, npcs.Npc13019Data.id, 0)
        actor:RequestInteraction(npcs.Npc13019Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q72736Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q72736Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q72736Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72736Trigger
