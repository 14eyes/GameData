require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76656 = class("Quest76656", QuestActorProxy)
Quest76656.defaultAlias = "Quest76656"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76656:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76656:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7665602"] = self.OnSubStart7665602,
        ["7665605"] = self.OnSubStart7665605,
        ["7665613"] = self.OnSubStart7665613
    }
end

function Quest76656:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7665602"] = self.OnSubFinish7665602,
        ["7665605"] = self.OnSubFinish7665605,
        ["7665613"] = self.OnSubFinish7665613
    }
end

function Quest76656:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76656:Start()
    print("Start")
end

function Quest76656:OnDestroy()
    print("OnDestroy")
end

function Quest76656:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76656:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76656:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
end

function Quest76656:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76656:OnSubStart7665602(arg1)
    print("OnSubStart7665602")
    this:CreateQuestNpc(arg1, npcs.Npc7048.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7048.alias, 76656):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76656:OnSubFinish7665602(arg1)
    print("OnSubFinish7665602")
    this:SafeDestroyQuestNpc(npcs.Npc7048.alias, 3)
end

function Quest76656:OnSubStart7665605(arg1)
    print("OnSubStart7665605")
end

function Quest76656:OnSubFinish7665605(arg1)
    print("OnSubFinish7665605")
end

function Quest76656:OnSubStart7665613(arg1)
    print("OnSubStart7665613")
end

function Quest76656:OnSubFinish7665613(arg1)
    print("OnSubFinish7665613")
end

return Quest76656
