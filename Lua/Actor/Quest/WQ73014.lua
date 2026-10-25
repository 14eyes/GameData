require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73014 = class("Quest73014", QuestActorProxy)
Quest73014.defaultAlias = "Quest73014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301401"] = self.OnSubStart7301401,
        ["7301402"] = self.OnSubStart7301402,
        ["7301403"] = self.OnSubStart7301403,
        ["7301416"] = self.OnSubStart7301416,
        ["7301418"] = self.OnSubStart7301418,
        ["7301417"] = self.OnSubStart7301417,
        ["7301404"] = self.OnSubStart7301404,
        ["7301405"] = self.OnSubStart7301405,
        ["7301407"] = self.OnSubStart7301407,
        ["7301408"] = self.OnSubStart7301408,
        ["7301409"] = self.OnSubStart7301409,
        ["7301410"] = self.OnSubStart7301410,
        ["7301411"] = self.OnSubStart7301411,
        ["7301412"] = self.OnSubStart7301412,
        ["7301413"] = self.OnSubStart7301413,
        ["7301415"] = self.OnSubStart7301415,
        ["7301414"] = self.OnSubStart7301414,
        ["7301406"] = self.OnSubStart7301406
    }
end

function Quest73014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301401"] = self.OnSubFinish7301401,
        ["7301402"] = self.OnSubFinish7301402,
        ["7301403"] = self.OnSubFinish7301403,
        ["7301416"] = self.OnSubFinish7301416,
        ["7301418"] = self.OnSubFinish7301418,
        ["7301417"] = self.OnSubFinish7301417,
        ["7301404"] = self.OnSubFinish7301404,
        ["7301405"] = self.OnSubFinish7301405,
        ["7301407"] = self.OnSubFinish7301407,
        ["7301408"] = self.OnSubFinish7301408,
        ["7301409"] = self.OnSubFinish7301409,
        ["7301410"] = self.OnSubFinish7301410,
        ["7301411"] = self.OnSubFinish7301411,
        ["7301412"] = self.OnSubFinish7301412,
        ["7301413"] = self.OnSubFinish7301413,
        ["7301415"] = self.OnSubFinish7301415,
        ["7301414"] = self.OnSubFinish7301414,
        ["7301406"] = self.OnSubFinish7301406
    }
end

function Quest73014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73014:Start()
    print("Start")
end

function Quest73014:OnDestroy()
    print("OnDestroy")
end

function Quest73014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73014:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73014:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73014:OnSubStart7301401(arg1)
    print("OnSubStart7301401")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    actorMgr:CreateActorWithPos("Q73014Trigger", "Actor/Gadget/Q73014Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301401").pos, sceneData:GetDummyPoint(3, "guide_Q7301401").rot, true, false, 3)
end

function Quest73014:OnSubFinish7301401(arg1)
    print("OnSubFinish7301401")
end

function Quest73014:OnSubStart7301402(arg1)
    print("OnSubStart7301402")
end

function Quest73014:OnSubFinish7301402(arg1)
    print("OnSubFinish7301402")
end

function Quest73014:OnSubStart7301403(arg1)
    print("OnSubStart7301403")
    self:RequestInteraction(npcs.Npc20605Data.alias)
end

function Quest73014:OnSubFinish7301403(arg1)
    print("OnSubFinish7301403")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    self:NpcDestroy(npcs.Npc20605Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc20605Data.alias):DestroyWithDisappear(false)
end

function Quest73014:OnSubStart7301416(arg1)
    print("OnSubStart7301416")
    actorMgr:CreateActorWithPos("Q73014Trigger3", "Actor/Gadget/Q73014Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q7301416_guide").pos, sceneData:GetDummyPoint(3, "Q7301416_guide").rot, true, false, 3)
end

function Quest73014:OnSubFinish7301416(arg1)
    print("OnSubFinish7301416")
end

function Quest73014:OnSubStart7301418(arg1)
    print("OnSubStart7301418")
    globalActor:ChangeDay24Time(1, true)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7301410, function(arg1)
            actorUtils.FinishQuestID(false, 7301418)
        end, nil, nil, false)
    end)
