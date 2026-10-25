require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74047 = class("Quest74047", QuestActorProxy)
Quest74047.defaultAlias = "Quest74047"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74047:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74047:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404701"] = self.OnSubStart7404701,
        ["7404702"] = self.OnSubStart7404702,
        ["7404703"] = self.OnSubStart7404703,
        ["7404704"] = self.OnSubStart7404704
    }
end

function Quest74047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404701"] = self.OnSubFinish7404701,
        ["7404702"] = self.OnSubFinish7404702,
        ["7404703"] = self.OnSubFinish7404703,
        ["7404704"] = self.OnSubFinish7404704
    }
end

function Quest74047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74047:Start()
    print("Start")
end

function Quest74047:OnDestroy()
    print("OnDestroy")
end

function Quest74047:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74047:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74047:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74047:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74047:OnSubStart7404701(arg1)
    print("OnSubStart7404701")
    actorMgr:CreateActorWithPos("Q74047Trigger", "Actor/Gadget/Q74047Trigger", 70900002, 0, points.TPos_Q74047Trigger.pos, points.TPos_Q74047Trigger.rot, true, false, 3)
end

function Quest74047:OnSubFinish7404701(arg1)
    print("OnSubFinish7404701")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1, nil, nil)
end

function Quest74047:OnSubStart7404702(arg1)
    print("OnSubStart7404702")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5213Data.id, 1, npcs.Npc5213Data.alias)
end

function Quest74047:OnSubFinish7404702(arg1)
    print("OnSubFinish7404702")
    this:TransmitPlayerById(arg1, 1)
end

function Quest74047:OnSubStart7404703(arg1)
    print("OnSubStart7404703")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7404703)
    end)
end

function Quest74047:OnSubFinish7404703(arg1)
    print("OnSubFinish7404703")
end

function Quest74047:OnSubStart7404704(arg1)
    print("OnSubStart7404704")
    actorUtils.FinishQuestID(false, 7404704)
end

function Quest74047:OnSubFinish7404704(arg1)
    print("OnSubFinish7404704")
end

return Quest74047
