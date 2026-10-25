require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75265 = class("Quest75265", QuestActorProxy)
Quest75265.defaultAlias = "Quest75265"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75265:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75265:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526501"] = self.OnSubStart7526501,
        ["7526502"] = self.OnSubStart7526502,
        ["7526503"] = self.OnSubStart7526503,
        ["7526504"] = self.OnSubStart7526504,
        ["7526505"] = self.OnSubStart7526505
    }
end

function Quest75265:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526501"] = self.OnSubFinish7526501,
        ["7526502"] = self.OnSubFinish7526502,
        ["7526503"] = self.OnSubFinish7526503,
        ["7526504"] = self.OnSubFinish7526504,
        ["7526505"] = self.OnSubFinish7526505
    }
end

function Quest75265:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75265:Start()
    print("Start")
end

function Quest75265:OnDestroy()
    print("OnDestroy")
end

function Quest75265:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75265:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75265:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75265:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75265:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75265:OnSubStart7526501(arg1)
    print("OnSubStart7526501")
    this:CreateQuestNpc(arg1, npcs.Npc22014.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22014.alias, 75265):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75265:OnSubFinish7526501(arg1)
    print("OnSubFinish7526501")
end

function Quest75265:OnSubStart7526502(arg1)
    print("OnSubStart7526502")
    this:CreateQuestNpc(arg1, npcs.Npc22013.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22014.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22014.alias, 75265):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75265:OnSubFinish7526502(arg1)
    print("OnSubFinish7526502")
    this:SafeDestroyQuestNpc(npcs.Npc22013.alias, 3)
end

function Quest75265:OnSubStart7526503(arg1)
    print("OnSubStart7526503")
    this:CreateQuestNpc(arg1, npcs.Npc22014.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22014.alias, 75265):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest75265:OnSubFinish7526503(arg1)
    print("OnSubFinish7526503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22014.alias)
end

function Quest75265:OnSubStart7526504(arg1)
    print("OnSubStart7526504")
end

function Quest75265:OnSubFinish7526504(arg1)
    print("OnSubFinish7526504")
end

function Quest75265:OnSubStart7526505(arg1)
    print("OnSubStart7526505")
end

function Quest75265:OnSubFinish7526505(arg1)
    print("OnSubFinish7526505")
end

return Quest75265