end

function Quest73014:OnSubFinish7301418(arg1)
    print("OnSubFinish7301418")
end

function Quest73014:OnSubStart7301417(arg1)
    print("OnSubStart7301417")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:RequestInteraction(npcs.Npc20605Data.alias)
end

function Quest73014:OnSubFinish7301417(arg1)
    print("OnSubFinish7301417")
    self:NpcDestroy(npcs.Npc20605Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc20605Data.alias):DestroyWithDisappear(false)
end

function Quest73014:OnSubStart7301404(arg1)
    print("OnSubStart7301404")
end

function Quest73014:OnSubFinish7301404(arg1)
    print("OnSubFinish7301404")
end

function Quest73014:OnSubStart7301405(arg1)
    print("OnSubStart7301405")
end

function Quest73014:OnSubFinish7301405(arg1)
    print("OnSubFinish7301405")
end

function Quest73014:OnSubStart7301407(arg1)
    print("OnSubStart7301407")
end

function Quest73014:OnSubFinish7301407(arg1)
    print("OnSubFinish7301407")
    self:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest73014:OnSubStart7301408(arg1)
    print("OnSubStart7301408")
end

function Quest73014:OnSubFinish7301408(arg1)
    print("OnSubFinish7301408")
    self:NarratorOnlyTask(datas.NarratorTable3, nil, "")
end

function Quest73014:OnSubStart7301409(arg1)
    print("OnSubStart7301409")
    actorMgr:CreateActorWithPos("Q73014Trigger1", "Actor/Gadget/Q73014Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301409").pos, sceneData:GetDummyPoint(3, "guide_Q7301409").rot, true, false, 3)
end

function Quest73014:OnSubFinish7301409(arg1)
    print("OnSubFinish7301409")
end

function Quest73014:OnSubStart7301410(arg1)
    print("OnSubStart7301410")
    self:NpcCreate(arg1, npcs.Npc20605Data.id, 1)
    self:RequestInteraction(npcs.Npc20605Data.alias)
end

function Quest73014:OnSubFinish7301410(arg1)
    print("OnSubFinish7301410")
    self:NpcDestroy(npcs.Npc20605Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc20605Data.alias):DestroyWithDisappear(false)
end

function Quest73014:OnSubStart7301411(arg1)
    print("OnSubStart7301411")
    actorMgr:CreateActorWithPos("Q73014Trigger2", "Actor/Gadget/Q73014Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301411").pos, sceneData:GetDummyPoint(3, "guide_Q7301411").rot, true, false, 3)
end

function Quest73014:OnSubFinish7301411(arg1)
    print("OnSubFinish7301411")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73014:OnSubStart7301412(arg1)
    print("OnSubStart7301412")
    self:NpcCreate(arg1, npcs.Npc20605Data.id, 1)
    self:RequestInteraction(npcs.Npc20605Data.alias)
end

function Quest73014:OnSubFinish7301412(arg1)
    print("OnSubFinish7301412")
end

function Quest73014:OnSubStart7301413(arg1)
    print("OnSubStart7301413")
end

function Quest73014:OnSubFinish7301413(arg1)
    print("OnSubFinish7301413")
    self:NarratorOnlyTask(datas.NarratorTable5, nil, "")
end

function Quest73014:OnSubStart7301415(arg1)
    print("OnSubStart7301415")
end

function Quest73014:OnSubFinish7301415(arg1)
    print("OnSubFinish7301415")
    self:NpcDestroy(npcs.Npc20605Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc20605Data.alias):DestroyWithDisappear(false)
end

function Quest73014:OnSubStart7301414(arg1)
    print("OnSubStart7301414")
end

function Quest73014:OnSubFinish7301414(arg1)
    print("OnSubFinish7301414")
end

function Quest73014:OnSubStart7301406(arg1)
    print("OnSubStart7301406")
end

function Quest73014:OnSubFinish7301406(arg1)
    print("OnSubFinish7301406")
end

return Quest73014
