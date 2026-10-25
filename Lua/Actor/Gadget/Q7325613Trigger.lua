require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325613Trigger = class("Q7325613Trigger", GadgetActorProxy)
Q7325613Trigger.defaultAlias = "Q7325613Trigger"
local Q73256ClientConfig = require("Quest/Client/Q73256ClientConfig")

local this
local subIDs = Q73256ClientConfig.SubIDs
local npcs = Q73256ClientConfig.Npcs
local points = Q73256ClientConfig.Points
local datas = Q73256ClientConfig.Datas

function Q7325613Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325613Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325613Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325613)
    this:DestroySelf()
end

function Q7325613Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325613Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325613Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325613Trigger
