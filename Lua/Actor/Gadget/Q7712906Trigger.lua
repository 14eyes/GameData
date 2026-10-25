require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712906Trigger = class("Q7712906Trigger", GadgetActorProxy)
Q7712906Trigger.defaultAlias = "Q7712906Trigger"
local Q77129ClientConfig = require("Quest/Client/Q77129ClientConfig")

local this
local subIDs = Q77129ClientConfig.SubIDs
local datas = Q77129ClientConfig.Datas
local npcs = Q77129ClientConfig.Npcs
local points = Q77129ClientConfig.Points

function Q7712906Trigger:OnPostDataPrepare()
    print("Q7712906Trigger - OnPostDataPrepare")
    this = self
end

function Q7712906Trigger:OnPostComponentPrepare()
    print("Q7712906Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77129)
end

function Q7712906Trigger:TriggerIn()
    print("Q7712906Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712906})
    this:DestroySelf()
end

function Q7712906Trigger:PreTriggerIn()
    print("Q7712906Trigger - PreTriggerIn")
end

function Q7712906Trigger:LightUpTriggerIn()
    print("Q7712906Trigger - LightUpTriggerIn")
end

function Q7712906Trigger:TriggerOut()
    print("Q7712906Trigger - TriggerOut")
end

return Q7712906Trigger
