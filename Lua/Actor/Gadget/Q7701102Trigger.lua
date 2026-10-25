require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701102Trigger = class("Q7701102Trigger", GadgetActorProxy)
Q7701102Trigger.defaultAlias = "Q7701102Trigger"
local Q77011ClientConfig = require("Quest/Client/Q77011ClientConfig")

local this
local subIDs = Q77011ClientConfig.SubIDs
local datas = Q77011ClientConfig.Datas
local npcs = Q77011ClientConfig.Npcs
local points = Q77011ClientConfig.Points

function Q7701102Trigger:OnPostDataPrepare()
    print("Q7701102Trigger - OnPostDataPrepare")
    this = self
end

function Q7701102Trigger:OnPostComponentPrepare()
    print("Q7701102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77011)
end

function Q7701102Trigger:TriggerIn()
    print("Q7701102Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7701102})
    this:DestroySelf()
end

function Q7701102Trigger:PreTriggerIn()
    print("Q7701102Trigger - PreTriggerIn")
end

function Q7701102Trigger:LightUpTriggerIn()
    print("Q7701102Trigger - LightUpTriggerIn")
end

function Q7701102Trigger:TriggerOut()
    print("Q7701102Trigger - TriggerOut")
end

return Q7701102Trigger
