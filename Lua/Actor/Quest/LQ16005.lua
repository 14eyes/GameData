require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16005 = class("Quest16005", QuestActorProxy)
Quest16005.defaultAlias = "Quest16005"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest16005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest16005:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1600501"] = self.OnSubStart1600501, ["1600502"] = self.OnSubStart1600502}
end

function Quest16005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1600501"] = self.OnSubFinish1600501, ["1600502"] = self.OnSubFinish1600502}
end

function Quest16005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16005:Start()
    print("Start")
end

function Quest16005:OnDestroy()
    print("OnDestroy")
end

function Quest16005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16005:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16005:OnSubStart1600501(arg1)
    print("OnSubStart1600501")
    actorUtils.FinishQuestID(false, 1600501)
end

function Quest16005:OnSubFinish1600501(arg1)
    print("OnSubFinish1600501")
    this:SetNavigationByMainId(16005, true)
end

function Quest16005:OnSubStart1600502(arg1)
    print("OnSubStart1600502")
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16005):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16005):DisableInteeHeadCtrl(true)
end

function Quest16005:OnSubFinish1600502(arg1)
    print("OnSubFinish1600502")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
end

return Quest16005
