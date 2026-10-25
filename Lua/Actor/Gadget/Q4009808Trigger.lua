require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009808Trigger = class("Q4009808Trigger", GadgetActorProxy)
Q4009808Trigger.defaultAlias = "Q4009808Trigger"
local Q40098ClientConfig = require("Quest/Client/Q40098ClientConfig")

local this
local subIDs = Q40098ClientConfig.SubIDs
local npcs = Q40098ClientConfig.Npcs
local datas = Q40098ClientConfig.Datas

function Q4009808Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009808Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4009808Trigger:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
end

function Q4009808Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4009808Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("40098"):CreateQuestNpcById(4009808, npcs.Npc1051Data.id, 0)
    actorMgr:GetActor("40098"):RequestInteraction(npcs.Npc1051Data.alias)
end

function Q4009808Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009808Trigger
