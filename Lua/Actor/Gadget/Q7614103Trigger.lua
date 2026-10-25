require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614103Trigger = class("Q7614103Trigger", GadgetActorProxy)
Q7614103Trigger.defaultAlias = "Q7614103Trigger"
local Q76141ClientConfig = require("Quest/Client/Q76141ClientConfig")

local this
local subIDs = Q76141ClientConfig.SubIDs
local npcs = Q76141ClientConfig.Npcs
local points = Q76141ClientConfig.Points

function Q7614103Trigger:OnPostDataPrepare()
    print("Q7614103Trigger - OnPostDataPrepare")
    this = self
end

function Q7614103Trigger:OnPostComponentPrepare()
    print("Q7614103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76141)
end

function Q7614103Trigger:TriggerIn()
    print("Q7614103Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7614103})
    this:DestroySelf()
end

function Q7614103Trigger:PreTriggerIn()
    print("Q7614103Trigger - PreTriggerIn")
end

function Q7614103Trigger:LightUpTriggerIn()
    print("Q7614103Trigger - LightUpTriggerIn")
end

function Q7614103Trigger:TriggerOut()
    print("Q7614103Trigger - TriggerOut")
end

return Q7614103Trigger
