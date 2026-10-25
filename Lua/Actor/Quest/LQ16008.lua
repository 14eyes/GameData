require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16008 = class("Quest16008", QuestActorProxy)
Quest16008.defaultAlias = "Quest16008"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest16008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest16008:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1600801"] = self.OnSubStart1600801, ["1600802"] = self.OnSubStart1600802}
end

function Quest16008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1600801"] = self.OnSubFinish1600801, ["1600802"] = self.OnSubFinish1600802}
end

function Quest16008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16008:Start()
    print("Start")
end

function Quest16008:OnDestroy()
    print("OnDestroy")
end

function Quest16008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16008:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16008:OnSubStart1600801(arg1)
    print("OnSubStart1600801")
    actorUtils.FinishQuestID(false, 1600801)
end

function Quest16008:OnSubFinish1600801(arg1)
    print("OnSubFinish1600801")
    this:SetNavigationByMainId(16008, true)
end

function Quest16008:OnSubStart1600802(arg1)
    print("OnSubStart1600802")
    this:CreateQuestNpc(arg1, npcs.Npc1065.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 16008):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1065.alias, 16008):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16008):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16008):DisableInteeHeadCtrl(true)
end

function Quest16008:OnSubFinish1600802(arg1)
    print("OnSubFinish1600802")
    this:SafeDestroyQuestNpc(npcs.Npc1065.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 1073)
end

return Quest16008
