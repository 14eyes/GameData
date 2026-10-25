require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7323201Trigger = class("Q7323201Trigger", GadgetActorProxy)
Q7323201Trigger.defaultAlias = "Q7323201Trigger"
local Q73232ClientConfig = require("Quest/Client/Q73232ClientConfig")

local this
local subIDs = Q73232ClientConfig.SubIDs
local npcs = Q73232ClientConfig.Npcs
local points = Q73232ClientConfig.Points
local datas = Q73232ClientConfig.Datas

function Q7323201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7323201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7323201Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7323201)
    this:DestroySelf()
end

function Q7323201Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7323201Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7323201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7323201Trigger
