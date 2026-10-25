require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73524Trigger = class("Q73524Trigger", GadgetActorProxy)
Q73524Trigger.defaultAlias = "Q73524Trigger"
local Q73524ClientConfig = require("Quest/Client/Q73524ClientConfig")

local this
local subIDs = Q73524ClientConfig.SubIDs
local npcs = Q73524ClientConfig.Npcs
local points = Q73524ClientConfig.Points
local datas = Q73524ClientConfig.Datas

function Q73524Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73524Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73524Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7352405)
    this:DestroySelf()
end

function Q73524Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73524Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73524Trigger:TriggerOut()
    print("TriggerOut")
end

return Q73524Trigger
