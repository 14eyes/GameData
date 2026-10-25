require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7521302Trigger = class("Q7521302Trigger", GadgetActorProxy)
Q7521302Trigger.defaultAlias = "Q7521302Trigger"
local Q75213ClientConfig = require("Quest/Client/Q75213ClientConfig")

local this
local subIDs = Q75213ClientConfig.SubIDs
local npcs = Q75213ClientConfig.Npcs

function Q7521302Trigger:OnPostDataPrepare()
    print("Q7521302Trigger - OnPostDataPrepare")
    this = self
end

function Q7521302Trigger:OnPostComponentPrepare()
    print("Q7521302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75213)
end

function Q7521302Trigger:TriggerIn()
    print("Q7521302Trigger - TriggerIn")
    actorMgr:GetActor("75213"):CreateQuestNpcWithTrigger("", 0, 0, 0, 0, 2)
    this:DestroySelf()
end

function Q7521302Trigger:PreTriggerIn()
    print("Q7521302Trigger - PreTriggerIn")
end

function Q7521302Trigger:LightUpTriggerIn()
    print("Q7521302Trigger - LightUpTriggerIn")
end

function Q7521302Trigger:TriggerOut()
    print("Q7521302Trigger - TriggerOut")
end

return Q7521302Trigger
