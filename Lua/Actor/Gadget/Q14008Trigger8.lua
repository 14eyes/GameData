require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger8 = class("Q14008Trigger8", GadgetActorProxy)
Q14008Trigger8.defaultAlias = "Q14008Trigger8"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger8:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger8] OnPostDataPrepare")
    this = self
end

function Q14008Trigger8:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger8] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14, 30, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger8:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger8] TriggerIn")
    local actor = actorMgr:GetActor("14008")
    actor:EnterSceneLookCamera({x = 3480.508, y = 461, z = 3646.305}, 0, 10, true, true)
    actor:GetQuestNpcActor(npcs.Npc13565Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:GetActor("14008"):NarratorOnlyTaskByData(datas.Narrator_1400804, function(arg1)
        local actor = actorMgr:GetActor("14008")
        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13565Data.alias)
        questNpcActor:DisableInteeHeadCtrl(false)
        questNpcActor:DestroyWithDitherEx(1)
        local v = actor:GetQuestNpcActor(npcs.Npc13677Data.alias)
        v:DisableInteeHeadCtrl(false)
        v:DestroyWithDitherEx(1)
        local questNpcActor2 = actor:GetQuestNpcActor(npcs.Npc13769Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(false)
        questNpcActor2:DestroyWithDitherEx(1)
        local questNpcActor3 = actor:GetQuestNpcActor(npcs.Npc13768Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(false)
        questNpcActor3:DestroyWithDitherEx(1)
        local actor2 = actorMgr:GetActor("14008")
        actor2.RemoveLocalGadget(actor2, 70711250, "2")
        actor2.SetQuestVarByMainId(actor2, 2, 1)
        actor2.CallDelayByQuest(actor2, "1", 1, function(arg1)
            actor2:ExitSceneLookCamera()
        end)
    end, 14008)

    this:DestroySelf()
end

function Q14008Trigger8:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger8] PreTriggerIn")
end

function Q14008Trigger8:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger8] LightUpTriggerIn")
end

function Q14008Trigger8:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger8] TriggerOut")
end

return Q14008Trigger8
