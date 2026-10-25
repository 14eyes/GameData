require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13015 = class("Quest13015", QuestActorProxy)
Quest13015.defaultAlias = "Quest13015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1301501"] = self.OnSubStart1301501,
        ["1301502"] = self.OnSubStart1301502,
        ["1301503"] = self.OnSubStart1301503,
        ["1301504"] = self.OnSubStart1301504
    }
end

function Quest13015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1301501"] = self.OnSubFinish1301501,
        ["1301502"] = self.OnSubFinish1301502,
        ["1301503"] = self.OnSubFinish1301503,
        ["1301504"] = self.OnSubFinish1301504
    }
end

function Quest13015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13015:Start()
    print("Start")
end

function Quest13015:OnDestroy()
    print("OnDestroy")
end

function Quest13015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13015:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13015:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13015:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest13015:OnSubStart1301501(arg1)
    print("OnSubStart1301501")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12839Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12843Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12842Data.id, 0)
    self:CreateQuestNpcWithTriggerBlack("Q1301501", 1301501, npcs.Npc1056Data.id, 0, 12, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12895Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12897Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12895Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12897Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest13015:OnSubFinish1301501(arg1)
    print("OnSubFinish1301501")
    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)

    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
end

function Quest13015:OnSubStart1301502(arg1)
    print("OnSubStart1301502")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4096Data.id, 0)
    self:NotifyTo(npcs.Npc4084Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4083Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12895Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc12897Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q13015TriggerGate", "Actor/Gadget/Q13015TriggerGate", 70900002, 0, {x = -411.887, y = 284.582, z = 2742.99}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest13015:OnSubFinish1301502(arg1)
    print("OnSubFinish1301502")
    self:NpcDestroy(npcs.Npc12895Data.alias, 3)
    self:NpcDestroy(npcs.Npc12897Data.alias, 3)
end

function Quest13015:OnSubStart1301503(arg1)
    print("OnSubStart1301503")
    self:CreateQuestNpcWithTriggerBlack("Q1301503", 1301503, npcs.Npc1056Data.id, 0, 12, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12843Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12840Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12847Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12990Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12850Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12853Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12964Data.id, 0)
    self:NotifyTo(npcs.Npc4084Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4083Data.alias, 1, true)
end

function Quest13015:OnSubFinish1301503(arg1)
    print("OnSubFinish1301503")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId2)
    end)

    self:NpcDestroy(npcs.Npc4096Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 3)
end

function Quest13015:OnSubStart1301504(arg1)
    print("OnSubStart1301504")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1056Data.id, 0)
    self:NotifyTo(npcs.Npc4082Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4081Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4084Data.alias, 1, true)
    self:NotifyTo(npcs.Npc4083Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12842Data.alias)
    questNpcActor:DoFreeStyle(1180, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12843Data.alias):DoFreeStyle(1090, true, nil, true, true, false, true)
    self:GetQuestNpcActor(npcs.Npc12840Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
    local v = self:GetQuestNpcActor(npcs.Npc12853Data.alias)
    v:DoFreeStyle(1130, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12964Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12847Data.alias):DisableInteeHeadCtrl(true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13015:OnSubFinish1301504(arg1)
    print("OnSubFinish1301504")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1056Data.alias)
    self:NpcDestroy(npcs.Npc12839Data.alias, 3)
    self:NpcDestroy(npcs.Npc12843Data.alias, 3)
    self:NpcDestroy(npcs.Npc12842Data.alias, 3)
    self:NpcDestroy(npcs.Npc12840Data.alias, 3)
    self:NpcDestroy(npcs.Npc12847Data.alias, 3)
    self:NpcDestroy(npcs.Npc12990Data.alias, 3)
    self:NpcDestroy(npcs.Npc12850Data.alias, 3)
    self:NpcDestroy(npcs.Npc12853Data.alias, 3)
    self:NpcDestroy(npcs.Npc12964Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4082Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4081Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc4083Data.alias, 0, true)
    end)
end

return Quest13015
