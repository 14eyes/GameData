require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71101 = class("Quest71101", QuestActorProxy)
Quest71101.defaultAlias = "Quest71101"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71101:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71101:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7110101"] = self.OnSubStart7110101}
end

function Quest71101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7110101"] = self.OnSubFinish7110101}
end

function Quest71101:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71101:Start()
    print("Start")
end

function Quest71101:OnDestroy()
    print("OnDestroy")
end

function Quest71101:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71101:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71101:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71101:OnSubStart7110101(arg1)
    print("OnSubStart7110101")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2148Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc2148Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):SitOnChair(0)
    actorMgr:CreateActorWithPos("Q71101Trigger", "Actor/Gadget/Q71101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7110101_T7110101_N10232").pos, sceneData:GetDummyPoint(3, "Q7110101_T7110101_N10232").rot, true, false, 3)
    if self:GetQuestVar(7110101, 0) == 0 then
        actorMgr:CreateActorWithPos("Q71101Trigger1", "Actor/Gadget/Q71101Trigger1", 70900002, 0, {x = -602.364, y = 225.601, z = 303.465}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        self:SetQuestVarByMainId(0, 3)
    end
end

function Quest71101:OnSubFinish7110101(arg1)
    print("OnSubFinish7110101")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
    end)
end

return Quest71101
