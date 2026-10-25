require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77190Trigger = class("Q77190Trigger", GadgetActorProxy)
Q77190Trigger.defaultAlias = "Q77190Trigger"
local Q77190ClientConfig = require("Quest/Client/Q77190ClientConfig")

local this
local subIDs = Q77190ClientConfig.SubIDs
local npcs = Q77190ClientConfig.Npcs

function Q77190Trigger:NpcDestroyImmediately(arg1, arg2)
    actorMgr:GetActor("77190"):DestroyQuestNpcActor(arg2, arg1)
end

function Q77190Trigger:OnPostDataPrepare()
    print("Q77190Trigger - OnPostDataPrepare")
    this = self
end

function Q77190Trigger:OnPostComponentPrepare()
    print("Q77190Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77190)
end

function Q77190Trigger:TriggerIn()
    print("Q77190Trigger - TriggerIn")
    actorMgr:GetActor("77190"):CreateQuestNpc(quest, npcs.Npc17114.id, 0, false, 0)
end

function Q77190Trigger:PreTriggerIn()
    print("Q77190Trigger - PreTriggerIn")
end

function Q77190Trigger:LightUpTriggerIn()
    print("Q77190Trigger - LightUpTriggerIn")
end

function Q77190Trigger:TriggerOut()
    print("Q77190Trigger - TriggerOut")
    this:NpcDestroyImmediately(3, npcs.Npc17114.alias)
end

return Q77190Trigger
