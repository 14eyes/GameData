require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73527 = class("Quest73527", QuestActorProxy)
Quest73527.defaultAlias = "Quest73527"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73527:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73527:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7352701"] = self.OnSubStart7352701}
end

function Quest73527:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7352701"] = self.OnSubFinish7352701}
end

function Quest73527:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73527:Start()
    print("Start")
end

function Quest73527:OnDestroy()
    print("OnDestroy")
end

function Quest73527:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73527:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73527:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30404Data.alias, 10)
    actorMgr:DestroyEntityActor("Q73527Trigger", 10, false)
end

function Quest73527:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73527:OnSubStart7352701(arg1)
    print("OnSubStart7352701")
    this:CreateQuestNpc(arg1, npcs.Npc30404Data.id, 1)
    actorMgr:CreateActorWithPos("Q73527Trigger", "Actor/Gadget/Q73527Trigger", 70900002, 0, points.TPos_Q73527Trigger.pos, points.TPos_Q73527Trigger.rot, true, false, 10)
end

function Quest73527:OnSubFinish7352701(arg1)
    print("OnSubFinish7352701")
    this:NpcDestroyWithBlackscreen(10, npcs.Npc30404Data.alias)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowTutorialDialog(1476)
    end)

    this:ClearNarratorTask()
end

return Quest73527
