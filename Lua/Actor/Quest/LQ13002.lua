require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13002 = class("Quest13002", QuestActorProxy)
Quest13002.defaultAlias = "Quest13002"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1300201"] = self.OnSubStart1300201,
        ["1300202"] = self.OnSubStart1300202,
        ["1300203"] = self.OnSubStart1300203,
        ["1300204"] = self.OnSubStart1300204,
        ["1300212"] = self.OnSubStart1300212,
        ["1300216"] = self.OnSubStart1300216,
        ["1300205"] = self.OnSubStart1300205,
        ["1300206"] = self.OnSubStart1300206,
        ["1300207"] = self.OnSubStart1300207,
        ["1300208"] = self.OnSubStart1300208,
        ["1300209"] = self.OnSubStart1300209,
        ["1300210"] = self.OnSubStart1300210,
        ["1300215"] = self.OnSubStart1300215,
        ["1300211"] = self.OnSubStart1300211,
        ["1300213"] = self.OnSubStart1300213,
        ["1300214"] = self.OnSubStart1300214
    }
end

function Quest13002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1300201"] = self.OnSubFinish1300201,
        ["1300202"] = self.OnSubFinish1300202,
        ["1300203"] = self.OnSubFinish1300203,
        ["1300204"] = self.OnSubFinish1300204,
        ["1300212"] = self.OnSubFinish1300212,
        ["1300216"] = self.OnSubFinish1300216,
        ["1300205"] = self.OnSubFinish1300205,
        ["1300206"] = self.OnSubFinish1300206,
        ["1300207"] = self.OnSubFinish1300207,
        ["1300208"] = self.OnSubFinish1300208,
        ["1300209"] = self.OnSubFinish1300209,
        ["1300210"] = self.OnSubFinish1300210,
        ["1300215"] = self.OnSubFinish1300215,
        ["1300211"] = self.OnSubFinish1300211,
        ["1300213"] = self.OnSubFinish1300213,
        ["1300214"] = self.OnSubFinish1300214
    }
end

function Quest13002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13002:Start()
    print("Start")
end

function Quest13002:OnDestroy()
    print("OnDestroy")
end

function Quest13002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13002:ClearallThing()
    print("ClearallThing")
    self:ActorDestroy("Q1300201Trigger")
    self:ActorDestroy("Q1300203Trigger")
    self:ActorDestroy("Q1300204Trigger")
    self:ActorDestroy("Q1300205Trigger")
    self:ActorDestroy("Q1300206Trigger")
    self:ActorDestroy("Q1300206TriggerNear")
    self:ActorDestroy("Q1300207Trigger")
    self:ActorDestroy("Q1300208Trigger")
    self:ActorDestroy("Q1300209Trigger")
    self:ActorDestroy("Q1300211Trigger")
    self:ActorDestroy("Q1300213Trigger")
    self:ActorDestroy("Q1300216Trigger")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc12615Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc12665Data.alias, 20149)
end

function Quest13002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 2 then
        actorUtils.FinishQuestID(false, 1300215)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 1300212)
    end
end

function Quest13002:OnSubStart1300201(arg1)
    print("OnSubStart1300201")
    actorMgr:CreateActorWithPos("Q1300201Trigger", "Actor/Gadget/Q1300201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1300201_guide").pos, sceneData:GetDummyPoint(3, "Q1300201_guide").rot, true, false, 3)
end

function Quest13002:OnSubFinish1300201(arg1)
    print("OnSubFinish1300201")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
end

function Quest13002:OnSubStart1300202(arg1)
    print("OnSubStart1300202")
    self:ClearallThing()
end

function Quest13002:OnSubFinish1300202(arg1)
    print("OnSubFinish1300202")
end

function Quest13002:OnSubStart1300203(arg1)
    print("OnSubStart1300203")
    actorMgr:CreateActorWithPos("Q1300203Trigger", "Actor/Gadget/Q1300203Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300203_guide").pos, sceneData:GetDummyPoint(20149, "Q1300203_guide").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300203(arg1)
    print("OnSubFinish1300203")
    self:ActorDestroy("Q1300203Trigger")
end

function Quest13002:OnSubStart1300204(arg1)
    print("OnSubStart1300204")
    self:CreateQuestNpc(arg1, npcs.Npc12615Data.id, 2)
    actorMgr:CreateActorWithPos("Q1300204Trigger", "Actor/Gadget/Q1300204Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300204_guide").pos, sceneData:GetDummyPoint(20149, "Q1300204_guide").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300204(arg1)
    print("OnSubFinish1300204")
    self:SafeDestroyQuestNpc(npcs.Npc12615Data.alias, 20149)
end

function Quest13002:OnSubStart1300212(arg1)
    print("OnSubStart1300212")
