require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76658 = class("Quest76658", QuestActorProxy)
Quest76658.defaultAlias = "Quest76658"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76658:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76658:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7665801"] = self.OnSubStart7665801}
end

function Quest76658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7665801"] = self.OnSubFinish7665801}
end

function Quest76658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76658:Start()
    print("Start")
end

function Quest76658:OnDestroy()
    print("OnDestroy")
end

function Quest76658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76658:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
end

function Quest76658:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76658:OnSubStart7665801(arg1)
    print("OnSubStart7665801")
    this:CreateQuestNpc(arg1, npcs.Npc7048.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7048.alias, 76658):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76658:OnSubFinish7665801(arg1)
    print("OnSubFinish7665801")
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
end

return Quest76658
