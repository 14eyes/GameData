require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73032 = class("Quest73032", QuestActorProxy)
Quest73032.defaultAlias = "Quest73032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7303201"] = self.OnSubStart7303201,
        ["7303202"] = self.OnSubStart7303202,
        ["7303203"] = self.OnSubStart7303203,
        ["7303212"] = self.OnSubStart7303212,
        ["7303213"] = self.OnSubStart7303213,
        ["7303214"] = self.OnSubStart7303214,
        ["7303215"] = self.OnSubStart7303215,
        ["7303216"] = self.OnSubStart7303216,
        ["7303217"] = self.OnSubStart7303217,
        ["7303218"] = self.OnSubStart7303218,
        ["7303219"] = self.OnSubStart7303219,
        ["7303220"] = self.OnSubStart7303220,
        ["7303221"] = self.OnSubStart7303221,
        ["7303211"] = self.OnSubStart7303211,
        ["7303225"] = self.OnSubStart7303225,
        ["7303205"] = self.OnSubStart7303205,
        ["7303209"] = self.OnSubStart7303209,
        ["7303210"] = self.OnSubStart7303210,
        ["7303206"] = self.OnSubStart7303206,
        ["7303224"] = self.OnSubStart7303224,
        ["7303207"] = self.OnSubStart7303207,
        ["7303208"] = self.OnSubStart7303208,
        ["7303204"] = self.OnSubStart7303204,
        ["7303222"] = self.OnSubStart7303222,
        ["7303223"] = self.OnSubStart7303223
    }
end

function Quest73032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7303201"] = self.OnSubFinish7303201,
        ["7303202"] = self.OnSubFinish7303202,
        ["7303203"] = self.OnSubFinish7303203,
        ["7303212"] = self.OnSubFinish7303212,
        ["7303213"] = self.OnSubFinish7303213,
        ["7303214"] = self.OnSubFinish7303214,
        ["7303215"] = self.OnSubFinish7303215,
        ["7303216"] = self.OnSubFinish7303216,
        ["7303217"] = self.OnSubFinish7303217,
        ["7303218"] = self.OnSubFinish7303218,
        ["7303219"] = self.OnSubFinish7303219,
        ["7303220"] = self.OnSubFinish7303220,
        ["7303221"] = self.OnSubFinish7303221,
        ["7303211"] = self.OnSubFinish7303211,
        ["7303225"] = self.OnSubFinish7303225,
        ["7303205"] = self.OnSubFinish7303205,
        ["7303209"] = self.OnSubFinish7303209,
        ["7303210"] = self.OnSubFinish7303210,
        ["7303206"] = self.OnSubFinish7303206,
        ["7303224"] = self.OnSubFinish7303224,
        ["7303207"] = self.OnSubFinish7303207,
        ["7303208"] = self.OnSubFinish7303208,
        ["7303204"] = self.OnSubFinish7303204,
        ["7303222"] = self.OnSubFinish7303222,
        ["7303223"] = self.OnSubFinish7303223
    }
end

function Quest73032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73032:Start()
    print("Start")
end

function Quest73032:OnDestroy()
    print("OnDestroy")
end

function Quest73032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73032:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73032:OnSubStart7303201(arg1)
    print("OnSubStart7303201")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20656Data.id, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20665Data.id, 4)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20667Data.id, 5)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20666Data.id, 6)
        arg1_2:TransmitPlayerWithTextByQuestId(7303201, 1, datas.QUEST_Black_Q7303201, 3, function(arg1)
            actorMgr:CreateActorWithPos("Q73032Trigger_7303201", "Actor/Gadget/Q73032Trigger_7303201", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303201").pos, sceneData:GetDummyPoint(3, "Q7303201").rot, true, false, 3)
        end)
    end)
end

function Quest73032:OnSubFinish7303201(arg1)
    print("OnSubFinish7303201")
end

