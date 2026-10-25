require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7718508Trigger = class("Q7718508Trigger", GadgetActorProxy)
Q7718508Trigger.defaultAlias = "Q7718508Trigger"
local Q77185ClientConfig = require("Quest/Client/Q77185ClientConfig")

local this
local subIDs = Q77185ClientConfig.SubIDs
local npcs = Q77185ClientConfig.Npcs
local points = Q77185ClientConfig.Points

function Q7718508Trigger:OnPostDataPrepare()
    print("Q7718508Trigger - OnPostDataPrepare")
    this = self
end

function Q7718508Trigger:OnPostComponentPrepare()
    print("Q7718508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77185)
end

function Q7718508Trigger:TriggerIn()
    print("Q7718508Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7718508})
    this:DestroySelf()
end

function Q7718508Trigger:PreTriggerIn()
    print("Q7718508Trigger - PreTriggerIn")
end

function Q7718508Trigger:LightUpTriggerIn()
    print("Q7718508Trigger - LightUpTriggerIn")
end

function Q7718508Trigger:TriggerOut()
    print("Q7718508Trigger - TriggerOut")
end

return Q7718508Trigger
