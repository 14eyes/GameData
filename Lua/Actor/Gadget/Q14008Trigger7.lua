require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger7 = class("Q14008Trigger7", GadgetActorProxy)
Q14008Trigger7.defaultAlias = "Q14008Trigger7"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger7:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger7] OnPostDataPrepare")
    this = self
end

function Q14008Trigger7:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger7] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(13, 25, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger7:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger7] TriggerIn")
    local actor = actorMgr:GetActor("14008")
    actor:EnterSceneLookCamera({x = 3502.834, y = 463, z = 3636.743}, 0, 10, true, true)
    actor:GetQuestNpcActor(npcs.Npc13564Data.alias):DoFreeStyle(1300, true, nil, true, true, false, false)
    actorMgr:GetActor("14008"):NarratorOnlyTaskByData(datas.Narrator_1400803, function(arg1)
        local actor = actorMgr:GetActor("14008")
        actor:GetQuestNpcActor(npcs.Npc13767Data.alias):DestroyWithDitherEx(1)
        actor:GetQuestNpcActor(npcs.Npc13564Data.alias):DestroyWithDitherEx(1)
        actor:GetQuestNpcActor(npcs.Npc13765Data.alias):DestroyWithDitherEx(1)
        actor:GetQuestNpcActor(npcs.Npc13766Data.alias):DestroyWithDitherEx(1)
        local v = actorMgr:GetActor("14008")
        v.RemoveLocalGadget(v, 70711250, "1")
        v.SetQuestVarByMainId(v, 1, 1)
        v.CallDelayByQuest(v, "1", 1, function(arg1)
            v:ExitSceneLookCamera()
        end)
    end, 14008)

    this:DestroySelf()
end

function Q14008Trigger7:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger7] PreTriggerIn")
end

function Q14008Trigger7:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger7] LightUpTriggerIn")
end

function Q14008Trigger7:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger7] TriggerOut")
end

return Q14008Trigger7