function Quest73032:OnSubStart7303202(arg1)
    print("OnSubStart7303202")
    self:RequestInteraction(npcs.Npc20648Data.alias)
end

function Quest73032:OnSubFinish7303202(arg1)
    print("OnSubFinish7303202")
    self:NarratorOnlyTask(datas.Paimon_Start, nil, "")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73032:OnSubStart7303203(arg1)
    print("OnSubStart7303203")
end

function Quest73032:OnSubFinish7303203(arg1)
    print("OnSubFinish7303203")
    self:CallDelay(0.5, function(arg1)
        arg1:NarratorOnlyTask(datas.Paimon_Finish, nil, "")
    end)
end

function Quest73032:OnSubStart7303212(arg1)
    print("OnSubStart7303212")
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 1)
end

function Quest73032:OnSubFinish7303212(arg1)
    print("OnSubFinish7303212")
end

function Quest73032:OnSubStart7303213(arg1)
    print("OnSubStart7303213")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20816Data.id, 5)
end

function Quest73032:OnSubFinish7303213(arg1)
    print("OnSubFinish7303213")
    self:SafeDestroyQuestNpc(npcs.Npc20605Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20606Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20816Data.alias, 3)
end

function Quest73032:OnSubStart7303214(arg1)
    print("OnSubStart7303214")
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 1)
end

function Quest73032:OnSubFinish7303214(arg1)
    print("OnSubFinish7303214")
    self:SafeDestroyQuestNpc(npcs.Npc4185Data.alias, 3)
end

function Quest73032:OnSubStart7303215(arg1)
    print("OnSubStart7303215")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73032:OnSubFinish7303215(arg1)
    print("OnSubFinish7303215")
    self:SafeDestroyQuestNpc(npcs.Npc20576Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20578Data.alias, 3)
end

function Quest73032:OnSubStart7303216(arg1)
    print("OnSubStart7303216")
    self:CreateQuestNpc(arg1, npcs.Npc20649Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20650Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20651Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20652Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20653Data.id, 5)
end

function Quest73032:OnSubFinish7303216(arg1)
    print("OnSubFinish7303216")
    self:SafeDestroyQuestNpc(npcs.Npc20649Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20650Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20651Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20652Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20653Data.alias, 3)
end

function Quest73032:OnSubStart7303217(arg1)
    print("OnSubStart7303217")
    self:CreateQuestNpc(arg1, npcs.Npc20714Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20715Data.id, 2)
end

function Quest73032:OnSubFinish7303217(arg1)
    print("OnSubFinish7303217")
    self:SafeDestroyQuestNpc(npcs.Npc20714Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20715Data.alias, 3)
end

function Quest73032:OnSubStart7303218(arg1)
    print("OnSubStart7303218")
    self:CreateQuestNpc(arg1, npcs.Npc20777Data.id, 1)
end

function Quest73032:OnSubFinish7303218(arg1)
    print("OnSubFinish7303218")
    self:SafeDestroyQuestNpc(npcs.Npc20777Data.alias, 3)
end

function Quest73032:OnSubStart7303219(arg1)
    print("OnSubStart7303219")
    self:CreateQuestNpc(arg1, npcs.Npc20716Data.id, 1)
end

function Quest73032:OnSubFinish7303219(arg1)
    print("OnSubFinish7303219")
    self:SafeDestroyQuestNpc(npcs.Npc20716Data.alias, 3)
end

function Quest73032:OnSubStart7303220(arg1)
    print("OnSubStart7303220")
end

function Quest73032:OnSubFinish7303220(arg1)
    print("OnSubFinish7303220")
end

function Quest73032:OnSubStart7303221(arg1)
    print("OnSubStart7303221")
end

function Quest73032:OnSubFinish7303221(arg1)
    print("OnSubFinish7303221")
end

