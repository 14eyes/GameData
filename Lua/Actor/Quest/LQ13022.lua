require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13022 = class("Quest13022", QuestActorProxy)
Quest13022.defaultAlias = "Quest13022"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest13022:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302201"] = self.OnSubStart1302201,
        ["1302202"] = self.OnSubStart1302202,
        ["1302203"] = self.OnSubStart1302203,
        ["1302224"] = self.OnSubStart1302224,
        ["1302204"] = self.OnSubStart1302204,
        ["1302223"] = self.OnSubStart1302223,
        ["1302220"] = self.OnSubStart1302220,
        ["1302207"] = self.OnSubStart1302207,
        ["1302206"] = self.OnSubStart1302206,
        ["1302205"] = self.OnSubStart1302205,
        ["1302208"] = self.OnSubStart1302208,
        ["1302219"] = self.OnSubStart1302219,
        ["1302209"] = self.OnSubStart1302209,
        ["1302227"] = self.OnSubStart1302227,
        ["1302210"] = self.OnSubStart1302210,
        ["1302211"] = self.OnSubStart1302211,
        ["1302225"] = self.OnSubStart1302225,
        ["1302212"] = self.OnSubStart1302212,
        ["1302213"] = self.OnSubStart1302213,
        ["1302226"] = self.OnSubStart1302226,
        ["1302214"] = self.OnSubStart1302214,
        ["1302215"] = self.OnSubStart1302215,
        ["1302221"] = self.OnSubStart1302221,
        ["1302216"] = self.OnSubStart1302216,
        ["1302222"] = self.OnSubStart1302222,
        ["1302217"] = self.OnSubStart1302217,
        ["1302218"] = self.OnSubStart1302218,
        ["1302228"] = self.OnSubStart1302228
    }
end

function Quest13022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302201"] = self.OnSubFinish1302201,
        ["1302202"] = self.OnSubFinish1302202,
        ["1302203"] = self.OnSubFinish1302203,
        ["1302224"] = self.OnSubFinish1302224,
        ["1302204"] = self.OnSubFinish1302204,
        ["1302223"] = self.OnSubFinish1302223,
        ["1302220"] = self.OnSubFinish1302220,
        ["1302207"] = self.OnSubFinish1302207,
        ["1302206"] = self.OnSubFinish1302206,
        ["1302205"] = self.OnSubFinish1302205,
        ["1302208"] = self.OnSubFinish1302208,
        ["1302219"] = self.OnSubFinish1302219,
        ["1302209"] = self.OnSubFinish1302209,
        ["1302227"] = self.OnSubFinish1302227,
        ["1302210"] = self.OnSubFinish1302210,
        ["1302211"] = self.OnSubFinish1302211,
        ["1302225"] = self.OnSubFinish1302225,
        ["1302212"] = self.OnSubFinish1302212,
        ["1302213"] = self.OnSubFinish1302213,
        ["1302226"] = self.OnSubFinish1302226,
        ["1302214"] = self.OnSubFinish1302214,
        ["1302215"] = self.OnSubFinish1302215,
        ["1302221"] = self.OnSubFinish1302221,
        ["1302216"] = self.OnSubFinish1302216,
        ["1302222"] = self.OnSubFinish1302222,
        ["1302217"] = self.OnSubFinish1302217,
        ["1302218"] = self.OnSubFinish1302218,
        ["1302228"] = self.OnSubFinish1302228
    }
end

function Quest13022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1302219"] = self.OnSubFailed1302219,
        ["1302209"] = self.OnSubFailed1302209,
        ["1302210"] = self.OnSubFailed1302210,
        ["1302211"] = self.OnSubFailed1302211,
        ["1302212"] = self.OnSubFailed1302212,
        ["1302213"] = self.OnSubFailed1302213,
        ["1302214"] = self.OnSubFailed1302214,
        ["1302215"] = self.OnSubFailed1302215,
        ["1302221"] = self.OnSubFailed1302221
    }
end

function Quest13022:Start()
    print("Start")
end

function Quest13022:OnDestroy()
    print("OnDestroy")
end

