require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest16006 = class("Quest16006", QuestActorProxy)
Quest16006.defaultAlias = "Quest16006"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest16006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest16006:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1600601"] = self.OnSubStart1600601, ["1600602"] = self.OnSubStart1600602}
end

function Quest16006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1600601"] = self.OnSubFinish1600601, ["1600602"] = self.OnSubFinish1600602}
end

function Quest16006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest16006:Start()
    print("Start")
end

function Quest16006:OnDestroy()
    print("OnDestroy")
end

function Quest16006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest16006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest16006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest16006:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest16006:OnSubStart1600601(arg1)
    print("OnSubStart1600601")
    actorUtils.FinishQuestID(false, 1600601)
end

function Quest16006:OnSubFinish1600601(arg1)
    print("OnSubFinish1600601")
    this:SetNavigationByMainId(16006, true)
end

function Quest16006:OnSubStart1600602(arg1)
    print("OnSubStart1600602")
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16006):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 16006):DisableInteeHeadCtrl(true)
end

function Quest16006:OnSubFinish1600602(arg1)
    print("OnSubFinish1600602")
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
end

return Quest16006
