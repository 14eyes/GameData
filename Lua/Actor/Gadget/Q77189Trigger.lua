require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77189Trigger = class("Q77189Trigger", GadgetActorProxy)
Q77189Trigger.defaultAlias = "Q77189Trigger"
local Q77189ClientConfig = require("Quest/Client/Q77189ClientConfig")

local this
local subIDs = Q77189ClientConfig.SubIDs
local npcs = Q77189ClientConfig.Npcs

function Q77189Trigger:NpcDestroyImmediately(arg1, arg2)
    actorMgr:GetActor("77189"):DestroyQuestNpcActor(arg2, arg1)
end

function Q77189Trigger:OnPostDataPrepare()
    print("Q77189Trigger - OnPostDataPrepare")
    this = self
end

function Q77189Trigger:OnPostComponentPrepare()
    print("Q77189Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77189)
end

function Q77189Trigger:TriggerIn()
    print("Q77189Trigger - TriggerIn")
    actorMgr:GetActor("77189"):CreateQuestNpc(quest, npcs.Npc17112.id, 0, false, 0)
end

function Q77189Trigger:PreTriggerIn()
    print("Q77189Trigger - PreTriggerIn")
end

function Q77189Trigger:LightUpTriggerIn()
    print("Q77189Trigger - LightUpTriggerIn")
end

function Q77189Trigger:TriggerOut()
    print("Q77189Trigger - TriggerOut")
    this:NpcDestroyImmediately(3, npcs.Npc17112.alias)
end

return Q77189Trigger
