require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7325602Trigger = class("Q7325602Trigger", GadgetActorProxy)
Q7325602Trigger.defaultAlias = "Q7325602Trigger"
local Q73256ClientConfig = require("Quest/Client/Q73256ClientConfig")

local this
local subIDs = Q73256ClientConfig.SubIDs
local npcs = Q73256ClientConfig.Npcs
local points = Q73256ClientConfig.Points
local datas = Q73256ClientConfig.Datas

function Q7325602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7325602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7325602Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7325601)
    this:DestroySelf()
end

function Q7325602Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7325602Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7325602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7325602Trigger
