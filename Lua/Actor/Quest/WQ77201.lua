require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77201 = class("Quest77201", QuestActorProxy)
Quest77201.defaultAlias = "Quest77201"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77201:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77201:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720101"] = self.OnSubStart7720101,
        ["7720102"] = self.OnSubStart7720102,
        ["7720103"] = self.OnSubStart7720103
    }
end

function Quest77201:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720101"] = self.OnSubFinish7720101,
        ["7720102"] = self.OnSubFinish7720102,
        ["7720103"] = self.OnSubFinish7720103
    }
end

function Quest77201:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77201:Start()
    print("Start")
end

function Quest77201:OnDestroy()
    print("OnDestroy")
end

function Quest77201:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77201:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77201:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77201:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77201:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77201:OnSubStart7720101(arg1)
    print("OnSubStart7720101")
    actorUtils.FinishQuestWithParam({false}, {7720101})
end

function Quest77201:OnSubFinish7720101(arg1)
    print("OnSubFinish7720101")
end

function Quest77201:OnSubStart7720102(arg1)
    print("OnSubStart7720102")
end

function Quest77201:OnSubFinish7720102(arg1)
    print("OnSubFinish7720102")
end

function Quest77201:OnSubStart7720103(arg1)
    print("OnSubStart7720103")
    this:CreateQuestNpc(arg1, npcs.Npc22651.id, 0, false, 0)
end

function Quest77201:OnSubFinish7720103(arg1)
    print("OnSubFinish7720103")
    this:NpcDestroyImmediately(3, npcs.Npc22651.alias)
end

return Quest77201
