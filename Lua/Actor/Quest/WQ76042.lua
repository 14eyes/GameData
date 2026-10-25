require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76042 = class("Quest76042", QuestActorProxy)
Quest76042.defaultAlias = "Quest76042"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76042:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7604201"] = self.OnSubStart7604201,
        ["7604202"] = self.OnSubStart7604202,
        ["7604203"] = self.OnSubStart7604203,
        ["7604204"] = self.OnSubStart7604204
    }
end

function Quest76042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7604201"] = self.OnSubFinish7604201,
        ["7604202"] = self.OnSubFinish7604202,
        ["7604203"] = self.OnSubFinish7604203,
        ["7604204"] = self.OnSubFinish7604204
    }
end

function Quest76042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76042:Start()
    print("Start")
end

function Quest76042:OnDestroy()
    print("OnDestroy")
end

function Quest76042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76042:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76042:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76042:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76042:OnSubStart7604201(arg1)
    print("OnSubStart7604201")
    this:NpcCreateWithNpcTrigger(npcs.Npc1316.id, 0, 15, 7604201)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 76042):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1317.id, arg1)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 76042):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76042:OnSubFinish7604201(arg1)
    print("OnSubFinish7604201")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1205)
end

function Quest76042:OnSubStart7604202(arg1)
    print("OnSubStart7604202")
    this:NpcCreateWithNpcTrigger(npcs.Npc21924.id, 0, 15, 7604202)
end

function Quest76042:OnSubFinish7604202(arg1)
    print("OnSubFinish7604202")
    this:SafeDestroyQuestNpc(npcs.Npc21924.alias, 3)
    this:TransmitPlayerByQuestId(7604202, 1, nil, nil, nil)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7604202, nil)
    end)
end

function Quest76042:OnSubStart7604203(arg1)
    print("OnSubStart7604203")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15849.id, arg1)
end

function Quest76042:OnSubFinish7604203(arg1)
    print("OnSubFinish7604203")
    this:SafeDestroyQuestNpc(npcs.Npc15849.alias, 3)
end

function Quest76042:OnSubStart7604204(arg1)
    print("OnSubStart7604204")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc15849.id, 0, 5, 7604204)
    end)
end

function Quest76042:OnSubFinish7604204(arg1)
    print("OnSubFinish7604204")
    this:SafeDestroyQuestNpc(npcs.Npc15849.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7604201, nil)
    end)
end

return Quest76042
