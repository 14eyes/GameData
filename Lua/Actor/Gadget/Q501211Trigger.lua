require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501211Trigger = class("Q501211Trigger", GadgetActorProxy)
Q501211Trigger.defaultAlias = "Q501211Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501211Trigger:OnPostDataPrepare()
    print("Q501211Trigger - OnPostDataPrepare")
    this = self
end

function Q501211Trigger:OnPostComponentPrepare()
    print("Q501211Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501211Trigger:TriggerIn()
    print("Q501211Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501204, nil)
    this:DestroySelf()
end

function Q501211Trigger:PreTriggerIn()
    print("Q501211Trigger - PreTriggerIn")
end

function Q501211Trigger:LightUpTriggerIn()
    print("Q501211Trigger - LightUpTriggerIn")
end

function Q501211Trigger:TriggerOut()
    print("Q501211Trigger - TriggerOut")
end

return Q501211Trigger
