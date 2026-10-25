require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331202Trigger = class("Q7331202Trigger", GadgetActorProxy)
Q7331202Trigger.defaultAlias = "Q7331202Trigger"
local Q73312ClientConfig = require("Quest/Client/Q73312ClientConfig")

local this
local subIDs = Q73312ClientConfig.SubIDs
local npcs = Q73312ClientConfig.Npcs
local points = Q73312ClientConfig.Points
local datas = Q73312ClientConfig.Datas

function Q7331202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7331202Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331202)
    this:DestroySelf()
end

function Q7331202Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7331202Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7331202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331202Trigger
