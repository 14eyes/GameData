require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7527601Trigger = class("Q7527601Trigger", GadgetActorProxy)
Q7527601Trigger.defaultAlias = "Q7527601Trigger"
local Q75276ClientConfig = require("Quest/Client/Q75276ClientConfig")

local this
local subIDs = Q75276ClientConfig.SubIDs
local datas = Q75276ClientConfig.Datas
local points = Q75276ClientConfig.Points

function Q7527601Trigger:OnPostDataPrepare()
    print("Q7527601Trigger - OnPostDataPrepare")
    this = self
end

function Q7527601Trigger:OnPostComponentPrepare()
    print("Q7527601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75276)
end

function Q7527601Trigger:TriggerIn()
    print("Q7527601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7527601)
    this:DestroySelf()
end

function Q7527601Trigger:PreTriggerIn()
    print("Q7527601Trigger - PreTriggerIn")
end

function Q7527601Trigger:LightUpTriggerIn()
    print("Q7527601Trigger - LightUpTriggerIn")
end

function Q7527601Trigger:TriggerOut()
    print("Q7527601Trigger - TriggerOut")
end

return Q7527601Trigger
