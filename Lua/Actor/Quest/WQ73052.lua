require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73052 = class("Quest73052", QuestActorProxy)
Quest73052.defaultAlias = "Quest73052"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73052:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73052:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305203"] = self.OnSubStart7305203,
        ["7305201"] = self.OnSubStart7305201,
        ["7305202"] = self.OnSubStart7305202,
        ["7305207"] = self.OnSubStart7305207,
        ["7305204"] = self.OnSubStart7305204,
        ["7305252"] = self.OnSubStart7305252,
        ["7305205"] = self.OnSubStart7305205,
        ["7305206"] = self.OnSubStart7305206,
        ["7305208"] = self.OnSubStart7305208,
        ["7305209"] = self.OnSubStart7305209,
        ["7305210"] = self.OnSubStart7305210,
        ["7305211"] = self.OnSubStart7305211,
        ["7305212"] = self.OnSubStart7305212,
        ["7305240"] = self.OnSubStart7305240,
        ["7305213"] = self.OnSubStart7305213,
        ["7305245"] = self.OnSubStart7305245,
        ["7305248"] = self.OnSubStart7305248,
        ["7305215"] = self.OnSubStart7305215,
        ["7305254"] = self.OnSubStart7305254,
        ["7305216"] = self.OnSubStart7305216,
        ["7305217"] = self.OnSubStart7305217,
        ["7305218"] = self.OnSubStart7305218,
        ["7305219"] = self.OnSubStart7305219,
        ["7305220"] = self.OnSubStart7305220,
        ["7305249"] = self.OnSubStart7305249,
        ["7305250"] = self.OnSubStart7305250,
        ["7305251"] = self.OnSubStart7305251,
        ["7305221"] = self.OnSubStart7305221,
        ["7305224"] = self.OnSubStart7305224,
        ["7305225"] = self.OnSubStart7305225,
        ["7305226"] = self.OnSubStart7305226,
        ["7305227"] = self.OnSubStart7305227,
        ["7305246"] = self.OnSubStart7305246,
        ["7305253"] = self.OnSubStart7305253,
        ["7305247"] = self.OnSubStart7305247,
        ["7305228"] = self.OnSubStart7305228,
        ["7305229"] = self.OnSubStart7305229,
        ["7305230"] = self.OnSubStart7305230,
        ["7305231"] = self.OnSubStart7305231,
        ["7305234"] = self.OnSubStart7305234,
        ["7305236"] = self.OnSubStart7305236,
        ["7305244"] = self.OnSubStart7305244,
        ["7305214"] = self.OnSubStart7305214,
        ["7305222"] = self.OnSubStart7305222,
        ["7305243"] = self.OnSubStart7305243,
        ["7305223"] = self.OnSubStart7305223,
        ["7305241"] = self.OnSubStart7305241,
        ["7305239"] = self.OnSubStart7305239,
        ["7305237"] = self.OnSubStart7305237,
        ["7305235"] = self.OnSubStart7305235,
        ["7305233"] = self.OnSubStart7305233,
        ["7305232"] = self.OnSubStart7305232,
        ["7305242"] = self.OnSubStart7305242,
        ["7305238"] = self.OnSubStart7305238
    }
end

