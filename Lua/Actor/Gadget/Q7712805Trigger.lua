require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712805Trigger = class("Q7712805Trigger", GadgetActorProxy)
Q7712805Trigger.defaultAlias = "Q7712805Trigger"
local Q77128ClientConfig = require("Quest/Client/Q77128ClientConfig")

local this
local subIDs = Q77128ClientConfig.SubIDs
local datas = Q77128ClientConfig.Datas
local npcs = Q77128ClientConfig.Npcs
local points = Q77128ClientConfig.Points

function Q7712805Trigger:OnPostDataPrepare()
    print("Q7712805Trigger - OnPostDataPrepare")
    this = self
end

function Q7712805Trigger:OnPostComponentPrepare()
    print("Q7712805Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77128)
end

function Q7712805Trigger:TriggerIn()
    print("Q7712805Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712805})
    this:DestroySelf()
end

function Q7712805Trigger:PreTriggerIn()
    print("Q7712805Trigger - PreTriggerIn")
end

function Q7712805Trigger:LightUpTriggerIn()
    print("Q7712805Trigger - LightUpTriggerIn")
end

function Q7712805Trigger:TriggerOut()
    print("Q7712805Trigger - TriggerOut")
end

return Q7712805Trigger
