require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40072 = class("Quest40072", QuestActorProxy)
Quest40072.defaultAlias = "Quest40072"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40072:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40072:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007202"] = self.OnSubStart4007202,
        ["4007220"] = self.OnSubStart4007220,
        ["4007203"] = self.OnSubStart4007203,
        ["4007204"] = self.OnSubStart4007204,
        ["4007205"] = self.OnSubStart4007205,
        ["4007206"] = self.OnSubStart4007206,
        ["4007207"] = self.OnSubStart4007207,
        ["4007208"] = self.OnSubStart4007208,
        ["4007215"] = self.OnSubStart4007215,
        ["4007216"] = self.OnSubStart4007216,
        ["4007209"] = self.OnSubStart4007209,
        ["4007210"] = self.OnSubStart4007210,
        ["4007214"] = self.OnSubStart4007214,
        ["4007218"] = self.OnSubStart4007218,
        ["4007219"] = self.OnSubStart4007219,
        ["4007211"] = self.OnSubStart4007211,
        ["4007201"] = self.OnSubStart4007201,
        ["4007217"] = self.OnSubStart4007217,
        ["4007212"] = self.OnSubStart4007212,
        ["4007213"] = self.OnSubStart4007213
    }
end

function Quest40072:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007202"] = self.OnSubFinish4007202,
        ["4007220"] = self.OnSubFinish4007220,
        ["4007203"] = self.OnSubFinish4007203,
        ["4007204"] = self.OnSubFinish4007204,
        ["4007205"] = self.OnSubFinish4007205,
        ["4007206"] = self.OnSubFinish4007206,
        ["4007207"] = self.OnSubFinish4007207,
        ["4007208"] = self.OnSubFinish4007208,
        ["4007215"] = self.OnSubFinish4007215,
        ["4007216"] = self.OnSubFinish4007216,
        ["4007209"] = self.OnSubFinish4007209,
        ["4007210"] = self.OnSubFinish4007210,
        ["4007214"] = self.OnSubFinish4007214,
        ["4007218"] = self.OnSubFinish4007218,
        ["4007219"] = self.OnSubFinish4007219,
        ["4007211"] = self.OnSubFinish4007211,
        ["4007201"] = self.OnSubFinish4007201,
        ["4007217"] = self.OnSubFinish4007217,
        ["4007212"] = self.OnSubFinish4007212,
        ["4007213"] = self.OnSubFinish4007213
    }
end

function Quest40072:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4007212"] = self.OnSubFailed4007212}
end

function Quest40072:Start()
    print("Start")
end

function Quest40072:OnDestroy()
    print("OnDestroy")
end

function Quest40072:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40072:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40072:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12629Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12630Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12631Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20138)
    actorMgr:DestroyEntityActor("Q4007202_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007204_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007206_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007208_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007209_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007210_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007211_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007212_Trigger", 20144, false)
    actorMgr:DestroyEntityActor("Q4007213_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4007215_Trigger", 20138, false)
    actorMgr:DestroyEntityActor("Q4007218_Trigger", 20138, false)
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
end

function Quest40072:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 4007220)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 4007219)
    end
end