function Quest73052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305203"] = self.OnSubFinish7305203,
        ["7305201"] = self.OnSubFinish7305201,
        ["7305202"] = self.OnSubFinish7305202,
        ["7305207"] = self.OnSubFinish7305207,
        ["7305204"] = self.OnSubFinish7305204,
        ["7305252"] = self.OnSubFinish7305252,
        ["7305205"] = self.OnSubFinish7305205,
        ["7305206"] = self.OnSubFinish7305206,
        ["7305208"] = self.OnSubFinish7305208,
        ["7305209"] = self.OnSubFinish7305209,
        ["7305210"] = self.OnSubFinish7305210,
        ["7305211"] = self.OnSubFinish7305211,
        ["7305212"] = self.OnSubFinish7305212,
        ["7305240"] = self.OnSubFinish7305240,
        ["7305213"] = self.OnSubFinish7305213,
        ["7305245"] = self.OnSubFinish7305245,
        ["7305248"] = self.OnSubFinish7305248,
        ["7305215"] = self.OnSubFinish7305215,
        ["7305254"] = self.OnSubFinish7305254,
        ["7305216"] = self.OnSubFinish7305216,
        ["7305217"] = self.OnSubFinish7305217,
        ["7305218"] = self.OnSubFinish7305218,
        ["7305219"] = self.OnSubFinish7305219,
        ["7305220"] = self.OnSubFinish7305220,
        ["7305249"] = self.OnSubFinish7305249,
        ["7305250"] = self.OnSubFinish7305250,
        ["7305251"] = self.OnSubFinish7305251,
        ["7305221"] = self.OnSubFinish7305221,
        ["7305224"] = self.OnSubFinish7305224,
        ["7305225"] = self.OnSubFinish7305225,
        ["7305226"] = self.OnSubFinish7305226,
        ["7305227"] = self.OnSubFinish7305227,
        ["7305246"] = self.OnSubFinish7305246,
        ["7305253"] = self.OnSubFinish7305253,
        ["7305247"] = self.OnSubFinish7305247,
        ["7305228"] = self.OnSubFinish7305228,
        ["7305229"] = self.OnSubFinish7305229,
        ["7305230"] = self.OnSubFinish7305230,
        ["7305231"] = self.OnSubFinish7305231,
        ["7305234"] = self.OnSubFinish7305234,
        ["7305236"] = self.OnSubFinish7305236,
        ["7305244"] = self.OnSubFinish7305244,
        ["7305214"] = self.OnSubFinish7305214,
        ["7305222"] = self.OnSubFinish7305222,
        ["7305243"] = self.OnSubFinish7305243,
        ["7305223"] = self.OnSubFinish7305223,
        ["7305241"] = self.OnSubFinish7305241,
        ["7305239"] = self.OnSubFinish7305239,
        ["7305237"] = self.OnSubFinish7305237,
        ["7305235"] = self.OnSubFinish7305235,
        ["7305233"] = self.OnSubFinish7305233,
        ["7305232"] = self.OnSubFinish7305232,
        ["7305242"] = self.OnSubFinish7305242,
        ["7305238"] = self.OnSubFinish7305238
    }
end

function Quest73052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73052:Start()
    print("Start")
end

function Quest73052:OnDestroy()
    print("OnDestroy")
end

function Quest73052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73052:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73052:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73052:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73052:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73052:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73052:NpcCreateWithBlackscreenInteractionByID(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpcById(arg3, arg1, arg2)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73052:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73052:NPCDestroyImmediately(arg1, arg2)
    self:DestroyQuestNpcActor(arg1, arg2)
end

function Quest73052:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7305254)
    elseif arg1 == 2 then
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc4218Data.alias)
            questNpcActor:EnableHeadCtrl(false)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, false)
        end)
    end
end

function Quest73052:OnSubStart7305203(arg1)
    print("OnSubStart7305203")
    self:CreateQuestNpc(arg1, npcs.Npc4247Data.id, 1)
end

function Quest73052:OnSubFinish7305203(arg1)
    print("OnSubFinish7305203")
end

function Quest73052:OnSubStart7305201(arg1)
    print("OnSubStart7305201")
    self:CreateQuestNpc(arg1, npcs.Npc4247Data.id, 1)
end

function Quest73052:OnSubFinish7305201(arg1)
    print("OnSubFinish7305201")
end

function Quest73052:OnSubStart7305202(arg1)
    print("OnSubStart7305202")
    self:CreateQuestNpc(arg1, npcs.Npc4247Data.id, 1)
end

function Quest73052:OnSubFinish7305202(arg1)
    print("OnSubFinish7305202")
end

