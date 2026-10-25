require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325140Trigger = class("Q7325140Trigger", GadgetActorProxy)
Q7325140Trigger.defaultAlias = "Q7325140Trigger"
local Q73251ClientConfig = require("Quest/Client/Q73251ClientConfig")

local this
local subIDs = Q73251ClientConfig.SubIDs
local npcs = Q73251ClientConfig.Npcs
local points = Q73251ClientConfig.Points
local datas = Q73251ClientConfig.Datas

function Q7325140Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325140Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325140Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325140)
    this:DestroySelf()
end

function Q7325140Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325140Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325140Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325140Trigger
