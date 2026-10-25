require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7723502Trigger = class("Q7723502Trigger", GadgetActorProxy)
Q7723502Trigger.defaultAlias = "Q7723502Trigger"
local Q77235ClientConfig = require("Quest/Client/Q77235ClientConfig")

local this
local subIDs = Q77235ClientConfig.SubIDs
local datas = Q77235ClientConfig.Datas
local npcs = Q77235ClientConfig.Npcs

function Q7723502Trigger:OnPostDataPrepare()
    print("Q7723502Trigger - OnPostDataPrepare")
    this = self
end

function Q7723502Trigger:OnPostComponentPrepare()
    print("Q7723502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77235)
end

function Q7723502Trigger:TriggerIn()
    print("Q7723502Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7723502})
    this:DestroySelf()
end

function Q7723502Trigger:PreTriggerIn()
    print("Q7723502Trigger - PreTriggerIn")
end

function Q7723502Trigger:LightUpTriggerIn()
    print("Q7723502Trigger - LightUpTriggerIn")
end

function Q7723502Trigger:TriggerOut()
    print("Q7723502Trigger - TriggerOut")
end

return Q7723502Trigger
