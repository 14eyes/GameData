require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616307Trigger = class("Q7616307Trigger", GadgetActorProxy)
Q7616307Trigger.defaultAlias = "Q7616307Trigger"
local Q76163ClientConfig = require("Quest/Client/Q76163ClientConfig")

local this
local subIDs = Q76163ClientConfig.SubIDs
local npcs = Q76163ClientConfig.Npcs
local points = Q76163ClientConfig.Points

function Q7616307Trigger:OnPostDataPrepare()
    print("Q7616307Trigger - OnPostDataPrepare")
    this = self
end

function Q7616307Trigger:OnPostComponentPrepare()
    print("Q7616307Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76163)
end

function Q7616307Trigger:TriggerIn()
    print("Q7616307Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7616307})
    this:DestroySelf()
end

function Q7616307Trigger:PreTriggerIn()
    print("Q7616307Trigger - PreTriggerIn")
end

function Q7616307Trigger:LightUpTriggerIn()
    print("Q7616307Trigger - LightUpTriggerIn")
end

function Q7616307Trigger:TriggerOut()
    print("Q7616307Trigger - TriggerOut")
end

return Q7616307Trigger
