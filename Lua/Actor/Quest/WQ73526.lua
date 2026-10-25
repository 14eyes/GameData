require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73526 = class("Quest73526", QuestActorProxy)
Quest73526.defaultAlias = "Quest73526"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73526:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73526:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7352601"] = self.OnSubStart7352601}
end

function Quest73526:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7352601"] = self.OnSubFinish7352601}
end

function Quest73526:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73526:Start()
    print("Start")
end

function Quest73526:OnDestroy()
    print("OnDestroy")
end

function Quest73526:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73526:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73526:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30405Data.alias, 10)
    actorMgr:DestroyEntityActor("Q73526Trigger", 10, false)
end

function Quest73526:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73526:OnSubStart7352601(arg1)
    print("OnSubStart7352601")
    this:CreateQuestNpc(arg1, npcs.Npc30405Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc30405Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q73526Trigger", "Actor/Gadget/Q73526Trigger", 70900002, 0, sceneData:GetDummyPoint(10, "Q7352601_guide").pos, sceneData:GetDummyPoint(10, "Q7352601_guide").rot, true, false, 10)
end

function Quest73526:OnSubFinish7352601(arg1)
    print("OnSubFinish7352601")
    this:NpcDestroyWithBlackscreen(10, npcs.Npc30405Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("OpenFlightGearPage")
    end)
end

return Quest73526
