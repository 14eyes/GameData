require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712902Trigger = class("Q7712902Trigger", GadgetActorProxy)
Q7712902Trigger.defaultAlias = "Q7712902Trigger"
local Q77129ClientConfig = require("Quest/Client/Q77129ClientConfig")

local this
local subIDs = Q77129ClientConfig.SubIDs
local datas = Q77129ClientConfig.Datas
local npcs = Q77129ClientConfig.Npcs
local points = Q77129ClientConfig.Points

function Q7712902Trigger:OnPostDataPrepare()
    print("Q7712902Trigger - OnPostDataPrepare")
    this = self
end

function Q7712902Trigger:OnPostComponentPrepare()
    print("Q7712902Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(80, 52, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77129)
end

function Q7712902Trigger:TriggerIn()
    print("Q7712902Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712902})
    this:DestroySelf()
end

function Q7712902Trigger:PreTriggerIn()
    print("Q7712902Trigger - PreTriggerIn")
end

function Q7712902Trigger:LightUpTriggerIn()
    print("Q7712902Trigger - LightUpTriggerIn")
end

function Q7712902Trigger:TriggerOut()
    print("Q7712902Trigger - TriggerOut")
end

return Q7712902Trigger