function Quest73032:OnSubStart7303211(arg1)
    print("OnSubStart7303211")
    self:CreateQuestNpc(arg1, npcs.Npc20656Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20665Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20667Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20666Data.id, 4)
    actorMgr:CreateActorWithPos("Q73032Trigger_7303211", "Actor/Gadget/Q73032Trigger_7303211", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303201_N20656").pos, sceneData:GetDummyPoint(3, "Q7303201_N20656").rot, true, false, 3)
end

function Quest73032:OnSubFinish7303211(arg1)
    print("OnSubFinish7303211")
end

function Quest73032:OnSubStart7303225(arg1)
    print("OnSubStart7303225")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 2)
    self:RequestInteraction(npcs.Npc20656Data.alias)
end

function Quest73032:OnSubFinish7303225(arg1)
    print("OnSubFinish7303225")
end

function Quest73032:OnSubStart7303205(arg1)
    print("OnSubStart7303205")
end

function Quest73032:OnSubFinish7303205(arg1)
    print("OnSubFinish7303205")
end

function Quest73032:OnSubStart7303209(arg1)
    print("OnSubStart7303209")
    self:PlayCutsceneIndex(7303209, function(arg1)
        actorUtils.FinishQuestID(false, 7303209)
    end, nil, nil, false)
end

function Quest73032:OnSubFinish7303209(arg1)
    print("OnSubFinish7303209")
    self:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20648Data.alias, 3)
end

function Quest73032:OnSubStart7303210(arg1)
    print("OnSubStart7303210")
    self:CreateQuestNpc(arg1, npcs.Npc20656Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20665Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20667Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20666Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc20816Data.id, 10)
    self:RequestInteraction(npcs.Npc20656Data.alias)
end

function Quest73032:OnSubFinish7303210(arg1)
    print("OnSubFinish7303210")
end

function Quest73032:OnSubStart7303206(arg1)
    print("OnSubStart7303206")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 2)
    actorMgr:CreateActorWithPos("Q73032Trigger_7303206", "Actor/Gadget/Q73032Trigger_7303206", 70900002, 0, sceneData:GetDummyPoint(3, "Q7303206_guide").pos, sceneData:GetDummyPoint(3, "Q7303206_guide").rot, true, false, 3)
end

function Quest73032:OnSubFinish7303206(arg1)
    print("OnSubFinish7303206")
    self:SafeDestroyQuestNpc(npcs.Npc20656Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20665Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20667Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20666Data.alias, 3)
end

function Quest73032:OnSubStart7303224(arg1)
    print("OnSubStart7303224")
    self:RequestInteraction(npcs.Npc20648Data.alias)
end

function Quest73032:OnSubFinish7303224(arg1)
    print("OnSubFinish7303224")
end

function Quest73032:OnSubStart7303207(arg1)
    print("OnSubStart7303207")
    self:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
end

function Quest73032:OnSubFinish7303207(arg1)
    print("OnSubFinish7303207")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20648Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4185Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20576Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20577Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20578Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20816Data.alias, 3)
end

function Quest73032:OnSubStart7303208(arg1)
    print("OnSubStart7303208")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 3, 0.5, function(arg1)
            globalActor:ChangeDay24Time(8, true)
        end, function(arg1)
            actorUtils.FinishQuestID(false, 7303208)
        end, nil, "QUEST_Black_Q7303208", false, true)
    end)
end

function Quest73032:OnSubFinish7303208(arg1)
    print("OnSubFinish7303208")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:CallDelay(0.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId_7303208fin)
        end)
    end)
end

function Quest73032:OnSubStart7303204(arg1)
    print("OnSubStart7303204")
end

function Quest73032:OnSubFinish7303204(arg1)
    print("OnSubFinish7303204")
end

function Quest73032:OnSubStart7303222(arg1)
    print("OnSubStart7303222")
end

function Quest73032:OnSubFinish7303222(arg1)
    print("OnSubFinish7303222")
end

function Quest73032:OnSubStart7303223(arg1)
    print("OnSubStart7303223")
end

function Quest73032:OnSubFinish7303223(arg1)
    print("OnSubFinish7303223")
end

return Quest73032