function Quest73052:OnSubStart7305207(arg1)
    print("OnSubStart7305207")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20916Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20917Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20918Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20919Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20920Data.id, 8)
    actorMgr:CreateActorWithPos("Q7305207Trigger", "Actor/Gadget/Q7305207Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305207").pos, sceneData:GetDummyPoint(3, "Q7305207").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305207(arg1)
    print("OnSubFinish7305207")
end

function Quest73052:OnSubStart7305204(arg1)
    print("OnSubStart7305204")
    actorMgr:CreateActorWithPos("Q7305204Trigger", "Actor/Gadget/Q7305204Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305204").pos, sceneData:GetDummyPoint(3, "guide_Q7305204").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7305204_2Trigger", "Actor/Gadget/Q7305204_2Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305204").pos, sceneData:GetDummyPoint(3, "Q7305204").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305204(arg1)
    print("OnSubFinish7305204")
end

function Quest73052:OnSubStart7305252(arg1)
    print("OnSubStart7305252")
    actorMgr:CreateActorWithPos("Q7305252Trigger", "Actor/Gadget/Q7305252Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305252_guide").pos, sceneData:GetDummyPoint(3, "Q7305252_guide").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305252(arg1)
    print("OnSubFinish7305252")
end

function Quest73052:OnSubStart7305205(arg1)
    print("OnSubStart7305205")
    actorMgr:CreateActorWithPos("Q7305205Trigger", "Actor/Gadget/Q7305205Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305205").pos, sceneData:GetDummyPoint(3, "guide_Q7305205").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305205(arg1)
    print("OnSubFinish7305205")
end

function Quest73052:OnSubStart7305206(arg1)
    print("OnSubStart7305206")
    actorMgr:CreateActorWithPos("Q7305206Trigger", "Actor/Gadget/Q7305206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305206").pos, sceneData:GetDummyPoint(3, "guide_Q7305206").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305206(arg1)
    print("OnSubFinish7305206")
end

function Quest73052:OnSubStart7305208(arg1)
    print("OnSubStart7305208")
    self:NpcCreate(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7305208Trigger", "Actor/Gadget/Q7305208Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305208").pos, sceneData:GetDummyPoint(3, "guide_Q7305208").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305208(arg1)
    print("OnSubFinish7305208")
end

function Quest73052:OnSubStart7305209(arg1)
    print("OnSubStart7305209")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest73052:OnSubFinish7305209(arg1)
    print("OnSubFinish7305209")
end

function Quest73052:OnSubStart7305210(arg1)
    print("OnSubStart7305210")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest73052:OnSubFinish7305210(arg1)
    print("OnSubFinish7305210")
end

function Quest73052:OnSubStart7305211(arg1)
    print("OnSubStart7305211")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest73052:OnSubFinish7305211(arg1)
    print("OnSubFinish7305211")
end

function Quest73052:OnSubStart7305212(arg1)
    print("OnSubStart7305212")
end

function Quest73052:OnSubFinish7305212(arg1)
    print("OnSubFinish7305212")
end

function Quest73052:OnSubStart7305240(arg1)
    print("OnSubStart7305240")
end

function Quest73052:OnSubFinish7305240(arg1)
    print("OnSubFinish7305240")
end

function Quest73052:OnSubStart7305213(arg1)
    print("OnSubStart7305213")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(4110, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
end

function Quest73052:OnSubFinish7305213(arg1)
    print("OnSubFinish7305213")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20723Data.alias)
end

function Quest73052:OnSubStart7305245(arg1)
    print("OnSubStart7305245")
    actorMgr:CreateActorWithPos("Q7305245Trigger", "Actor/Gadget/Q7305245Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305245_guide").pos, sceneData:GetDummyPoint(3, "Q7305245_guide").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305245(arg1)
    print("OnSubFinish7305245")
end

function Quest73052:OnSubStart7305248(arg1)
    print("OnSubStart7305248")
    self:RequestInteraction(npcs.Npc20722Data.alias)
end

function Quest73052:OnSubFinish7305248(arg1)
    print("OnSubFinish7305248")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
end

function Quest73052:OnSubStart7305215(arg1)
    print("OnSubStart7305215")
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1702Data.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 3)
    actorMgr:CreateActorWithPos("Q7305215Trigger", "Actor/Gadget/Q7305215Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7308415_330800274").pos, sceneData:GetDummyPoint(3, "Q7308415_330800274").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305215(arg1)
    print("OnSubFinish7305215")
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20723Data.alias)
end

