require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76671Trigger = class("Q76671Trigger", GadgetActorProxy)
Q76671Trigger.defaultAlias = "Q76671Trigger"
local Q76671ClientConfig = require("Quest/Client/Q76671ClientConfig")

local this
local subIDs = Q76671ClientConfig.SubIDs
local datas = Q76671ClientConfig.Datas
local npcs = Q76671ClientConfig.Npcs
local points = Q76671ClientConfig.Points

function Q76671Trigger:OnPostDataPrepare()
    print("Q76671Trigger - OnPostDataPrepare")
    this = self
end

function Q76671Trigger:OnPostComponentPrepare()
    print("Q76671Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76671)
end

function Q76671Trigger:TriggerIn()
    print("Q76671Trigger - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("76671"):QuestNarratorTask(datas.NarratorWithId, nil)
end

function Q76671Trigger:PreTriggerIn()
    print("Q76671Trigger - PreTriggerIn")
end

function Q76671Trigger:LightUpTriggerIn()
    print("Q76671Trigger - LightUpTriggerIn")
end

function Q76671Trigger:TriggerOut()
    print("Q76671Trigger - TriggerOut")
end

return Q76671Trigger
