require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7331602Trigger = class("Q7331602Trigger", GadgetActorProxy)
Q7331602Trigger.defaultAlias = "Q7331602Trigger"
local Q73316ClientConfig = require("Quest/Client/Q73316ClientConfig")

local this
local subIDs = Q73316ClientConfig.SubIDs
local npcs = Q73316ClientConfig.Npcs
local points = Q73316ClientConfig.Points
local datas = Q73316ClientConfig.Datas

function Q7331602Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7331602Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7331602Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7331602)
    this:DestroySelf()
end

function Q7331602Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7331602Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7331602Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7331602Trigger
