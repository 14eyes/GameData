require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009804Trigger = class("Q4009804Trigger", GadgetActorProxy)
Q4009804Trigger.defaultAlias = "Q4009804Trigger"
local Q40098ClientConfig = require("Quest/Client/Q40098ClientConfig")

local this
local subIDs = Q40098ClientConfig.SubIDs
local npcs = Q40098ClientConfig.Npcs
local datas = Q40098ClientConfig.Datas

function Q4009804Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009804Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4009804Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q4009804Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4009804Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("40098"):CreateQuestNpcById(4009804, npcs.Npc1051Data.id, 0)
    actorMgr:GetActor("40098"):RequestInteraction(npcs.Npc1051Data.alias)
end

function Q4009804Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009804Trigger
