require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73074 = class("Quest73074", QuestActorProxy)
Quest73074.defaultAlias = "Quest73074"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73074:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73074:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307405"] = self.OnSubStart7307405,
        ["7307418"] = self.OnSubStart7307418,
        ["7307401"] = self.OnSubStart7307401,
        ["7307402"] = self.OnSubStart7307402,
        ["7307407"] = self.OnSubStart7307407,
        ["7307403"] = self.OnSubStart7307403,
        ["7307416"] = self.OnSubStart7307416,
        ["7307404"] = self.OnSubStart7307404,
        ["7307408"] = self.OnSubStart7307408,
        ["7307409"] = self.OnSubStart7307409,
        ["7307410"] = self.OnSubStart7307410,
        ["7307411"] = self.OnSubStart7307411,
        ["7307415"] = self.OnSubStart7307415,
        ["7307417"] = self.OnSubStart7307417,
        ["7307412"] = self.OnSubStart7307412,
        ["7307413"] = self.OnSubStart7307413,
        ["7307414"] = self.OnSubStart7307414
    }
end

function Quest73074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307405"] = self.OnSubFinish7307405,
        ["7307418"] = self.OnSubFinish7307418,
        ["7307401"] = self.OnSubFinish7307401,
        ["7307402"] = self.OnSubFinish7307402,
        ["7307407"] = self.OnSubFinish7307407,
        ["7307403"] = self.OnSubFinish7307403,
        ["7307416"] = self.OnSubFinish7307416,
        ["7307404"] = self.OnSubFinish7307404,
        ["7307408"] = self.OnSubFinish7307408,
        ["7307409"] = self.OnSubFinish7307409,
        ["7307410"] = self.OnSubFinish7307410,
        ["7307411"] = self.OnSubFinish7307411,
        ["7307415"] = self.OnSubFinish7307415,
        ["7307417"] = self.OnSubFinish7307417,
        ["7307412"] = self.OnSubFinish7307412,
        ["7307413"] = self.OnSubFinish7307413,
        ["7307414"] = self.OnSubFinish7307414
    }
end

function Quest73074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73074:Start()
    print("Start")
end

function Quest73074:OnDestroy()
    print("OnDestroy")
end

function Quest73074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73074:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73074:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73074:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73074:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73074:OnSubStart7307405(arg1)
    print("OnSubStart7307405")
end

function Quest73074:OnSubFinish7307405(arg1)
    print("OnSubFinish7307405")
end

function Quest73074:OnSubStart7307418(arg1)
    print("OnSubStart7307418")
    self:CreateQuestNpc(arg1, npcs.Npc20667Data.id, 1)
    actorMgr:CreateActorWithPos("Q7307405Trigger", "Actor/Gadget/Q7307405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7307405_N20667").pos, sceneData:GetDummyPoint(3, "Q7307405_N20667").rot, true, false, 3)
end

function Quest73074:OnSubFinish7307418(arg1)
    print("OnSubFinish7307418")
end

function Quest73074:OnSubStart7307401(arg1)
    print("OnSubStart7307401")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 2)
end

function Quest73074:OnSubFinish7307401(arg1)
    print("OnSubFinish7307401")
end

function Quest73074:OnSubStart7307402(arg1)
    print("OnSubStart7307402")
end

function Quest73074:OnSubFinish7307402(arg1)
    print("OnSubFinish7307402")
    self:NarratorOnlyTask(datas.Q7307407NarratorTable, nil, "")
end

function Quest73074:OnSubStart7307407(arg1)
    print("OnSubStart7307407")
end

function Quest73074:OnSubFinish7307407(arg1)
    print("OnSubFinish7307407")
end

function Quest73074:OnSubStart7307403(arg1)
    print("OnSubStart7307403")
    self:NpcCreateWithTriggerBlack(npcs.Npc20667Data.id, 7307403, 1)
    self:NpcCreateWithTriggerBlack(npcs.Npc20646Data.id, 7307403, 2)
end

function Quest73074:OnSubFinish7307403(arg1)
    print("OnSubFinish7307403")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20667Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73074:OnSubStart7307416(arg1)
    print("OnSubStart7307416")
    actorMgr:CreateActorWithPos("Q7307416Trigger", "Actor/Gadget/Q7307416Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7307404_guide").pos, sceneData:GetDummyPoint(3, "Q7307404_guide").rot, true, false, 3)
end

function Quest73074:OnSubFinish7307416(arg1)
    print("OnSubFinish7307416")
end

function Quest73074:OnSubStart7307404(arg1)
    print("OnSubStart7307404")
end

function Quest73074:OnSubFinish7307404(arg1)
    print("OnSubFinish7307404")
end

function Quest73074:OnSubStart7307408(arg1)
    print("OnSubStart7307408")
    actorMgr:CreateActorWithPos("Q7307408Trigger", "Actor/Gadget/Q7307408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7307408_guide").pos, sceneData:GetDummyPoint(3, "Q7307408_guide").rot, true, false, 3)
end

function Quest73074:OnSubFinish7307408(arg1)
    print("OnSubFinish7307408")
end

function Quest73074:OnSubStart7307409(arg1)
    print("OnSubStart7307409")
end

function Quest73074:OnSubFinish7307409(arg1)
    print("OnSubFinish7307409")
end

function Quest73074:OnSubStart7307410(arg1)
    print("OnSubStart7307410")
end

function Quest73074:OnSubFinish7307410(arg1)
    print("OnSubFinish7307410")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73074:OnSubStart7307411(arg1)
    print("OnSubStart7307411")
end

function Quest73074:OnSubFinish7307411(arg1)
    print("OnSubFinish7307411")
end

function Quest73074:OnSubStart7307415(arg1)
    print("OnSubStart7307415")
end

function Quest73074:OnSubFinish7307415(arg1)
    print("OnSubFinish7307415")
end

function Quest73074:OnSubStart7307417(arg1)
    print("OnSubStart7307417")
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(660, 1153, true, datas.TextmapId, 3)
    end)
end

function Quest73074:OnSubFinish7307417(arg1)
    print("OnSubFinish7307417")
end

function Quest73074:OnSubStart7307412(arg1)
    print("OnSubStart7307412")
end

function Quest73074:OnSubFinish7307412(arg1)
    print("OnSubFinish7307412")
end

function Quest73074:OnSubStart7307413(arg1)
    print("OnSubStart7307413")
end

function Quest73074:OnSubFinish7307413(arg1)
    print("OnSubFinish7307413")
end

function Quest73074:OnSubStart7307414(arg1)
    print("OnSubStart7307414")
    self:RequestInteraction(npcs.Npc20646Data.alias)
end

function Quest73074:OnSubFinish7307414(arg1)
    print("OnSubFinish7307414")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

return Quest73074
