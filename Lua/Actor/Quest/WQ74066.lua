require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74066 = class("Quest74066", QuestActorProxy)
Quest74066.defaultAlias = "Quest74066"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74066:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74066:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406601"] = self.OnSubStart7406601,
        ["7406602"] = self.OnSubStart7406602,
        ["7406603"] = self.OnSubStart7406603
    }
end

function Quest74066:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406601"] = self.OnSubFinish7406601,
        ["7406602"] = self.OnSubFinish7406602,
        ["7406603"] = self.OnSubFinish7406603
    }
end

function Quest74066:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74066:Start()
    print("Start")
end

function Quest74066:OnDestroy()
    print("OnDestroy")
end

function Quest74066:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74066:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74066:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74066:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74066:OnSubStart7406601(arg1)
    print("OnSubStart7406601")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7406601)
    end)
end

function Quest74066:OnSubFinish7406601(arg1)
    print("OnSubFinish7406601")
    self:SetNavigationByMainId(74066, true)
end

function Quest74066:OnSubStart7406602(arg1)
    print("OnSubStart7406602")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 0, npcs.PaimonData.alias)
end

function Quest74066:OnSubFinish7406602(arg1)
    print("OnSubFinish7406602")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest74066:OnSubStart7406603(arg1)
    print("OnSubStart7406603")
    this:CreateQuestNpc(arg1, npcs.Npc5202Data.id, 0)
end

function Quest74066:OnSubFinish7406603(arg1)
    print("OnSubFinish7406603")
    this:SafeDestroyQuestNpc(npcs.Npc5202Data.alias, 3)
end

return Quest74066