function Quest13022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13022:FuncBegin()
    print("FuncBegin")
    actorMgr:GetActor("13022")
    this:CreateQuestNpcById(1302207, npcs.Npc13131Data.id, 0)
    this:CreateQuestNpcById(1302207, npcs.Npc13132Data.id, 0)
    this:CreateQuestNpcById(1302207, npcs.Npc13144Data.id, 0)
    this:CreateQuestNpcById(1302207, npcs.Npc13145Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13131Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13144Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13132Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13145Data.alias):SitOnChair(8040)
    this:GetQuestNpcActor(npcs.Npc13144Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13145Data.alias):DisableInteeHeadCtrl(true)
end

function Quest13022:OnSubStart1302201(arg1)
    print("OnSubStart1302201")
    actorMgr:CreateActorWithPos("Q1302201Finish", "Actor/Gadget/Q1302201Finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302201_N13003_Q1302202_guide").pos, sceneData:GetDummyPoint(3, "Q1302201_N13003_Q1302202_guide").rot, true, false, 3)
end

function Quest13022:OnSubFinish1302201(arg1)
    print("OnSubFinish1302201")
end

function Quest13022:OnSubStart1302202(arg1)
    print("OnSubStart1302202")
    this:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13003Data.id, 1)
        this:RequestInteraction(npcs.Npc13003Data.alias)
    end, nil, nil, "", false, true)
end

function Quest13022:OnSubFinish1302202(arg1)
    print("OnSubFinish1302202")
    this:SafeDestroyQuestNpc(npcs.Npc13003Data.alias, 3)
end

function Quest13022:OnSubStart1302203(arg1)
    print("OnSubStart1302203")
    this:DestroyQuestNpcActor(npcs.Npc1053Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc13003Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc13004Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc13049Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc13050Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc13051Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc13091Data.alias, 20173)
    this:DestroyQuestNpcActor(npcs.Npc1058Data.alias, 20173)
end

