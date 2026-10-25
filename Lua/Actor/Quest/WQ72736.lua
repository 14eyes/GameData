require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72736 = class("Quest72736", QuestActorProxy)
Quest72736.defaultAlias = "Quest72736"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest72736:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72736:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7273601"] = self.OnSubStart7273601,
        ["7273602"] = self.OnSubStart7273602,
        ["7273603"] = self.OnSubStart7273603
    }
end

function Quest72736:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7273601"] = self.OnSubFinish7273601,
        ["7273602"] = self.OnSubFinish7273602,
        ["7273603"] = self.OnSubFinish7273603
    }
end

function Quest72736:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72736:Start()
    print("Start")
end

function Quest72736:OnDestroy()
    print("OnDestroy")
end

function Quest72736:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72736:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72736:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72736:OnSubStart7273601(arg1)
    print("OnSubStart7273601")
end

function Quest72736:OnSubFinish7273601(arg1)
    print("OnSubFinish7273601")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowHerculesBattleDifficultSelectPage(6)
    end)
end

function Quest72736:OnSubStart7273602(arg1)
    print("OnSubStart7273602")
end

function Quest72736:OnSubFinish7273602(arg1)
    print("OnSubFinish7273602")
end

function Quest72736:OnSubStart7273603(arg1)
    print("OnSubStart7273603")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q72736Trigger", "Actor/Gadget/Q72736Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7273103_Q7273603_N13019").pos, sceneData:GetDummyPoint(3, "Q7273103_Q7273603_N13019").rot, true, false, 3)
    end)
end

function Quest72736:OnSubFinish7273603(arg1)
    print("OnSubFinish7273603")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13019Data.alias, 3)
    end)
end

return Quest72736
