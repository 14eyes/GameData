require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7069001Trigger = class("Q7069001Trigger", GadgetActorProxy)
Q7069001Trigger.defaultAlias = "Q7069001Trigger"
local Q70690ClientConfig = require("Quest/Client/Q70690ClientConfig")

local this
local subIDs = Q70690ClientConfig.SubIDs
local npcs = Q70690ClientConfig.Npcs

function Q7069001Trigger:OnPostDataPrepare()
    print("Q7069001Trigger - OnPostDataPrepare")
    this = self
end

function Q7069001Trigger:OnPostComponentPrepare()
    print("Q7069001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70690)
end

function Q7069001Trigger:TriggerIn()
    print("Q7069001Trigger - TriggerIn")
end

function Q7069001Trigger:PreTriggerIn()
    print("Q7069001Trigger - PreTriggerIn")
end

function Q7069001Trigger:LightUpTriggerIn()
    print("Q7069001Trigger - LightUpTriggerIn")
end

function Q7069001Trigger:TriggerOut()
    print("Q7069001Trigger - TriggerOut")
    actorMgr:GetActor("70690"):DestroyQuestNpcActor(npcs.Lisa.alias, 1004)
    actorUtils.FinishQuestID(false, 7007001)
    this:DestroySelf()
end

return Q7069001Trigger
