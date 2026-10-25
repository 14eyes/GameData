require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15002 = class("Quest15002", QuestActorProxy)
Quest15002.defaultAlias = "Quest15002"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest15002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest15002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500202"] = self.OnSubStart1500202,
        ["1500201"] = self.OnSubStart1500201,
        ["1500203"] = self.OnSubStart1500203,
        ["1500204"] = self.OnSubStart1500204
    }
end

function Quest15002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500202"] = self.OnSubFinish1500202,
        ["1500201"] = self.OnSubFinish1500201,
        ["1500203"] = self.OnSubFinish1500203,
        ["1500204"] = self.OnSubFinish1500204
    }
end

function Quest15002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15002:Start()
    print("Start")
end

function Quest15002:OnDestroy()
    print("OnDestroy")
end

function Quest15002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15002:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15002:OnSubStart1500202(arg1)
    print("OnSubStart1500202")
    this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 10, 1500202)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 15002):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:TryStartTribalAutoTrack(arg1)
end

function Quest15002:OnSubFinish1500202(arg1)
    print("OnSubFinish1500202")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SetNavigationByMainId(15002, true)
end

function Quest15002:OnSubStart1500201(arg1)
    print("OnSubStart1500201")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14145.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14145.alias, 15002):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest15002:OnSubFinish1500201(arg1)
    print("OnSubFinish1500201")
    this:SafeDestroyQuestNpc(npcs.Npc14145.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1500299, nil)
    end)
end

function Quest15002:OnSubStart1500203(arg1)
    print("OnSubStart1500203")
    this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 15002):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 15002):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 15002):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 15002):DisableInteeHeadCtrl(true)
end

function Quest15002:OnSubFinish1500203(arg1)
    print("OnSubFinish1500203")
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:ClearNarratorTask()
end

function Quest15002:OnSubStart1500204(arg1)
    print("OnSubStart1500204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500204, 0, 5, 1, npcs.Npc1088.id)
end

function Quest15002:OnSubFinish1500204(arg1)
    print("OnSubFinish1500204")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

return Quest15002
