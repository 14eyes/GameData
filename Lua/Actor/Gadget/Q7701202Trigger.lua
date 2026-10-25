require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7701202Trigger = class("Q7701202Trigger", GadgetActorProxy)
Q7701202Trigger.defaultAlias = "Q7701202Trigger"
local Q77012ClientConfig = require("Quest/Client/Q77012ClientConfig")

local this
local subIDs = Q77012ClientConfig.SubIDs
local datas = Q77012ClientConfig.Datas
local npcs = Q77012ClientConfig.Npcs
local points = Q77012ClientConfig.Points

function Q7701202Trigger:OnPostDataPrepare()
    print("Q7701202Trigger - OnPostDataPrepare")
    this = self
end

function Q7701202Trigger:OnPostComponentPrepare()
    print("Q7701202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77012)
end

function Q7701202Trigger:TriggerIn()
    print("Q7701202Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7701202})
    this:DestroySelf()
end

function Q7701202Trigger:PreTriggerIn()
    print("Q7701202Trigger - PreTriggerIn")
end

function Q7701202Trigger:LightUpTriggerIn()
    print("Q7701202Trigger - LightUpTriggerIn")
end

function Q7701202Trigger:TriggerOut()
    print("Q7701202Trigger - TriggerOut")
end

return Q7701202Trigger
