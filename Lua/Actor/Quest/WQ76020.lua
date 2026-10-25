require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76020 = class("Quest76020", QuestActorProxy)
Quest76020.defaultAlias = "Quest76020"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602001"] = self.OnSubStart7602001,
        ["7602002"] = self.OnSubStart7602002,
        ["7602003"] = self.OnSubStart7602003,
        ["7602004"] = self.OnSubStart7602004,
        ["7602009"] = self.OnSubStart7602009,
        ["7602008"] = self.OnSubStart7602008,
        ["7602005"] = self.OnSubStart7602005,
        ["7602006"] = self.OnSubStart7602006,
        ["7602007"] = self.OnSubStart7602007
    }
end

function Quest76020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602001"] = self.OnSubFinish7602001,
        ["7602002"] = self.OnSubFinish7602002,
        ["7602003"] = self.OnSubFinish7602003,
        ["7602004"] = self.OnSubFinish7602004,
        ["7602009"] = self.OnSubFinish7602009,
        ["7602008"] = self.OnSubFinish7602008,
        ["7602005"] = self.OnSubFinish7602005,
        ["7602006"] = self.OnSubFinish7602006,
        ["7602007"] = self.OnSubFinish7602007
    }
end

function Quest76020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76020:Start()
    print("Start")
end

function Quest76020:OnDestroy()
    print("OnDestroy")
end

function Quest76020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76020:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76020:OnSubStart7602001(arg1)
    print("OnSubStart7602001")
    this:CreateQuestNpc(arg1, npcs.Npc21924.id, 0, false, 0)
end

function Quest76020:OnSubFinish7602001(arg1)
    print("OnSubFinish7602001")
end

function Quest76020:OnSubStart7602002(arg1)
    print("OnSubStart7602002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602002, 0, 20, 0, npcs.Paimon.id)
end

function Quest76020:OnSubFinish7602002(arg1)
    print("OnSubFinish7602002")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76020:OnSubStart7602003(arg1)
    print("OnSubStart7602003")
end

function Quest76020:OnSubFinish7602003(arg1)
    print("OnSubFinish7602003")
end

function Quest76020:OnSubStart7602004(arg1)
    print("OnSubStart7602004")
end

function Quest76020:OnSubFinish7602004(arg1)
    print("OnSubFinish7602004")
end

function Quest76020:OnSubStart7602009(arg1)
    print("OnSubStart7602009")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602009, 0, 20, 0, npcs.Paimon.id)
end

function Quest76020:OnSubFinish7602009(arg1)
    print("OnSubFinish7602009")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76020:OnSubStart7602008(arg1)
    print("OnSubStart7602008")
end

function Quest76020:OnSubFinish7602008(arg1)
    print("OnSubFinish7602008")
end

function Quest76020:OnSubStart7602005(arg1)
    print("OnSubStart7602005")
    this:PlayCutsceneIndex(7602005, function(arg1)
        actorUtils.FinishQuestID(false, 7602005)
    end, nil, nil, false)
end

function Quest76020:OnSubFinish7602005(arg1)
    print("OnSubFinish7602005")
end

function Quest76020:OnSubStart7602006(arg1)
    print("OnSubStart7602006")
end

function Quest76020:OnSubFinish7602006(arg1)
    print("OnSubFinish7602006")
end

function Quest76020:OnSubStart7602007(arg1)
    print("OnSubStart7602007")
    this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10213.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602007, 0, 30, 0, npcs.Npc21924.id)
end

function Quest76020:OnSubFinish7602007(arg1)
    print("OnSubFinish7602007")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10213.alias, 3)
end

return Quest76020
