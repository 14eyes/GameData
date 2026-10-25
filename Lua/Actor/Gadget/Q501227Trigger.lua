require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501227Trigger = class("Q501227Trigger", GadgetActorProxy)
Q501227Trigger.defaultAlias = "Q501227Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501227Trigger:OnPostDataPrepare()
    print("Q501227Trigger - OnPostDataPrepare")
    this = self
end

function Q501227Trigger:OnPostComponentPrepare()
    print("Q501227Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 30, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501227Trigger:TriggerIn()
    print("Q501227Trigger - TriggerIn")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501214, nil)
    this:DestroySelf()
end

function Q501227Trigger:PreTriggerIn()
    print("Q501227Trigger - PreTriggerIn")
end

function Q501227Trigger:LightUpTriggerIn()
    print("Q501227Trigger - LightUpTriggerIn")
end

function Q501227Trigger:TriggerOut()
    print("Q501227Trigger - TriggerOut")
end

return Q501227Trigger
