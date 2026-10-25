require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77196 = class("Quest77196", QuestActorProxy)
Quest77196.defaultAlias = "Quest77196"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77196:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77196:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7719601"] = self.OnSubStart7719601,
        ["7719602"] = self.OnSubStart7719602,
        ["7719603"] = self.OnSubStart7719603
    }
end

function Quest77196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7719601"] = self.OnSubFinish7719601,
        ["7719602"] = self.OnSubFinish7719602,
        ["7719603"] = self.OnSubFinish7719603
    }
end

function Quest77196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77196:Start()
    print("Start")
end

function Quest77196:OnDestroy()
    print("OnDestroy")
end

function Quest77196:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77196:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77196:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77196:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77196:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77196:OnSubStart7719601(arg1)
    print("OnSubStart7719601")
    actorUtils.FinishQuestWithParam({false}, {7719601})
end

function Quest77196:OnSubFinish7719601(arg1)
    print("OnSubFinish7719601")
end

function Quest77196:OnSubStart7719602(arg1)
    print("OnSubStart7719602")
end

function Quest77196:OnSubFinish7719602(arg1)
    print("OnSubFinish7719602")
end

function Quest77196:OnSubStart7719603(arg1)
    print("OnSubStart7719603")
    this:CreateQuestNpc(arg1, npcs.Npc22664.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22664.alias, 77196):DoFreeStyle(4222, true, nil, true, true, false, false)
end

function Quest77196:OnSubFinish7719603(arg1)
    print("OnSubFinish7719603")
    this:NpcDestroyImmediately(3, npcs.Npc22664.alias)
end

return Quest77196