function Quest40072:OnSubStart4007202(arg1)
    print("OnSubStart4007202")
    self:CreateQuestNpc(arg1, npcs.Npc12630Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12631Data.id, 2)
    actorMgr:CreateActorWithPos("Q4007202_Trigger", "Actor/Gadget/Q4007202_Trigger", 70900002, 0, {x = 425.705, y = 221.338, z = -482.914}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40072:OnSubFinish4007202(arg1)
    print("OnSubFinish4007202")
    self:SafeDestroyQuestNpc(npcs.Npc12630Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12631Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

function Quest40072:OnSubStart4007220(arg1)
    print("OnSubStart4007220")
end

function Quest40072:OnSubFinish4007220(arg1)
    print("OnSubFinish4007220")
end

function Quest40072:OnSubStart4007203(arg1)
    print("OnSubStart4007203")
end

function Quest40072:OnSubFinish4007203(arg1)
    print("OnSubFinish4007203")
    globalActor:PlayerEnterDungeonPoint(17, 1142, 4007203, 1)
end

function Quest40072:OnSubStart4007204(arg1)
    print("OnSubStart4007204")
    actorMgr:CreateActorWithPos("Q4007204_Trigger", "Actor/Gadget/Q4007204_Trigger", 70900002, 0, {x = -142.368, y = -35.99, z = 56.427}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007204(arg1)
    print("OnSubFinish4007204")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20138)
end

function Quest40072:OnSubStart4007205(arg1)
    print("OnSubStart4007205")
    actorMgr:CreateActorWithPos("Q4007205_SafeTrigger", "Actor/Gadget/Q4007205_SafeTrigger", 70900002, 0, {x = -54.322, y = -28.337, z = 19.12}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007205(arg1)
    print("OnSubFinish4007205")
    self:NarratorOnlyTaskByData(datas.Narrator_4007201, nil, 40072)
end

function Quest40072:OnSubStart4007206(arg1)
    print("OnSubStart4007206")
    actorMgr:CreateActorWithPos("Q4007206_Trigger", "Actor/Gadget/Q4007206_Trigger", 70900002, 0, {x = -49.172, y = -21.761, z = 1.668}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007206(arg1)
    print("OnSubFinish4007206")
end

function Quest40072:OnSubStart4007207(arg1)
    print("OnSubStart4007207")
    actorMgr:CreateActorWithPos("Q4007207_SafeTrigger", "Actor/Gadget/Q4007207_SafeTrigger", 70900002, 0, {x = 2.888, y = 11.528, z = -76.229}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007207(arg1)
    print("OnSubFinish4007207")
    self:NarratorOnlyTaskByData(datas.Narrator_4007202, nil, 40072)
end

function Quest40072:OnSubStart4007208(arg1)
    print("OnSubStart4007208")
    actorMgr:CreateActorWithPos("Q4007208_Trigger", "Actor/Gadget/Q4007208_Trigger", 70900002, 0, {x = -19.803, y = 8.965, z = -75.64}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007208(arg1)
    print("OnSubFinish4007208")
end

function Quest40072:OnSubStart4007215(arg1)
    print("OnSubStart4007215")
    actorMgr:CreateActorWithPos("Q4007215_SafeTrigger", "Actor/Gadget/Q4007215_SafeTrigger", 70900002, 0, {x = 66.487, y = 27.447, z = -29.141}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007215(arg1)
    print("OnSubFinish4007215")
    self:NarratorOnlyTaskByData(datas.Narrator_4007203, nil, 40072)
end

function Quest40072:OnSubStart4007216(arg1)
    print("OnSubStart4007216")
    actorMgr:CreateActorWithPos("Q4007216_SafeTrigger", "Actor/Gadget/Q4007216_SafeTrigger", 70900002, 0, {x = 19.481, y = 58.0, z = 11.892}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007216(arg1)
    print("OnSubFinish4007216")
end

function Quest40072:OnSubStart4007209(arg1)
    print("OnSubStart4007209")
    actorMgr:CreateActorWithPos("Q4007209_Trigger", "Actor/Gadget/Q4007209_Trigger", 70900002, 0, {x = 23.689, y = 50.19, z = 23.133}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007209(arg1)
    print("OnSubFinish4007209")
    self:NarratorOnlyTaskByData(datas.Narrator_4007204, nil, 40072)
end

function Quest40072:OnSubStart4007210(arg1)
    print("OnSubStart4007210")
    self:CreateQuestNpc(arg1, npcs.Npc12626Data.id, 4)
    actorMgr:CreateActorWithPos("Q4007210_Trigger", "Actor/Gadget/Q4007210_Trigger", 70900002, 0, {x = 3.567, y = 49.095, z = 44.266}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007210(arg1)
    print("OnSubFinish4007210")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20138)
end

function Quest40072:OnSubStart4007214(arg1)
    print("OnSubStart4007214")
end

function Quest40072:OnSubFinish4007214(arg1)
    print("OnSubFinish4007214")
end

function Quest40072:OnSubStart4007218(arg1)
    print("OnSubStart4007218")
    actorMgr:CreateActorWithPos("Q4007218_Trigger", "Actor/Gadget/Q4007218_Trigger", 70900002, 0, sceneData:GetDummyPoint(20138, "Q4007218_guide").pos, sceneData:GetDummyPoint(20138, "Q4007218_guide").rot, true, false, 20138)
end

function Quest40072:OnSubFinish4007218(arg1)
    print("OnSubFinish4007218")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20138)
    self:SafeDestroyQuestNpc(npcs.Npc12626Data.alias, 20138)
end

function Quest40072:OnSubStart4007219(arg1)
    print("OnSubStart4007219")
end

function Quest40072:OnSubFinish4007219(arg1)
    print("OnSubFinish4007219")
end

function Quest40072:OnSubStart4007211(arg1)
    print("OnSubStart4007211")
    actorMgr:CreateActorWithPos("Q4007211_Trigger", "Actor/Gadget/Q4007211_Trigger", 70900002, 0, {x = 3.71, y = 61.138, z = 154.899}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20138)
end

function Quest40072:OnSubFinish4007211(arg1)
    print("OnSubFinish4007211")
    self:NarratorOnlyTaskByData(datas.Narrator_4007205, nil, 40072)
end

function Quest40072:OnSubStart4007201(arg1)
    print("OnSubStart4007201")
end

function Quest40072:OnSubFinish4007201(arg1)
    print("OnSubFinish4007201")
end

function Quest40072:OnSubStart4007217(arg1)
    print("OnSubStart4007217")
    globalActor:PlayerEnterDungeonPoint(25, 1148, 4007217, 1)
end

function Quest40072:OnSubFinish4007217(arg1)
    print("OnSubFinish4007217")
end

function Quest40072:OnSubStart4007212(arg1)
    print("OnSubStart4007212")
    actorMgr:CreateActorWithPos("Q4007212_Trigger", "Actor/Gadget/Q4007212_Trigger", 70900002, 0, {x = 19.946, y = 0.0, z = -15.183}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20144)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:DisableMainPageWithConfig(true, "DisableTestHZM")
    end)
end

function Quest40072:OnSubFinish4007212(arg1)
    print("OnSubFinish4007212")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
end

function Quest40072:OnSubFailed4007212(arg1)
    print("OnSubFailed4007212")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
end

function Quest40072:OnSubStart4007213(arg1)
    print("OnSubStart4007213")
    self:CreateQuestNpc(arg1, npcs.Npc12629Data.id, 1)
    actorMgr:CreateActorWithPos("Q4007213_Trigger", "Actor/Gadget/Q4007213_Trigger", 70900002, 0, {x = 430.8, y = 221.289, z = -482.695}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
    if sceneData.currSceneID == 20144 then
        self:LevelLoadFinishSafeCall(function(arg1_2)
            arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
        end)
    end
end

function Quest40072:OnSubFinish4007213(arg1)
    print("OnSubFinish4007213")
    self:SafeDestroyQuestNpc(npcs.Npc12629Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

return Quest40072
