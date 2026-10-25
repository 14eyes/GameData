require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7513503_Trigger = class("Q7513503_Trigger", GadgetActorProxy)
Q7513503_Trigger.defaultAlias = "Q7513503_Trigger"
local Q75135ClientConfig = require("Quest/Client/Q75135ClientConfig")

local this
local subIDs = Q75135ClientConfig.SubIDs
local npcs = Q75135ClientConfig.Npcs

function Q7513503_Trigger:OnPostDataPrepare()
    print("Q7513503_Trigger - OnPostDataPrepare")
    this = self
end

function Q7513503_Trigger:OnPostComponentPrepare()
    print("Q7513503_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75135)
end

function Q7513503_Trigger:TriggerIn()
    print("Q7513503_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7513503)
    this:DestroySelf()
end

function Q7513503_Trigger:PreTriggerIn()
    print("Q7513503_Trigger - PreTriggerIn")
end

function Q7513503_Trigger:LightUpTriggerIn()
    print("Q7513503_Trigger - LightUpTriggerIn")
end

function Q7513503_Trigger:TriggerOut()
    print("Q7513503_Trigger - TriggerOut")
end

return Q7513503_Trigger
