require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12048 = class("Quest12048", QuestActorProxy)
Quest12048.defaultAlias = "Quest12048"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest12048:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest12048:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1204801"] = self.OnSubStart1204801}
end

function Quest12048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1204801"] = self.OnSubFinish1204801}
end

function Quest12048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12048:Start()
    print("Start")
end

function Quest12048:OnDestroy()
    print("OnDestroy")
end

function Quest12048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12048:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest12048:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest12048:OnSubStart1204801(arg1)
    print("OnSubStart1204801")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204801, 0, 20, 1, npcs.Npc1034.id)
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3210.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc3211.id, 0, false, 0)
end

function Quest12048:OnSubFinish1204801(arg1)
    print("OnSubFinish1204801")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1097.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc1034.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc3210.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc3211.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
        this:GetQuestNpcActor(npcs.Npc3211.alias, 12048):DisableInteeHeadCtrl(true)
    end)
end

return Quest12048
