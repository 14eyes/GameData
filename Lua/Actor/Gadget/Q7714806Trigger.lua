require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714806Trigger = class("Q7714806Trigger", GadgetActorProxy)
Q7714806Trigger.defaultAlias = "Q7714806Trigger"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714806Trigger:OnPostDataPrepare()
    print("Q7714806Trigger - OnPostDataPrepare")
    this = self
end

function Q7714806Trigger:OnPostComponentPrepare()
    print("Q7714806Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714806Trigger:TriggerIn()
    print("Q7714806Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7714806)
    this:DestroySelf()
end

function Q7714806Trigger:PreTriggerIn()
    print("Q7714806Trigger - PreTriggerIn")
end

function Q7714806Trigger:LightUpTriggerIn()
    print("Q7714806Trigger - LightUpTriggerIn")
end

function Q7714806Trigger:TriggerOut()
    print("Q7714806Trigger - TriggerOut")
end

return Q7714806Trigger
