require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7528502Trigger = class("Q7528502Trigger", GadgetActorProxy)
Q7528502Trigger.defaultAlias = "Q7528502Trigger"
local Q75285ClientConfig = require("Quest/Client/Q75285ClientConfig")

local this
local subIDs = Q75285ClientConfig.SubIDs
local datas = Q75285ClientConfig.Datas
local points = Q75285ClientConfig.Points

function Q7528502Trigger:OnPostDataPrepare()
    print("Q7528502Trigger - OnPostDataPrepare")
    this = self
end

function Q7528502Trigger:OnPostComponentPrepare()
    print("Q7528502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75285)
end

function Q7528502Trigger:TriggerIn()
    print("Q7528502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7528502)
    this:DestroySelf()
end

function Q7528502Trigger:PreTriggerIn()
    print("Q7528502Trigger - PreTriggerIn")
end

function Q7528502Trigger:LightUpTriggerIn()
    print("Q7528502Trigger - LightUpTriggerIn")
end

function Q7528502Trigger:TriggerOut()
    print("Q7528502Trigger - TriggerOut")
end

return Q7528502Trigger
