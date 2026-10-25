require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419529Trigger = class("Q7419529Trigger", GadgetActorProxy)
Q7419529Trigger.defaultAlias = "Q7419529Trigger"
local Q74195ClientConfig = require("Quest/Client/Q74195ClientConfig")

local this
local subIDs = Q74195ClientConfig.SubIDs
local npcs = Q74195ClientConfig.Npcs

function Q7419529Trigger:OnPostDataPrepare()
    print("[MainId: 74195][Trigger: Q7419529Trigger] OnPostDataPrepare")
    this = self
end

function Q7419529Trigger:OnPostComponentPrepare()
    print("[MainId: 74195][Trigger: Q7419529Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74195)
end

function Q7419529Trigger:TriggerIn()
    print("[MainId: 74195][Trigger: Q7419529Trigger] TriggerIn")
    local actor = actorMgr:GetActor("74195")
    local questNpcActor = actor:GetQuestNpcActor(npcs.Npc21338Data.alias, 74195)
    actor:NpcWalkToTaskEasy(questNpcActor, {x = 1285.242, y = 110.143, z = 3858.2}, function(arg1)
        local actor = actorMgr:GetActor("74195")
        actor:GetQuestNpcActor(npcs.Npc21338Data.alias):DoFreeStyle(14, true, nil, true, true, false, false)
        actor:CallDelayByQuest("removecat1", 0.5, function(arg1)
            actorMgr:GetActor("74195"):GetQuestNpcActor(npcs.Npc21338Data.alias):DestroyWithDitherEx(0.5)
            actorUtils.FinishQuestID(false, 7419529)
            this:DestroySelf()
        end)
    end)
end

function Q7419529Trigger:PreTriggerIn()
    print("[MainId: 74195][Trigger: Q7419529Trigger] PreTriggerIn")
end

function Q7419529Trigger:LightUpTriggerIn()
    print("[MainId: 74195][Trigger: Q7419529Trigger] LightUpTriggerIn")
end

function Q7419529Trigger:TriggerOut()
    print("[MainId: 74195][Trigger: Q7419529Trigger] TriggerOut")
end

return Q7419529Trigger
