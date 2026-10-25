require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72501 = class("Quest72501", QuestActorProxy)
Quest72501.defaultAlias = "Quest72501"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72501:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72501:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7250101"] = self.OnSubStart7250101, ["7250102"] = self.OnSubStart7250102}
end

function Quest72501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7250101"] = self.OnSubFinish7250101, ["7250102"] = self.OnSubFinish7250102}
end

function Quest72501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72501:Start()
    print("Start")
end

function Quest72501:OnDestroy()
    print("OnDestroy")
end

function Quest72501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc30160Data.alias, 3)
    actorMgr:DestroyEntityActor("Q72501Trigger", 3, false)
end

function Quest72501:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72501:OnSubStart7250101(arg1)
    print("OnSubStart7250101")
    self:CreateQuestNpc(arg1, npcs.Npc30160Data.id, 1)
    actorMgr:CreateActorWithPos("Q72501Trigger", "Actor/Gadget/Q72501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7268301_N30160").pos, sceneData:GetDummyPoint(3, "Q7268301_N30160").rot, true, false, 3)
end

function Quest72501:OnSubFinish7250101(arg1)
    print("OnSubFinish7250101")
    self:NarratorOnlyTaskByData(datas.Narrator_7250101, nil, 72501)
end

function Quest72501:OnSubStart7250102(arg1)
    print("OnSubStart7250102")
end

function Quest72501:OnSubFinish7250102(arg1)
    print("OnSubFinish7250102")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc30160Data.alias)
end

return Quest72501
