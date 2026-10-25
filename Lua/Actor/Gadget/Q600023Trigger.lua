require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600023Trigger = class("Q600023Trigger", GadgetActorProxy)
Q600023Trigger.defaultAlias = "Q600023Trigger"
local Q6000ClientConfig = require("Quest/Client/Q6000ClientConfig")

local this
local subIDs = Q6000ClientConfig.SubIDs
local datas = Q6000ClientConfig.Datas
local npcs = Q6000ClientConfig.Npcs
local points = Q6000ClientConfig.Points

function Q600023Trigger:OnPostDataPrepare()
    print("Q600023Trigger - OnPostDataPrepare")
    this = self
end

function Q600023Trigger:OnPostComponentPrepare()
    print("Q600023Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6000)
end

function Q600023Trigger:TriggerIn()
    print("Q600023Trigger - TriggerIn")
    actorMgr:GetActor("6000"):QuestNarratorTask(datas.NarratorWithId_600004, nil)
    actorMgr:GetActor("6000"):GetQuestNpcActor(npcs.Npc15409.alias, 6000):TurnToAvatar()
    this:DestroySelf()
end

function Q600023Trigger:PreTriggerIn()
    print("Q600023Trigger - PreTriggerIn")
end

function Q600023Trigger:LightUpTriggerIn()
    print("Q600023Trigger - LightUpTriggerIn")
end

function Q600023Trigger:TriggerOut()
    print("Q600023Trigger - TriggerOut")
end

return Q600023Trigger
