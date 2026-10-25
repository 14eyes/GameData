require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603614Trigger = class("Q603614Trigger", GadgetActorProxy)
Q603614Trigger.defaultAlias = "Q603614Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603614Trigger:OnPostDataPrepare()
    print("Q603614Trigger - OnPostDataPrepare")
    this = self
end

function Q603614Trigger:OnPostComponentPrepare()
    print("Q603614Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603614Trigger:TriggerIn()
    print("Q603614Trigger - TriggerIn")
    actorMgr:GetActor("6036"):QuestNarratorTask(datas.NarratorWithId_603602, nil)
    this:DestroySelf()
end

function Q603614Trigger:PreTriggerIn()
    print("Q603614Trigger - PreTriggerIn")
end

function Q603614Trigger:LightUpTriggerIn()
    print("Q603614Trigger - LightUpTriggerIn")
end

function Q603614Trigger:TriggerOut()
    print("Q603614Trigger - TriggerOut")
end

return Q603614Trigger
