require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7116218Trigger = class("Q7116218Trigger", GadgetActorProxy)
Q7116218Trigger.defaultAlias = "Q7116218Trigger"
local Q71162ClientConfig = require("Quest/Client/Q71162ClientConfig")

local this
local subIDs = Q71162ClientConfig.SubIDs
local datas = Q71162ClientConfig.Datas
local npcs = Q71162ClientConfig.Npcs
local points = Q71162ClientConfig.Points

function Q7116218Trigger:OnPostDataPrepare()
    print("Q7116218Trigger - OnPostDataPrepare")
    this = self
end

function Q7116218Trigger:OnPostComponentPrepare()
    print("Q7116218Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71162)
end

function Q7116218Trigger:TriggerIn()
    print("Q7116218Trigger - TriggerIn")
    actorMgr:GetActor("71162"):QuestNarratorTask(datas.NarratorWithId7116205, nil)
    this:DestroySelf()
end

function Q7116218Trigger:PreTriggerIn()
    print("Q7116218Trigger - PreTriggerIn")
end

function Q7116218Trigger:LightUpTriggerIn()
    print("Q7116218Trigger - LightUpTriggerIn")
end

function Q7116218Trigger:TriggerOut()
    print("Q7116218Trigger - TriggerOut")
end

return Q7116218Trigger
