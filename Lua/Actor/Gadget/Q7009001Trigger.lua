require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7009001Trigger = class("Q7009001Trigger", GadgetActorProxy)
Q7009001Trigger.defaultAlias = "Q7009001Trigger"
local Q70090ClientConfig = require("Quest/Client/Q70090ClientConfig")

local this
local subIDs = Q70090ClientConfig.SubIDs
local npcs = Q70090ClientConfig.Npcs
local points = Q70090ClientConfig.Points

function Q7009001Trigger:OnPostDataPrepare()
    print("Q7009001Trigger - OnPostDataPrepare")
    this = self
end

function Q7009001Trigger:OnPostComponentPrepare()
    print("Q7009001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70090)
end

function Q7009001Trigger:TriggerIn()
    print("Q7009001Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7009001})
    this:DestroySelf()
end

function Q7009001Trigger:PreTriggerIn()
    print("Q7009001Trigger - PreTriggerIn")
end

function Q7009001Trigger:LightUpTriggerIn()
    print("Q7009001Trigger - LightUpTriggerIn")
end

function Q7009001Trigger:TriggerOut()
    print("Q7009001Trigger - TriggerOut")
end

return Q7009001Trigger
