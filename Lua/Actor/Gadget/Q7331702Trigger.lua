require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331702Trigger = class("Q7331702Trigger", GadgetActorProxy)
Q7331702Trigger.defaultAlias = "Q7331702Trigger"
local Q73317ClientConfig = require("Quest/Client/Q73317ClientConfig")

local this
local subIDs = Q73317ClientConfig.SubIDs
local npcs = Q73317ClientConfig.Npcs
local points = Q73317ClientConfig.Points
local datas = Q73317ClientConfig.Datas

function Q7331702Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331702Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7331702Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331702)
    this:DestroySelf()
end

function Q7331702Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7331702Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7331702Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331702Trigger
