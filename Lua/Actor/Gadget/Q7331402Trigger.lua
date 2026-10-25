require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331402Trigger = class("Q7331402Trigger", GadgetActorProxy)
Q7331402Trigger.defaultAlias = "Q7331402Trigger"
local Q73314ClientConfig = require("Quest/Client/Q73314ClientConfig")

local this
local subIDs = Q73314ClientConfig.SubIDs
local npcs = Q73314ClientConfig.Npcs
local points = Q73314ClientConfig.Points
local datas = Q73314ClientConfig.Datas

function Q7331402Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331402Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7331402Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331402)
    this:DestroySelf()
end

function Q7331402Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7331402Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7331402Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331402Trigger
