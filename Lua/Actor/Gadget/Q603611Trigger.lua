require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603611Trigger = class("Q603611Trigger", GadgetActorProxy)
Q603611Trigger.defaultAlias = "Q603611Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603611Trigger:OnPostDataPrepare()
    print("Q603611Trigger - OnPostDataPrepare")
    this = self
end

function Q603611Trigger:OnPostComponentPrepare()
    print("Q603611Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603611Trigger:TriggerIn()
    print("Q603611Trigger - TriggerIn")
    actorMgr:GetActor("6036"):QuestNarratorTask(datas.NarratorWithId_603601, nil)
    this:DestroySelf()
end

function Q603611Trigger:PreTriggerIn()
    print("Q603611Trigger - PreTriggerIn")
end

function Q603611Trigger:LightUpTriggerIn()
    print("Q603611Trigger - LightUpTriggerIn")
end

function Q603611Trigger:TriggerOut()
    print("Q603611Trigger - TriggerOut")
end

return Q603611Trigger
