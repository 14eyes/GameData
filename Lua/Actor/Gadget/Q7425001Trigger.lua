require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7425001Trigger = class("Q7425001Trigger", GadgetActorProxy)
Q7425001Trigger.defaultAlias = "Q7425001Trigger"
local Q74250ClientConfig = require("Quest/Client/Q74250ClientConfig")

local this
local subIDs = Q74250ClientConfig.SubIDs
local npcs = Q74250ClientConfig.Npcs
local points = Q74250ClientConfig.Points

function Q7425001Trigger:OnPostDataPrepare()
    print("Q7425001Trigger - OnPostDataPrepare")
    this = self
end

function Q7425001Trigger:OnPostComponentPrepare()
    print("Q7425001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74250)
end

function Q7425001Trigger:TriggerIn()
    print("Q7425001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7425001})
    this:DestroySelf()
end

function Q7425001Trigger:PreTriggerIn()
    print("Q7425001Trigger - PreTriggerIn")
end

function Q7425001Trigger:LightUpTriggerIn()
    print("Q7425001Trigger - LightUpTriggerIn")
end

function Q7425001Trigger:TriggerOut()
    print("Q7425001Trigger - TriggerOut")
end

return Q7425001Trigger
