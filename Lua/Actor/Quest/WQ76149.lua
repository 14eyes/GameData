require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76149 = class("Quest76149", QuestActorProxy)
Quest76149.defaultAlias = "Quest76149"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76149:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76149:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614901"] = self.OnSubStart7614901,
        ["7614903"] = self.OnSubStart7614903,
        ["7614902"] = self.OnSubStart7614902
    }
end

function Quest76149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614901"] = self.OnSubFinish7614901,
        ["7614903"] = self.OnSubFinish7614903,
        ["7614902"] = self.OnSubFinish7614902
    }
end

function Quest76149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76149:Start()
    print("Start")
end

function Quest76149:OnDestroy()
    print("OnDestroy")
end

function Quest76149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76149:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76149:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76149:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76149:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76149:OnSubStart7614901(arg1)
    print("OnSubStart7614901")
end

function Quest76149:OnSubFinish7614901(arg1)
    print("OnSubFinish7614901")
end

function Quest76149:OnSubStart7614903(arg1)
    print("OnSubStart7614903")
end

function Quest76149:OnSubFinish7614903(arg1)
    print("OnSubFinish7614903")
end

function Quest76149:OnSubStart7614902(arg1)
    print("OnSubStart7614902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614902, 0, 60, 0, npcs.Npc22311.id)
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
end

function Quest76149:OnSubFinish7614902(arg1)
    print("OnSubFinish7614902")
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22311.alias)
    this:NpcDestroyWithBlackscreen(103, npcs.Npc22306.alias)
end

return Quest76149
