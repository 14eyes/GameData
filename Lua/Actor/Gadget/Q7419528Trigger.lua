require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419528Trigger = class("Q7419528Trigger", GadgetActorProxy)
Q7419528Trigger.defaultAlias = "Q7419528Trigger"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q7419528Trigger:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q7419528Trigger] OnPostDataPrepare")
    this = self
end

function Q7419528Trigger:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q7419528Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74195)
end

function Q7419528Trigger:TriggerIn()
    print("[MainId: 74195][Trigger: Q7419528Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74195")
    actor:GetQuestNpcActor(npcs.Npc21338Data.alias):DoFreeStyle(15, true, nil, true, true, false, false)
    actor:GetQuestNpcActor(npcs.Npc21338Data.alias):DestroyWithDitherEx(0.5)
    actorUtils.FinishQuestID(false, 7418428)
    this:DestroySelf()
end

function Q7419528Trigger:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q7419528Trigger] PreTriggerIn")
end

function Q7419528Trigger:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q7419528Trigger] LightUpTriggerIn")
end

function Q7419528Trigger:TriggerOut()
    print("[MainId: 74195][Trigger: Q7419528Trigger] TriggerOut")
end

return Q7419528Trigger
