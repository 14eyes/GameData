require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603625Trigger = class("Q603625Trigger", GadgetActorProxy)
Q603625Trigger.defaultAlias = "Q603625Trigger"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603625Trigger:OnPostDataPrepare()
    print("Q603625Trigger - OnPostDataPrepare")
    this = self
end

function Q603625Trigger:OnPostComponentPrepare()
    print("Q603625Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603625Trigger:TriggerIn()
    print("Q603625Trigger - TriggerIn")
    actorMgr:GetActor("6036"):QuestNarratorTask(datas.NarratorWithId_603603, nil)
    this:DestroySelf()
end

function Q603625Trigger:PreTriggerIn()
    print("Q603625Trigger - PreTriggerIn")
end

function Q603625Trigger:LightUpTriggerIn()
    print("Q603625Trigger - LightUpTriggerIn")
end

function Q603625Trigger:TriggerOut()
    print("Q603625Trigger - TriggerOut")
end

return Q603625Trigger
