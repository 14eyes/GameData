require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60205Trigger = class("Q60205Trigger", GadgetActorProxy)
Q60205Trigger.defaultAlias = "Q60205Trigger"
local Q602ClientConfig = require("Quest/Client/Q602ClientConfig")

local this
local subIDs = Q602ClientConfig.SubIDs
local datas = Q602ClientConfig.Datas
local npcs = Q602ClientConfig.Npcs
local points = Q602ClientConfig.Points

function Q60205Trigger:OnPostDataPrepare()
    print("Q60205Trigger - OnPostDataPrepare")
    this = self
end

function Q60205Trigger:OnPostComponentPrepare()
    print("Q60205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 602)
end

function Q60205Trigger:TriggerIn()
    print("Q60205Trigger - TriggerIn")
    actorMgr:GetActor("602"):QuestNarratorTask(datas.NarratorWithId_60201, nil)
    this:DestroySelf()
end

function Q60205Trigger:PreTriggerIn()
    print("Q60205Trigger - PreTriggerIn")
end

function Q60205Trigger:LightUpTriggerIn()
    print("Q60205Trigger - LightUpTriggerIn")
end

function Q60205Trigger:TriggerOut()
    print("Q60205Trigger - TriggerOut")
end

return Q60205Trigger
