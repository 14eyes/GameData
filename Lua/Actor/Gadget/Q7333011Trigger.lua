require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7333011Trigger = class("Q7333011Trigger", GadgetActorProxy)
Q7333011Trigger.defaultAlias = "Q7333011Trigger"
local Q73330ClientConfig = require("Quest/Client/Q73330ClientConfig")

local this
local subIDs = Q73330ClientConfig.SubIDs
local npcs = Q73330ClientConfig.Npcs
local points = Q73330ClientConfig.Points
local datas = Q73330ClientConfig.Datas

function Q7333011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7333011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7333011Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7333011)
    this:DestroySelf()
end

function Q7333011Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7333011Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7333011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7333011Trigger