function Quest73052:OnSubStart7305254(arg1)
    print("OnSubStart7305254")
end

function Quest73052:OnSubFinish7305254(arg1)
    print("OnSubFinish7305254")
end

function Quest73052:OnSubStart7305216(arg1)
    print("OnSubStart7305216")
    actorMgr:CreateActorWithPos("Q7305216Trigger", "Actor/Gadget/Q7305216Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305216").pos, sceneData:GetDummyPoint(3, "guide_Q7305216").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305216(arg1)
    print("OnSubFinish7305216")
end

function Quest73052:OnSubStart7305217(arg1)
    print("OnSubStart7305217")
end

function Quest73052:OnSubFinish7305217(arg1)
    print("OnSubFinish7305217")
end

function Quest73052:OnSubStart7305218(arg1)
    print("OnSubStart7305218")
    actorMgr:CreateActorWithPos("Q7305218Trigger", "Actor/Gadget/Q7305218Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305218").pos, sceneData:GetDummyPoint(3, "guide_Q7305218").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305218(arg1)
    print("OnSubFinish7305218")
end

function Quest73052:OnSubStart7305219(arg1)
    print("OnSubStart7305219")
end

function Quest73052:OnSubFinish7305219(arg1)
    print("OnSubFinish7305219")
end

function Quest73052:OnSubStart7305220(arg1)
    print("OnSubStart7305220")
    actorMgr:CreateActorWithPos("Q7305220Trigger", "Actor/Gadget/Q7305220Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305220_330800020").pos, sceneData:GetDummyPoint(3, "Q7305220_330800020").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305220(arg1)
    print("OnSubFinish7305220")
end

function Quest73052:OnSubStart7305249(arg1)
    print("OnSubStart7305249")
    actorMgr:CreateActorWithPos("Q7305249Trigger", "Actor/Gadget/Q7305249Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305249").pos, sceneData:GetDummyPoint(3, "guide_Q7305249").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305249(arg1)
    print("OnSubFinish7305249")
end

function Quest73052:OnSubStart7305250(arg1)
    print("OnSubStart7305250")
    actorMgr:CreateActorWithPos("Q7305250Trigger", "Actor/Gadget/Q7305250Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305250").pos, sceneData:GetDummyPoint(3, "guide_Q7305250").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305250(arg1)
    print("OnSubFinish7305250")
end

function Quest73052:OnSubStart7305251(arg1)
    print("OnSubStart7305251")
    actorMgr:CreateActorWithPos("Q7305251Trigger", "Actor/Gadget/Q7305251Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305251").pos, sceneData:GetDummyPoint(3, "Q7305251").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305251(arg1)
    print("OnSubFinish7305251")
end

function Quest73052:OnSubStart7305221(arg1)
    print("OnSubStart7305221")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4218Data.id, 1, npcs.Npc4218Data.alias)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20722Data.id, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20723Data.id, 3)
end

function Quest73052:OnSubFinish7305221(arg1)
    print("OnSubFinish7305221")
    self:NpcDestroy(npcs.Npc20723Data.alias, 3)
end

function Quest73052:OnSubStart7305224(arg1)
    print("OnSubStart7305224")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc4218Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc20724Data.id, 3)
    actorMgr:CreateActorWithPos("Q7305224Trigger", "Actor/Gadget/Q7305224Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305224").pos, sceneData:GetDummyPoint(3, "guide_Q7305224").rot, true, false, 3)
    questNpcActor:EnableHeadCtrl(false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest73052:OnSubFinish7305224(arg1)
    print("OnSubFinish7305224")
end

function Quest73052:OnSubStart7305225(arg1)
    print("OnSubStart7305225")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc4218Data.alias)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest73052:OnSubFinish7305225(arg1)
    print("OnSubFinish7305225")
    self:NpcDestroy(npcs.Npc20723Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20724Data.alias)
