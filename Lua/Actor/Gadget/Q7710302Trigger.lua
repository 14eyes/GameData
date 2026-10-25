require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710302Trigger = class("Q7710302Trigger", GadgetActorProxy)
Q7710302Trigger.defaultAlias = "Q7710302Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710302Trigger:OnPostDataPrepare()
    print("Q7710302Trigger - OnPostDataPrepare")
    this = self
end

function Q7710302Trigger:OnPostComponentPrepare()
    print("Q7710302Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710302Trigger:TriggerIn()
    print("Q7710302Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710302)
    this:DestroySelf()
end

function Q7710302Trigger:PreTriggerIn()
    print("Q7710302Trigger - PreTriggerIn")
end

function Q7710302Trigger:LightUpTriggerIn()
    print("Q7710302Trigger - LightUpTriggerIn")
end

function Q7710302Trigger:TriggerOut()
    print("Q7710302Trigger - TriggerOut")
end

return Q7710302Trigger
