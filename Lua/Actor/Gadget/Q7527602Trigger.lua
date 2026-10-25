require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7527602Trigger = class("Q7527602Trigger", GadgetActorProxy)
Q7527602Trigger.defaultAlias = "Q7527602Trigger"
local Q75276ClientConfig = require("Quest/Client/Q75276ClientConfig")

local this
local subIDs = Q75276ClientConfig.SubIDs
local datas = Q75276ClientConfig.Datas
local points = Q75276ClientConfig.Points

function Q7527602Trigger:OnPostDataPrepare()
    print("Q7527602Trigger - OnPostDataPrepare")
    this = self
end

function Q7527602Trigger:OnPostComponentPrepare()
    print("Q7527602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75276)
end

function Q7527602Trigger:TriggerIn()
    print("Q7527602Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7527602)
    this:DestroySelf()
end

function Q7527602Trigger:PreTriggerIn()
    print("Q7527602Trigger - PreTriggerIn")
end

function Q7527602Trigger:LightUpTriggerIn()
    print("Q7527602Trigger - LightUpTriggerIn")
end

function Q7527602Trigger:TriggerOut()
    print("Q7527602Trigger - TriggerOut")
end

return Q7527602Trigger
