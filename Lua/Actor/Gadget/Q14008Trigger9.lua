require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger9 = class("Q14008Trigger9", GadgetActorProxy)
Q14008Trigger9.defaultAlias = "Q14008Trigger9"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger9:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger9] OnPostDataPrepare")
    this = self
end

function Q14008Trigger9:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger9] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 35, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger9:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger9] TriggerIn")
    local actor = actorMgr:GetActor("14008")
    actor:EnterSceneLookCamera({x = 3471.788, y = 459.8, z = 3667.015}, 0, 10, true, true)
    actor:GetQuestNpcActor(npcs.Npc13562Data.alias):DoFreeStyle(1141, true, nil, true, true, false, false)
    actorMgr:GetActor("14008"):NarratorOnlyTaskByData(datas.Narrator_1400805, function(arg1)
        local actor = actorMgr:GetActor("14008")
        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc13562Data.alias)
        questNpcActor:DisableInteeHeadCtrl(false)
        questNpcActor:DestroyWithDitherEx(1)
        local v = actor:GetQuestNpcActor(npcs.Npc13678Data.alias)
        v:DisableInteeHeadCtrl(false)
        v:DestroyWithDitherEx(1)
        local questNpcActor2 = actor:GetQuestNpcActor(npcs.Npc13771Data.alias)
        questNpcActor2:DisableInteeHeadCtrl(false)
        questNpcActor2:DestroyWithDitherEx(1)
        local questNpcActor3 = actor:GetQuestNpcActor(npcs.Npc13770Data.alias)
        questNpcActor3:DisableInteeHeadCtrl(false)
        questNpcActor3:DestroyWithDitherEx(1)
        local actor2 = actorMgr:GetActor("14008")
        actor2.RemoveLocalGadget(actor2, 70711250, "3")
        actor2.SetQuestVarByMainId(actor2, 3, 1)
        actor2.CallDelayByQuest(actor2, "1", 1, function(arg1)
            actor2:ExitSceneLookCamera()
        end)
    end, 14008)

    this:DestroySelf()
end

function Q14008Trigger9:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger9] PreTriggerIn")
end

function Q14008Trigger9:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger9] LightUpTriggerIn")
end

function Q14008Trigger9:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger9] TriggerOut")
end

return Q14008Trigger9