end

function Quest73052:OnSubStart7305226(arg1)
    print("OnSubStart7305226")
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc4218Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7305226Trigger", "Actor/Gadget/Q7305226Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305226").pos, sceneData:GetDummyPoint(3, "guide_Q7305226").rot, true, false, 3)
    questNpcActor:EnableHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", 0, false, true, false)
end

function Quest73052:OnSubFinish7305226(arg1)
    print("OnSubFinish7305226")
    self:NPCDestroyImmediately(npcs.Npc20723Data.alias, 3)
end

function Quest73052:OnSubStart7305227(arg1)
    print("OnSubStart7305227")
    self:GetQuestNpcActor(npcs.Npc4218Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateQuestNpc(arg1, npcs.Npc20722Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 3)
end

function Quest73052:OnSubFinish7305227(arg1)
    print("OnSubFinish7305227")
    actorMgr:CreateActorWithPos("Q7305227Trigger", "Actor/Gadget/Q7305227Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305227").pos, sceneData:GetDummyPoint(3, "guide_Q7305227").rot, true, false, 3)
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1277)
    end)
end

function Quest73052:OnSubStart7305246(arg1)
    print("OnSubStart7305246")
end

function Quest73052:OnSubFinish7305246(arg1)
    print("OnSubFinish7305246")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20722Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20723Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

function Quest73052:OnSubStart7305253(arg1)
    print("OnSubStart7305253")
end

function Quest73052:OnSubFinish7305253(arg1)
    print("OnSubFinish7305253")
end

function Quest73052:OnSubStart7305247(arg1)
    print("OnSubStart7305247")
    actorMgr:CreateActorWithPos("Q7305247Trigger", "Actor/Gadget/Q7305247Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305247_guide").pos, sceneData:GetDummyPoint(3, "Q7305247_guide").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305247(arg1)
    print("OnSubFinish7305247")
end

function Quest73052:OnSubStart7305228(arg1)
    print("OnSubStart7305228")
end

function Quest73052:OnSubFinish7305228(arg1)
    print("OnSubFinish7305228")
end

function Quest73052:OnSubStart7305229(arg1)
    print("OnSubStart7305229")
end

function Quest73052:OnSubFinish7305229(arg1)
    print("OnSubFinish7305229")
end

function Quest73052:OnSubStart7305230(arg1)
    print("OnSubStart7305230")
    actorMgr:CreateActorWithPos("Q7305230Trigger", "Actor/Gadget/Q7305230Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305230").pos, sceneData:GetDummyPoint(3, "guide_Q7305230").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305230(arg1)
    print("OnSubFinish7305230")
end

function Quest73052:OnSubStart7305231(arg1)
    print("OnSubStart7305231")
    self:NpcCreateWithBlackscreenInteractionByID(npcs.Npc1702Data.id, 3, 7305231, npcs.Npc1702Data.alias)
end

function Quest73052:OnSubFinish7305231(arg1)
    print("OnSubFinish7305231")
    actorMgr:CreateActorWithPos("Q7305231Trigger", "Actor/Gadget/Q7305231Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305231").pos, sceneData:GetDummyPoint(3, "guide_Q7305231").rot, true, false, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20722Data.alias, 3)
    self:NpcDestroy(npcs.Npc1702Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20916Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20917Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20919Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20920Data.alias, 3)
end

function Quest73052:OnSubStart7305234(arg1)
    print("OnSubStart7305234")
    actorMgr:CreateActorWithPos("Q7305234Trigger", "Actor/Gadget/Q7305234Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305234").pos, sceneData:GetDummyPoint(3, "guide_Q7305234").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305234(arg1)
    print("OnSubFinish7305234")
end

