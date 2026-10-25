require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419518Trigger = class("Q7419518Trigger", GadgetActorProxy)
Q7419518Trigger.defaultAlias = "Q7419518Trigger"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q7419518Trigger:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q7419518Trigger] OnPostDataPrepare")
    this = self
end

function Q7419518Trigger:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q7419518Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(16.1837, 15.00464, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74195)
end

function Q7419518Trigger:TriggerIn()
    print("[MainId: 74195][Trigger: Q7419518Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74195")
    actor:GetQuestNpcActor(npcs.Npc21338Data.alias):DoFreeStyle(15, true, nil, true, true, false, false)
    actor:GetQuestNpcActor(npcs.Npc21338Data.alias):DestroyWithDitherEx(0.5)
    actorUtils.FinishQuestID(false, 7419518)
    this:DestroySelf()
end

function Q7419518Trigger:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q7419518Trigger] PreTriggerIn")
end

function Q7419518Trigger:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q7419518Trigger] LightUpTriggerIn")
end

function Q7419518Trigger:TriggerOut()
    print("[MainId: 74195][Trigger: Q7419518Trigger] TriggerOut")
end

return Q7419518Trigger
