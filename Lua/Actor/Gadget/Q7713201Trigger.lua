require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7713201Trigger = class("Q7713201Trigger", GadgetActorProxy)
Q7713201Trigger.defaultAlias = "Q7713201Trigger"
local Q77132ClientConfig = require("Quest/Client/Q77132ClientConfig")

local this
local subIDs = Q77132ClientConfig.SubIDs
local datas = Q77132ClientConfig.Datas
local npcs = Q77132ClientConfig.Npcs
local points = Q77132ClientConfig.Points

function Q7713201Trigger:OnPostDataPrepare()
    print("Q7713201Trigger - OnPostDataPrepare")
    this = self
end

function Q7713201Trigger:OnPostComponentPrepare()
    print("Q7713201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(120, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77132)
end

function Q7713201Trigger:TriggerIn()
    print("Q7713201Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7713201})
    this:DestroySelf()
end

function Q7713201Trigger:PreTriggerIn()
    print("Q7713201Trigger - PreTriggerIn")
end

function Q7713201Trigger:LightUpTriggerIn()
    print("Q7713201Trigger - LightUpTriggerIn")
end

function Q7713201Trigger:TriggerOut()
    print("Q7713201Trigger - TriggerOut")
end

return Q7713201Trigger
