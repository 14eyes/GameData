require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7068302Trigger = class("Q7068302Trigger", GadgetActorProxy)
Q7068302Trigger.defaultAlias = "Q7068302Trigger"
local Q70683ClientConfig = require("Quest/Client/Q70683ClientConfig")

local this
local subIDs = Q70683ClientConfig.SubIDs
local npcs = Q70683ClientConfig.Npcs

function Q7068302Trigger:OnPostDataPrepare()
    print("Q7068302Trigger - OnPostDataPrepare")
    this = self
end

function Q7068302Trigger:OnPostComponentPrepare()
    print("Q7068302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70683)
end

function Q7068302Trigger:TriggerIn()
    print("Q7068302Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7068302Trigger:PreTriggerIn()
    print("Q7068302Trigger - PreTriggerIn")
end

function Q7068302Trigger:LightUpTriggerIn()
    print("Q7068302Trigger - LightUpTriggerIn")
end

function Q7068302Trigger:TriggerOut()
    print("Q7068302Trigger - TriggerOut")
end

return Q7068302Trigger