end

function Quest13002:OnSubFinish1300212(arg1)
    print("OnSubFinish1300212")
end

function Quest13002:OnSubStart1300216(arg1)
    print("OnSubStart1300216")
    actorMgr:CreateActorWithPos("Q1300216Trigger", "Actor/Gadget/Q1300216Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "N10000005_T1300205").pos, sceneData:GetDummyPoint(20149, "N10000005_T1300205").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300216(arg1)
    print("OnSubFinish1300216")
end

function Quest13002:OnSubStart1300205(arg1)
    print("OnSubStart1300205")
    actorMgr:CreateActorWithPos("Q1300205Trigger", "Actor/Gadget/Q1300205Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300205_N1050").pos, sceneData:GetDummyPoint(20149, "Q1300205_N1050").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300205(arg1)
    print("OnSubFinish1300205")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
end

function Quest13002:OnSubStart1300206(arg1)
    print("OnSubStart1300206")
    self:CreateQuestNpc(arg1, npcs.Npc12603Data.id, 2)
    actorMgr:CreateActorWithPos("Q1300206Trigger", "Actor/Gadget/Q1300206Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300206_guide").pos, sceneData:GetDummyPoint(20149, "Q1300206_guide").rot, true, false, 20149)
    actorMgr:CreateActorWithPos("Q1300206TriggerNear", "Actor/Gadget/Q1300206TriggerNear", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300206_guide_02").pos, sceneData:GetDummyPoint(20149, "Q1300206_guide_02").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300206(arg1)
    print("OnSubFinish1300206")
    self:ActorDestroy("Q1300206Trigger")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
end

function Quest13002:OnSubStart1300207(arg1)
    print("OnSubStart1300207")
    actorMgr:CreateActorWithPos("Q1300207Trigger", "Actor/Gadget/Q1300207Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300207_guide").pos, sceneData:GetDummyPoint(20149, "Q1300207_guide").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300207(arg1)
    print("OnSubFinish1300207")
    self:ActorDestroy("Q1300207Trigger")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
end

function Quest13002:OnSubStart1300208(arg1)
    print("OnSubStart1300208")
    actorMgr:CreateActorWithPos("Q1300208Trigger", "Actor/Gadget/Q1300208Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300208_guide").pos, sceneData:GetDummyPoint(20149, "Q1300208_guide").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300208(arg1)
    print("OnSubFinish1300208")
    self:ActorDestroy("Q1300208Trigger")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
end

function Quest13002:OnSubStart1300209(arg1)
    print("OnSubStart1300209")
    actorMgr:CreateActorWithPos("Q1300209Trigger", "Actor/Gadget/Q1300209Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300209_Seepoint_01").pos, sceneData:GetDummyPoint(20149, "Q1300209_Seepoint_01").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300209(arg1)
    print("OnSubFinish1300209")
    self:ActorDestroy("Q1300209Trigger")
end

function Quest13002:OnSubStart1300210(arg1)
    print("OnSubStart1300210")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)
end

function Quest13002:OnSubFinish1300210(arg1)
    print("OnSubFinish1300210")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
end

function Quest13002:OnSubStart1300215(arg1)
    print("OnSubStart1300215")
end

function Quest13002:OnSubFinish1300215(arg1)
    print("OnSubFinish1300215")
end

function Quest13002:OnSubStart1300211(arg1)
    print("OnSubStart1300211")
    self:CreateQuestNpc(arg1, npcs.Npc12603Data.id, 2)
    actorMgr:CreateActorWithPos("Q1300211Trigger", "Actor/Gadget/Q1300211Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300205_N1050").pos, sceneData:GetDummyPoint(20149, "Q1300205_N1050").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300211(arg1)
    print("OnSubFinish1300211")
end

function Quest13002:OnSubStart1300213(arg1)
    print("OnSubStart1300213")
    self:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12603Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc12665Data.id, 2)
    actorMgr:CreateActorWithPos("Q1300213Trigger", "Actor/Gadget/Q1300213Trigger", 70900002, 0, sceneData:GetDummyPoint(20149, "Q1300213_N1050").pos, sceneData:GetDummyPoint(20149, "Q1300213_N1050").rot, true, false, 20149)
end

function Quest13002:OnSubFinish1300213(arg1)
    print("OnSubFinish1300213")
end

function Quest13002:OnSubStart1300214(arg1)
    print("OnSubStart1300214")
    self:GetQuestNpcActor(npcs.Npc12603Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
end

function Quest13002:OnSubFinish1300214(arg1)
    print("OnSubFinish1300214")
    self:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 20149)
    self:SafeDestroyQuestNpc(npcs.Npc12665Data.alias, 20149)
end

return Quest13002
