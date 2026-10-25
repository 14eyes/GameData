require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600121Trigger = class("Q600121Trigger", GadgetActorProxy)
Q600121Trigger.defaultAlias = "Q600121Trigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600121Trigger:OnPostDataPrepare()
    print("Q600121Trigger - OnPostDataPrepare")
    this = self
end

function Q600121Trigger:OnPostComponentPrepare()
    print("Q600121Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600121Trigger:TriggerIn()
    print("Q600121Trigger - TriggerIn")
    actorMgr:GetActor("6001"):QuestNarratorTask(datas.NarratorWithId_600108, nil)
    this:DestroySelf()
end

function Q600121Trigger:PreTriggerIn()
    print("Q600121Trigger - PreTriggerIn")
end

function Q600121Trigger:LightUpTriggerIn()
    print("Q600121Trigger - LightUpTriggerIn")
end

function Q600121Trigger:TriggerOut()
    print("Q600121Trigger - TriggerOut")
end

return Q600121Trigger
