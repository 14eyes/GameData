require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507601Trigger = class("Q7507601Trigger", GadgetActorProxy)
Q7507601Trigger.defaultAlias = "Q7507601Trigger"
local Q75076ClientConfig = require("Quest/Client/Q75076ClientConfig")

local this
local subIDs = Q75076ClientConfig.SubIDs
local datas = Q75076ClientConfig.Datas
local npcs = Q75076ClientConfig.Npcs
local points = Q75076ClientConfig.Points

function Q7507601Trigger:OnPostDataPrepare()
    print("Q7507601Trigger - OnPostDataPrepare")
    this = self
end

function Q7507601Trigger:OnPostComponentPrepare()
    print("Q7507601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75076)
end

function Q7507601Trigger:TriggerIn()
    print("Q7507601Trigger - TriggerIn")
    actorMgr:GetActor("75076"):QuestNarratorTask(datas.NarratorWithId_7507605, nil)
    this:DestroySelf()
end

function Q7507601Trigger:PreTriggerIn()
    print("Q7507601Trigger - PreTriggerIn")
end

function Q7507601Trigger:LightUpTriggerIn()
    print("Q7507601Trigger - LightUpTriggerIn")
end

function Q7507601Trigger:TriggerOut()
    print("Q7507601Trigger - TriggerOut")
end

return Q7507601Trigger