function Quest13022:OnSubFinish1302203(arg1)
    print("OnSubFinish1302203")
    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302224(arg1)
    print("OnSubStart1302224")
    actorMgr:CreateActorWithPos("Q1302224Finish", "Actor/Gadget/Q1302224Finish", 70900002, 0, {x = 644.11, y = 135.413, z = 336.067}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
end

function Quest13022:OnSubFinish1302224(arg1)
    print("OnSubFinish1302224")
end

function Quest13022:OnSubStart1302204(arg1)
    print("OnSubStart1302204")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
        this:RequestInteraction(npcs.Npc1053Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest13022:OnSubFinish1302204(arg1)
    print("OnSubFinish1302204")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
end

function Quest13022:OnSubStart1302223(arg1)
    print("OnSubStart1302223")
    actorMgr:CreateActorWithPos("Q1302223Finish", "Actor/Gadget/Q1302223Finish", 70900002, 0, {x = 640.095, y = 123.467, z = 404.299}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
end

function Quest13022:OnSubFinish1302223(arg1)
    print("OnSubFinish1302223")
end

function Quest13022:OnSubStart1302220(arg1)
    print("OnSubStart1302220")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    this:RequestInteraction(npcs.Npc1053Data.alias)
    actorMgr:CreateActorWithPos("Q1302220Talk1", "Actor/Gadget/Q1302220Talk1", 70900002, 0, {x = 648.23, y = 121.61, z = 410.285}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
    actorMgr:CreateActorWithPos("Q1302220Talk2", "Actor/Gadget/Q1302220Talk2", 70900002, 0, {x = 631.092, y = 124.97, z = 403.447}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
end

function Quest13022:OnSubFinish1302220(arg1)
    print("OnSubFinish1302220")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
    this:ActorDestroy("Q1302220Talk1")
    this:ActorDestroy("Q1302220Talk2")
end

function Quest13022:OnSubStart1302207(arg1)
    print("OnSubStart1302207")
    actorMgr:CreateActorWithPos("Q1302207Finish", "Actor/Gadget/Q1302207Finish", 70900002, 0, {x = 425.669, y = 161.247, z = 512.549}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
    this:FuncBegin()
end

function Quest13022:OnSubFinish1302207(arg1)
    print("OnSubFinish1302207")
end

function Quest13022:OnSubStart1302206(arg1)
    print("OnSubStart1302206")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    this:RequestInteraction(npcs.Npc1053Data.alias)
    actorMgr:CreateActorWithPos("Q1302206Talk", "Actor/Gadget/Q1302206Talk", 70900002, 0, {x = 426.276, y = 158.885, z = 528.337}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest13022:OnSubFinish1302206(arg1)
    print("OnSubFinish1302206")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
    this:ActorDestroy("Q1302206Talk")
end

function Quest13022:OnSubStart1302205(arg1)
    print("OnSubStart1302205")
    actorMgr:CreateActorWithPos("Q1302205Finish", "Actor/Gadget/Q1302205Finish", 70900002, 0, {x = 507.86, y = 177.486, z = 589.631}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
    this:FuncBegin()
end

function Quest13022:OnSubFinish1302205(arg1)
    print("OnSubFinish1302205")
end

function Quest13022:OnSubStart1302208(arg1)
    print("OnSubStart1302208")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
    this:RequestInteraction(npcs.Npc1053Data.alias)
    actorMgr:CreateActorWithPos("Q1302208Talk", "Actor/Gadget/Q1302208Talk", 70900002, 0, {x = 508.409, y = 177.713, z = 576.62}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
end

function Quest13022:OnSubFinish1302208(arg1)
    print("OnSubFinish1302208")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
    this:ActorDestroy("Q1302208Talk")
end

function Quest13022:OnSubStart1302219(arg1)
    print("OnSubStart1302219")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13003Data.id, 1)
        actorMgr:CreateActorWithPos("Q1302219Finish", "Actor/Gadget/Q1302219Finish", 70900002, 0, {x = 7.464, y = 193.658, z = 371.829}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
        this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
        arg1_2:RemoveIndexedEffect(1302201)
        arg1_2:RemoveIndexedEffect(1302202)
        arg1_2:RemoveIndexedEffect(1302203)
        arg1_2:RemoveIndexedEffect(1302204)
        arg1_2:RemoveIndexedEffect(1302205)
    end)
end

function Quest13022:OnSubFinish1302219(arg1)
    print("OnSubFinish1302219")
    this:SafeDestroyQuestNpc(npcs.Npc13003Data.alias, 20173)
end

function Quest13022:OnSubFailed1302219(arg1)
    print("OnSubFailed1302219")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302209(arg1)
    print("OnSubStart1302209")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13004Data.id, 1)
        this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
    end)

    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
end

function Quest13022:OnSubFinish1302209(arg1)
    print("OnSubFinish1302209")
    self:RemoveIndexedEffect("1302201")
end

function Quest13022:OnSubFailed1302209(arg1)
    print("OnSubFailed1302209")
    this:RemoveLocalGadget(70800452, "13020")
    self:RemoveIndexedEffect("1302201")
end

function Quest13022:OnSubStart1302227(arg1)
    print("OnSubStart1302227")
end

function Quest13022:OnSubFinish1302227(arg1)
    print("OnSubFinish1302227")
    self:PlayIndexedEffect("1302201", "Eff_SceneObj_WarningSignal_01", M.Pos(-21.35155, 222.06, 418.1949), M.Pos(0, 130, 0), M.Pos(1.1, 1.1, 1.1))
end

function Quest13022:OnSubStart1302210(arg1)
    print("OnSubStart1302210")
    this:RequestInteraction(npcs.Npc13004Data.alias)
    actorMgr:CreateActorWithPos("Q13022BaodiTalk", "Actor/Gadget/Q13022BaodiTalk", 70900002, 0, {x = 8.603, y = 191.432, z = 398.133}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
end

function Quest13022:OnSubFinish1302210(arg1)
    print("OnSubFinish1302210")
    this:ActorDestroy("Q13022BaodiTalk")
end

function Quest13022:OnSubFailed1302210(arg1)
    print("OnSubFailed1302210")
    this:ActorDestroy("Q13022BaodiTalk")
end

function Quest13022:OnSubStart1302211(arg1)
    print("OnSubStart1302211")
    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
    this:ActionSafeCall(function(arg1)
        this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
        this:SetLocalGadgetState(70800452, "13020", 0)
    end)
end

function Quest13022:OnSubFinish1302211(arg1)
    print("OnSubFinish1302211")
end

function Quest13022:OnSubFailed1302211(arg1)
    print("OnSubFailed1302211")
    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302225(arg1)
    print("OnSubStart1302225")
end

function Quest13022:OnSubFinish1302225(arg1)
    print("OnSubFinish1302225")
    self:PlayIndexedEffect("1302202", "Eff_SceneObj_WarningSignal_01", M.Pos(-29.747, 210.1, 355.279), M.Pos(0, 83.35, 0), M.Pos(0.6, 0.6, 0.6))
    self:PlayIndexedEffect("1302201", "Eff_SceneObj_WarningSignal_01", M.Pos(-21.35155, 222.06, 418.1949), M.Pos(0, 130, 0), M.Pos(1.1, 1.1, 1.1))
    this:SetLocalGadgetState(70800452, "13020", 201)
end

function Quest13022:OnSubStart1302212(arg1)
    print("OnSubStart1302212")
    this:RequestInteraction(npcs.Npc13004Data.alias)
    actorMgr:CreateActorWithPos("Q13022BaodiTalk", "Actor/Gadget/Q13022BaodiTalk", 70900002, 0, {x = 8.603, y = 191.432, z = 398.133}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20173)
    self:PlayIndexedEffect("1302203", "Eff_SceneObj_WarningSignal_01", M.Pos(-18.83, 253.14, 470.68), M.Pos(0, 154, 0), M.Pos(0.6, 0.6, 0.6))
    self:PlayIndexedEffect("1302204", "Eff_SceneObj_WarningSignal_01", M.Pos(36.83, 220.89, 424.8), M.Pos(0, -128, 0), M.Pos(1.2, 1.2, 1.2))
    self:PlayIndexedEffect("1302205", "Eff_SceneObj_WarningSignal_01", M.Pos(20.76, 247.52, 496.01), M.Pos(0, 218, 0), M.Pos(0.6, 0.6, 0.6))
    this:SetLocalGadgetState(70800452, "13020", 202)
end

function Quest13022:OnSubFinish1302212(arg1)
    print("OnSubFinish1302212")
    this:ActorDestroy("Q13022BaodiTalk")
end

function Quest13022:OnSubFailed1302212(arg1)
    print("OnSubFailed1302212")
    this:ActorDestroy("Q13022BaodiTalk")
end

function Quest13022:OnSubStart1302213(arg1)
    print("OnSubStart1302213")
    this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
    this:SetLocalGadgetState(70800452, "13020", 202)
    this:ActionSafeCall(function(arg1)
        arg1:PlayIndexedEffect("1302203", "Eff_SceneObj_WarningSignal_01", M.Pos(-18.83, 253.14, 470.68), M.Pos(0, 154, 0), M.Pos(0.6, 0.6, 0.6))
        arg1:PlayIndexedEffect("1302204", "Eff_SceneObj_WarningSignal_01", M.Pos(36.83, 220.89, 424.8), M.Pos(0, -128, 0), M.Pos(1.2, 1.2, 1.2))
        arg1:PlayIndexedEffect("1302205", "Eff_SceneObj_WarningSignal_01", M.Pos(20.76, 247.52, 496.01), M.Pos(0, 218, 0), M.Pos(0.6, 0.6, 0.6))
        arg1:PlayIndexedEffect("1302202", "Eff_SceneObj_WarningSignal_01", M.Pos(-29.747, 210.1, 355.279), M.Pos(0, 83.35, 0), M.Pos(0.6, 0.6, 0.6))
        arg1:PlayIndexedEffect("1302201", "Eff_SceneObj_WarningSignal_01", M.Pos(-21.35155, 222.06, 418.1949), M.Pos(0, 130, 0), M.Pos(1.1, 1.1, 1.1))
    end)
end

function Quest13022:OnSubFinish1302213(arg1)
    print("OnSubFinish1302213")
end

function Quest13022:OnSubFailed1302213(arg1)
    print("OnSubFailed1302213")
    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302226(arg1)
    print("OnSubStart1302226")
end

function Quest13022:OnSubFinish1302226(arg1)
    print("OnSubFinish1302226")
end

function Quest13022:OnSubStart1302214(arg1)
    print("OnSubStart1302214")
    this:PlayCutsceneIndex(130221401, function(arg1)
        actorUtils.FinishQuestID(false, 1302214)
    end, function(arg1)
        arg1:RemoveIndexedEffect("1302201")
        arg1:RemoveIndexedEffect("1302202")
        arg1:RemoveIndexedEffect("1302203")
        arg1:RemoveIndexedEffect("1302204")
        arg1:RemoveIndexedEffect("1302205")
    end, nil, false)
end

function Quest13022:OnSubFinish1302214(arg1)
    print("OnSubFinish1302214")
    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
end

function Quest13022:OnSubFailed1302214(arg1)
    print("OnSubFailed1302214")
    self:RemoveIndexedEffect("1302201")
    self:RemoveIndexedEffect("1302202")
    self:RemoveIndexedEffect("1302203")
    self:RemoveIndexedEffect("1302204")
    self:RemoveIndexedEffect("1302205")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302215(arg1)
    print("OnSubStart1302215")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
        this:RequestInteraction(npcs.Npc1053Data.alias)
        this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
        this:SetLocalGadgetState(70800452, "13020", 203)
        this:CreateQuestNpc(arg1, npcs.Npc13004Data.id, 0)
    end, nil, nil, "", false, true)
end

function Quest13022:OnSubFinish1302215(arg1)
    print("OnSubFinish1302215")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
end

function Quest13022:OnSubFailed1302215(arg1)
    print("OnSubFailed1302215")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302221(arg1)
    print("OnSubStart1302221")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13003Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13049Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13050Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13051Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13091Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0)
        this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
        this:SetLocalGadgetState(70800452, "13020", 203)
        actorMgr:CreateActorWithPos("Q1302221Talk", "Actor/Gadget/Q1302221Talk", 70900002, 0, sceneData:GetDummyPoint(20173, "Q1302221_T1302214_N13003").pos, sceneData:GetDummyPoint(20173, "Q1302221_T1302214_N13003").rot, true, false, 20173)
    end)
end

function Quest13022:OnSubFinish1302221(arg1)
    print("OnSubFinish1302221")
    this:SafeDestroyQuestNpc(npcs.Npc13003Data.alias, 20173)
    this:SafeDestroyQuestNpc(npcs.Npc13049Data.alias, 20173)
    this:SafeDestroyQuestNpc(npcs.Npc13050Data.alias, 20173)
    this:SafeDestroyQuestNpc(npcs.Npc13051Data.alias, 20173)
    this:SafeDestroyQuestNpc(npcs.Npc13091Data.alias, 20173)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 20173)
end

function Quest13022:OnSubFailed1302221(arg1)
    print("OnSubFailed1302221")
    this:RemoveLocalGadget(70800452, "13020")
end

function Quest13022:OnSubStart1302216(arg1)
    print("OnSubStart1302216")
    this:CreateLocalGadget(70800452, "13020", sceneData:GetDummyPoint(20173, "Q13022_Screen").pos, sceneData:GetDummyPoint(20173, "Q13022_Screen").rot, 20173, nil, nil, 0, false)
    this:SetLocalGadgetState(70800452, "13020", 203)
end

function Quest13022:OnSubFinish1302216(arg1)
    print("OnSubFinish1302216")
end

function Quest13022:OnSubStart1302222(arg1)
    print("OnSubStart1302222")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    actorMgr:CreateActorWithPos("Q1302222Talk", "Actor/Gadget/Q1302222Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q1302201_N13003_Q1302202_guide").pos, sceneData:GetDummyPoint(3, "Q1302201_N13003_Q1302202_guide").rot, true, false, 3)
end

function Quest13022:OnSubFinish1302222(arg1)
    print("OnSubFinish1302222")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
end

function Quest13022:OnSubStart1302217(arg1)
    print("OnSubStart1302217")
end

function Quest13022:OnSubFinish1302217(arg1)
    print("OnSubFinish1302217")
end

function Quest13022:OnSubStart1302218(arg1)
    print("OnSubStart1302218")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    actorMgr:CreateActorWithPos("Q1302218Talk", "Actor/Gadget/Q1302218Talk", 70900002, 0, sceneData:GetDummyPoint(1079, "Q1302217_Q1302218_N1053").pos, sceneData:GetDummyPoint(1079, "Q1302217_Q1302218_N1053").rot, true, false, 1079)
end

function Quest13022:OnSubFinish1302218(arg1)
    print("OnSubFinish1302218")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20173)
end

function Quest13022:OnSubStart1302228(arg1)
    print("OnSubStart1302228")
    this:TransmitPlayerById(arg1, 1)
end

function Quest13022:OnSubFinish1302228(arg1)
    print("OnSubFinish1302228")
end

return Quest13022
