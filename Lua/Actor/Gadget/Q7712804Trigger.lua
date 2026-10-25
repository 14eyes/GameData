require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712804Trigger = class("Q7712804Trigger", GadgetActorProxy)
Q7712804Trigger.defaultAlias = "Q7712804Trigger"
local Q77128ClientConfig = require("Quest/Client/Q77128ClientConfig")

local this
local subIDs = Q77128ClientConfig.SubIDs
local datas = Q77128ClientConfig.Datas
local npcs = Q77128ClientConfig.Npcs
local points = Q77128ClientConfig.Points

function Q7712804Trigger:OnPostDataPrepare()
    print("Q7712804Trigger - OnPostDataPrepare")
    this = self
end

function Q7712804Trigger:OnPostComponentPrepare()
    print("Q7712804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77128)
end

function Q7712804Trigger:TriggerIn()
    print("Q7712804Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7712804})
    this:DestroySelf()
end

function Q7712804Trigger:PreTriggerIn()
    print("Q7712804Trigger - PreTriggerIn")
end

function Q7712804Trigger:LightUpTriggerIn()
    print("Q7712804Trigger - LightUpTriggerIn")
end

function Q7712804Trigger:TriggerOut()
    print("Q7712804Trigger - TriggerOut")
end

return Q7712804Trigger
