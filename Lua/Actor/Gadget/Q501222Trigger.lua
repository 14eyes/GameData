require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501222Trigger = class("Q501222Trigger", GadgetActorProxy)
Q501222Trigger.defaultAlias = "Q501222Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501222Trigger:OnPostDataPrepare()
    print("Q501222Trigger - OnPostDataPrepare")
    this = self
end

function Q501222Trigger:OnPostComponentPrepare()
    print("Q501222Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501222Trigger:TriggerIn()
    print("Q501222Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501209, nil)
    this:DestroySelf()
end

function Q501222Trigger:PreTriggerIn()
    print("Q501222Trigger - PreTriggerIn")
end

function Q501222Trigger:LightUpTriggerIn()
    print("Q501222Trigger - LightUpTriggerIn")
end

function Q501222Trigger:TriggerOut()
    print("Q501222Trigger - TriggerOut")
end

return Q501222Trigger
