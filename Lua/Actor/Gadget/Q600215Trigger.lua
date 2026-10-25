require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600215Trigger = class("Q600215Trigger", GadgetActorProxy)
Q600215Trigger.defaultAlias = "Q600215Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600215Trigger:OnPostDataPrepare()
    print("Q600215Trigger - OnPostDataPrepare")
    this = self
end

function Q600215Trigger:OnPostComponentPrepare()
    print("Q600215Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600215Trigger:TriggerIn()
    print("Q600215Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600239)
    actorMgr:GetActor("6002"):QuestNarratorTask(datas.NarratorWithId_600202, nil)
    this:DestroySelf()
end

function Q600215Trigger:PreTriggerIn()
    print("Q600215Trigger - PreTriggerIn")
end

function Q600215Trigger:LightUpTriggerIn()
    print("Q600215Trigger - LightUpTriggerIn")
end

function Q600215Trigger:TriggerOut()
    print("Q600215Trigger - TriggerOut")
end

return Q600215Trigger
