require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7527603Trigger = class("Q7527603Trigger", GadgetActorProxy)
Q7527603Trigger.defaultAlias = "Q7527603Trigger"
local Q75276ClientConfig = require("Quest/Client/Q75276ClientConfig")

local this
local subIDs = Q75276ClientConfig.SubIDs
local datas = Q75276ClientConfig.Datas
local points = Q75276ClientConfig.Points

function Q7527603Trigger:OnPostDataPrepare()
    print("Q7527603Trigger - OnPostDataPrepare")
    this = self
end

function Q7527603Trigger:OnPostComponentPrepare()
    print("Q7527603Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75276)
end

function Q7527603Trigger:TriggerIn()
    print("Q7527603Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7527603)
    this:DestroySelf()
end

function Q7527603Trigger:PreTriggerIn()
    print("Q7527603Trigger - PreTriggerIn")
end

function Q7527603Trigger:LightUpTriggerIn()
    print("Q7527603Trigger - LightUpTriggerIn")
end

function Q7527603Trigger:TriggerOut()
    print("Q7527603Trigger - TriggerOut")
end

return Q7527603Trigger
