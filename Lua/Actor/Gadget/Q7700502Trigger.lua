require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700502Trigger = class("Q7700502Trigger", GadgetActorProxy)
Q7700502Trigger.defaultAlias = "Q7700502Trigger"
local Q77005ClientConfig = require("Quest/Client/Q77005ClientConfig")

local this
local subIDs = Q77005ClientConfig.SubIDs
local datas = Q77005ClientConfig.Datas
local npcs = Q77005ClientConfig.Npcs
local points = Q77005ClientConfig.Points

function Q7700502Trigger:OnPostDataPrepare()
    print("Q7700502Trigger - OnPostDataPrepare")
    this = self
end

function Q7700502Trigger:OnPostComponentPrepare()
    print("Q7700502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77005)
end

function Q7700502Trigger:TriggerIn()
    print("Q7700502Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7700502})
    this:DestroySelf()
end

function Q7700502Trigger:PreTriggerIn()
    print("Q7700502Trigger - PreTriggerIn")
end

function Q7700502Trigger:LightUpTriggerIn()
    print("Q7700502Trigger - LightUpTriggerIn")
end

function Q7700502Trigger:TriggerOut()
    print("Q7700502Trigger - TriggerOut")
end

return Q7700502Trigger
