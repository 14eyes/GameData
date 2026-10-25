require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501205Trigger = class("Q501205Trigger", GadgetActorProxy)
Q501205Trigger.defaultAlias = "Q501205Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501205Trigger:OnPostDataPrepare()
    print("Q501205Trigger - OnPostDataPrepare")
    this = self
end

function Q501205Trigger:OnPostComponentPrepare()
    print("Q501205Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501205Trigger:TriggerIn()
    print("Q501205Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501202, nil)
    this:DestroySelf()
end

function Q501205Trigger:PreTriggerIn()
    print("Q501205Trigger - PreTriggerIn")
end

function Q501205Trigger:LightUpTriggerIn()
    print("Q501205Trigger - LightUpTriggerIn")
end

function Q501205Trigger:TriggerOut()
    print("Q501205Trigger - TriggerOut")
end

return Q501205Trigger
