require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602320Trigger = class("Q7602320Trigger", GadgetActorProxy)
Q7602320Trigger.defaultAlias = "Q7602320Trigger"
local Q76023ClientConfig = require("Quest/Client/Q76023ClientConfig")

local this
local subIDs = Q76023ClientConfig.SubIDs
local datas = Q76023ClientConfig.Datas
local npcs = Q76023ClientConfig.Npcs
local points = Q76023ClientConfig.Points

function Q7602320Trigger:OnPostDataPrepare()
    print("Q7602320Trigger - OnPostDataPrepare")
    this = self
end

function Q7602320Trigger:OnPostComponentPrepare()
    print("Q7602320Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(20, 3, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76023)
end

function Q7602320Trigger:TriggerIn()
    print("Q7602320Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602320)
    this:DestroySelf()
end

function Q7602320Trigger:PreTriggerIn()
    print("Q7602320Trigger - PreTriggerIn")
end

function Q7602320Trigger:LightUpTriggerIn()
    print("Q7602320Trigger - LightUpTriggerIn")
end

function Q7602320Trigger:TriggerOut()
    print("Q7602320Trigger - TriggerOut")
end

return Q7602320Trigger
