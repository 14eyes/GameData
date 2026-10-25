require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75204 = class("Quest75204", QuestActorProxy)
Quest75204.defaultAlias = "Quest75204"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75204:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75204:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520401"] = self.OnSubStart7520401}
end

function Quest75204:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520401"] = self.OnSubFinish7520401}
end

function Quest75204:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75204:Start()
    print("Start")
end

function Quest75204:OnDestroy()
    print("OnDestroy")
end

function Quest75204:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75204:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75204:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75204:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75204:OnSubStart7520401(arg1)
    print("OnSubStart7520401")
    this:CreateQuestNpc(arg1, npcs.Npc21797.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21797.alias, 75204):DoFreeStyle(1030, true, nil, true, true, false, false)
end

function Quest75204:OnSubFinish7520401(arg1)
    print("OnSubFinish7520401")
    this:SafeDestroyQuestNpc(npcs.Npc21797.alias, 3)
end

return Quest75204
