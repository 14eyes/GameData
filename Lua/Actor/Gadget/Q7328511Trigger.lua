require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7328511Trigger = class("Q7328511Trigger", GadgetActorProxy)
Q7328511Trigger.defaultAlias = "Q7328511Trigger"
local Q73285ClientConfig = require("Quest/Client/Q73285ClientConfig")

local this
local subIDs = Q73285ClientConfig.SubIDs
local npcs = Q73285ClientConfig.Npcs
local points = Q73285ClientConfig.Points
local datas = Q73285ClientConfig.Datas

function Q7328511Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7328511Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7328511Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7328511)
    this:DestroySelf()
end

function Q7328511Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7328511Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7328511Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7328511Trigger
