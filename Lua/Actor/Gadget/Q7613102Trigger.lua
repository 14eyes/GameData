require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613102Trigger = class("Q7613102Trigger", GadgetActorProxy)
Q7613102Trigger.defaultAlias = "Q7613102Trigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613102Trigger:OnPostDataPrepare()
    print("Q7613102Trigger - OnPostDataPrepare")
    this = self
end

function Q7613102Trigger:OnPostComponentPrepare()
    print("Q7613102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(150, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613102Trigger:TriggerIn()
    print("Q7613102Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613102})
    this:DestroySelf()
end

function Q7613102Trigger:PreTriggerIn()
    print("Q7613102Trigger - PreTriggerIn")
end

function Q7613102Trigger:LightUpTriggerIn()
    print("Q7613102Trigger - LightUpTriggerIn")
end

function Q7613102Trigger:TriggerOut()
    print("Q7613102Trigger - TriggerOut")
end

return Q7613102Trigger