function Quest73052:OnSubStart7305236(arg1)
    print("OnSubStart7305236")
    actorMgr:CreateActorWithPos("Q7305236Trigger", "Actor/Gadget/Q7305236Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305236_guide").pos, sceneData:GetDummyPoint(3, "Q7305236_guide").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305236(arg1)
    print("OnSubFinish7305236")
end

function Quest73052:OnSubStart7305244(arg1)
    print("OnSubStart7305244")
end

function Quest73052:OnSubFinish7305244(arg1)
    print("OnSubFinish7305244")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1702Data.alias)
end

function Quest73052:OnSubStart7305214(arg1)
    print("OnSubStart7305214")
    actorMgr:CreateActorWithPos("Q7305214Trigger", "Actor/Gadget/Q7305214Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305214").pos, sceneData:GetDummyPoint(3, "guide_Q7305214").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305214(arg1)
    print("OnSubFinish7305214")
end

function Quest73052:OnSubStart7305222(arg1)
    print("OnSubStart7305222")
end

function Quest73052:OnSubFinish7305222(arg1)
    print("OnSubFinish7305222")
end

function Quest73052:OnSubStart7305243(arg1)
    print("OnSubStart7305243")
end

function Quest73052:OnSubFinish7305243(arg1)
    print("OnSubFinish7305243")
end

function Quest73052:OnSubStart7305223(arg1)
    print("OnSubStart7305223")
end

function Quest73052:OnSubFinish7305223(arg1)
    print("OnSubFinish7305223")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4218Data.alias)
end

function Quest73052:OnSubStart7305241(arg1)
    print("OnSubStart7305241")
    actorMgr:CreateActorWithPos("Q7305241Trigger", "Actor/Gadget/Q7305241Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7305241").pos, sceneData:GetDummyPoint(3, "guide_Q7305241").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305241(arg1)
    print("OnSubFinish7305241")
end

function Quest73052:OnSubStart7305239(arg1)
    print("OnSubStart7305239")
    actorMgr:CreateActorWithPos("Q7305233Trigger", "Actor/Gadget/Q7305233Trigger", 70900002, 0, sceneData:GetDummyPoint(0, "guide_Q7305233").pos, sceneData:GetDummyPoint(0, "guide_Q7305233").rot, true, false)
end

function Quest73052:OnSubFinish7305239(arg1)
    print("OnSubFinish7305239")
end

function Quest73052:OnSubStart7305237(arg1)
    print("OnSubStart7305237")
end

function Quest73052:OnSubFinish7305237(arg1)
    print("OnSubFinish7305237")
end

function Quest73052:OnSubStart7305235(arg1)
    print("OnSubStart7305235")
end

function Quest73052:OnSubFinish7305235(arg1)
    print("OnSubFinish7305235")
end

function Quest73052:OnSubStart7305233(arg1)
    print("OnSubStart7305233")
    actorMgr:CreateActorWithPos("Q7305233Trigger", "Actor/Gadget/Q7305233Trigger", 70900002, 0, sceneData:GetDummyPoint(0, "guide_Q7305233").pos, sceneData:GetDummyPoint(0, "guide_Q7305233").rot, true, false)
end

function Quest73052:OnSubFinish7305233(arg1)
    print("OnSubFinish7305233")
end

function Quest73052:OnSubStart7305232(arg1)
    print("OnSubStart7305232")
end

function Quest73052:OnSubFinish7305232(arg1)
    print("OnSubFinish7305232")
end

function Quest73052:OnSubStart7305242(arg1)
    print("OnSubStart7305242")
    actorMgr:CreateActorWithPos("Q7305242Trigger", "Actor/Gadget/Q7305242Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7305242").pos, sceneData:GetDummyPoint(3, "Q7305242").rot, true, false, 3)
end

function Quest73052:OnSubFinish7305242(arg1)
    print("OnSubFinish7305242")
end

function Quest73052:OnSubStart7305238(arg1)
    print("OnSubStart7305238")
end

function Quest73052:OnSubFinish7305238(arg1)
    print("OnSubFinish7305238")
end

return Quest73052
