require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701702Trigger = class("Q701702Trigger", GadgetActorProxy)
Q701702Trigger.defaultAlias = "Q701702Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701702Trigger:OnPostDataPrepare()
    print("Q701702Trigger - OnPostDataPrepare")
    this = self
end

function Q701702Trigger:OnPostComponentPrepare()
    print("Q701702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701702Trigger:TriggerIn()
    print("Q701702Trigger - TriggerIn")
    actorMgr:GetActor("7017"):QuestNarratorTask(datas.NarratorWithId_701701, nil)
    actorMgr:GetActor("7017"):GetQuestNpcActor(npcs.Npc17017.alias, 7017):SpawnAttachEx("AlyoshaDisguise_DBeard001")
end

function Q701702Trigger:PreTriggerIn()
    print("Q701702Trigger - PreTriggerIn")
end

function Q701702Trigger:LightUpTriggerIn()
    print("Q701702Trigger - LightUpTriggerIn")
end

function Q701702Trigger:TriggerOut()
    print("Q701702Trigger - TriggerOut")
end

return Q701702Trigger
