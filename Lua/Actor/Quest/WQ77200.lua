require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77200 = class("Quest77200", QuestActorProxy)
Quest77200.defaultAlias = "Quest77200"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77200:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77200:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720001"] = self.OnSubStart7720001,
        ["7720002"] = self.OnSubStart7720002,
        ["7720003"] = self.OnSubStart7720003
    }
end

function Quest77200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720001"] = self.OnSubFinish7720001,
        ["7720002"] = self.OnSubFinish7720002,
        ["7720003"] = self.OnSubFinish7720003
    }
end

function Quest77200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77200:Start()
    print("Start")
end

function Quest77200:OnDestroy()
    print("OnDestroy")
end

function Quest77200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77200:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77200:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77200:OnSubStart7720001(arg1)
    print("OnSubStart7720001")
    actorUtils.FinishQuestWithParam({false}, {7720001})
end

function Quest77200:OnSubFinish7720001(arg1)
    print("OnSubFinish7720001")
end

function Quest77200:OnSubStart7720002(arg1)
    print("OnSubStart7720002")
end

function Quest77200:OnSubFinish7720002(arg1)
    print("OnSubFinish7720002")
end

function Quest77200:OnSubStart7720003(arg1)
    print("OnSubStart7720003")
    this:CreateQuestNpc(arg1, npcs.Npc22667.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22667.alias, 77200):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22666.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22666.alias, 77200):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest77200:OnSubFinish7720003(arg1)
    print("OnSubFinish7720003")
    this:NpcDestroyImmediately(3, npcs.Npc22667.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22666.alias)
end

return Quest77200
