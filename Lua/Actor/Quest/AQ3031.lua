require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3031 = class("Quest3031", QuestActorProxy)
Quest3031.defaultAlias = "Quest3031"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3031:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["303115"] = self.OnSubStart303115,
        ["303101"] = self.OnSubStart303101,
        ["303116"] = self.OnSubStart303116,
        ["303125"] = self.OnSubStart303125,
        ["303102"] = self.OnSubStart303102,
        ["303123"] = self.OnSubStart303123,
        ["303124"] = self.OnSubStart303124,
        ["303103"] = self.OnSubStart303103,
        ["303104"] = self.OnSubStart303104,
        ["303112"] = self.OnSubStart303112,
        ["303111"] = self.OnSubStart303111,
        ["303117"] = self.OnSubStart303117,
        ["303118"] = self.OnSubStart303118,
        ["303119"] = self.OnSubStart303119,
        ["303105"] = self.OnSubStart303105,
        ["303120"] = self.OnSubStart303120,
        ["303121"] = self.OnSubStart303121,
        ["303113"] = self.OnSubStart303113,
        ["303106"] = self.OnSubStart303106,
        ["303122"] = self.OnSubStart303122,
        ["303114"] = self.OnSubStart303114,
        ["303107"] = self.OnSubStart303107,
        ["303127"] = self.OnSubStart303127,
        ["303108"] = self.OnSubStart303108,
        ["303126"] = self.OnSubStart303126,
        ["303109"] = self.OnSubStart303109,
        ["303110"] = self.OnSubStart303110
    }
end

function Quest3031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["303115"] = self.OnSubFinish303115,
        ["303101"] = self.OnSubFinish303101,
        ["303116"] = self.OnSubFinish303116,
        ["303125"] = self.OnSubFinish303125,
        ["303102"] = self.OnSubFinish303102,
        ["303123"] = self.OnSubFinish303123,
        ["303124"] = self.OnSubFinish303124,
        ["303103"] = self.OnSubFinish303103,
        ["303104"] = self.OnSubFinish303104,
        ["303112"] = self.OnSubFinish303112,
        ["303111"] = self.OnSubFinish303111,
        ["303117"] = self.OnSubFinish303117,
        ["303118"] = self.OnSubFinish303118,
        ["303119"] = self.OnSubFinish303119,
        ["303105"] = self.OnSubFinish303105,
        ["303120"] = self.OnSubFinish303120,
        ["303121"] = self.OnSubFinish303121,
        ["303113"] = self.OnSubFinish303113,
        ["303106"] = self.OnSubFinish303106,
        ["303122"] = self.OnSubFinish303122,
        ["303114"] = self.OnSubFinish303114,
        ["303107"] = self.OnSubFinish303107,
        ["303127"] = self.OnSubFinish303127,
        ["303108"] = self.OnSubFinish303108,
        ["303126"] = self.OnSubFinish303126,
        ["303109"] = self.OnSubFinish303109,
        ["303110"] = self.OnSubFinish303110
    }
end

function Quest3031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["303117"] = self.OnSubFailed303117,
        ["303118"] = self.OnSubFailed303118,
        ["303105"] = self.OnSubFailed303105,
        ["303120"] = self.OnSubFailed303120,
        ["303106"] = self.OnSubFailed303106,
        ["303107"] = self.OnSubFailed303107,
        ["303108"] = self.OnSubFailed303108
    }
end

function Quest3031:Start()
    print("Start")
end

function Quest3031:OnDestroy()
    print("OnDestroy")
end

function Quest3031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3031:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3031:OnSubStart303115(arg1)
    print("OnSubStart303115")
    this:CreateQuestNpc(arg1, npcs.Npc12991Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12992Data.id, 2)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12992Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q303115Trigger", "Actor/Gadget/Q303115Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303115_guide").pos, sceneData:GetDummyPoint(3, "Q303115_guide").rot, true, false, 3)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3031:OnSubFinish303115(arg1)
    print("OnSubFinish303115")
end

function Quest3031:OnSubStart303101(arg1)
    print("OnSubStart303101")
    this:CreateQuestNpc(arg1, npcs.Npc1056Data.id, 1)
    this:CreateQuestNpcById(303101, npcs.Npc12991Data.id, 2)
    this:CreateQuestNpcById(303101, npcs.Npc12992Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc12991Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12992Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q303101Trigger", "Actor/Gadget/Q303101Trigger", 70900002, 0, sceneData:GetDummyPoint(1075, "Q303101_N1056").pos, sceneData:GetDummyPoint(1075, "Q303101_N1056").rot, true, false, 1075)
end

function Quest3031:OnSubFinish303101(arg1)
    print("OnSubFinish303101")
    this:SafeDestroyQuestNpc(npcs.Npc12991Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12992Data.alias, 3)
end

function Quest3031:OnSubStart303116(arg1)
    print("OnSubStart303116")
    actorMgr:CreateActorWithPos("Q303116Trigger", "Actor/Gadget/Q303116Trigger", 70900002, 0, sceneData:GetDummyPoint(1075, "Q303101_N1056").pos, sceneData:GetDummyPoint(1075, "Q303101_N1056").rot, true, false, 1075)
end

function Quest3031:OnSubFinish303116(arg1)
    print("OnSubFinish303116")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 3031)
    end)
end

function Quest3031:OnSubStart303125(arg1)
    print("OnSubStart303125")
end

function Quest3031:OnSubFinish303125(arg1)
    print("OnSubFinish303125")
end

function Quest3031:OnSubStart303102(arg1)
    print("OnSubStart303102")
    actorMgr:CreateActorWithPos("Q303102Trigger", "Actor/Gadget/Q303102Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303102_guide").pos, sceneData:GetDummyPoint(3, "Q303102_guide").rot, true, false, 3)
end

function Quest3031:OnSubFinish303102(arg1)
    print("OnSubFinish303102")
end

function Quest3031:OnSubStart303123(arg1)
    print("OnSubStart303123")
    this:CreateQuestNpc(arg1, npcs.Npc12931Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12947Data.id, 2)
    actorMgr:CreateActorWithPos("Q303123Trigger", "Actor/Gadget/Q303123Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303123_guide").pos, sceneData:GetDummyPoint(3, "Q303123_guide").rot, true, false, 3)
end

function Quest3031:OnSubFinish303123(arg1)
    print("OnSubFinish303123")
    this:SafeDestroyQuestNpc(npcs.Npc12947Data.alias, 3)
end

function Quest3031:OnSubStart303124(arg1)
    print("OnSubStart303124")
    this:CreateQuestNpc(arg1, npcs.Npc12931Data.id, 3)
    actorMgr:CreateActorWithPos("Q303124Trigger", "Actor/Gadget/Q303124Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q303124_N12931").pos, sceneData:GetDummyPoint(3, "Q303124_N12931").rot, true, false, 3)
end

function Quest3031:OnSubFinish303124(arg1)
    print("OnSubFinish303124")
end

function Quest3031:OnSubStart303103(arg1)
    print("OnSubStart303103")
    this:CreateQuestNpc(arg1, npcs.Npc1056Data.id, 1)
end

function Quest3031:OnSubFinish303103(arg1)
    print("OnSubFinish303103")
    this:SafeDestroyQuestNpc(npcs.Npc12931Data.alias, 3)
end

function Quest3031:OnSubStart303104(arg1)
    print("OnSubStart303104")
    actorMgr:CreateActorWithPos("Q303104Trigger", "Actor/Gadget/Q303104Trigger", 70900002, 0, sceneData:GetDummyPoint(1075, "Q303104_N1056").pos, sceneData:GetDummyPoint(1075, "Q303104_N1056").rot, true, false, 1075)
end

function Quest3031:OnSubFinish303104(arg1)
    print("OnSubFinish303104")
end

function Quest3031:OnSubStart303112(arg1)
    print("OnSubStart303112")
    this:CreateQuestNpc(arg1, npcs.Npc1056Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12947Data.id, 2)
end

function Quest3031:OnSubFinish303112(arg1)
    print("OnSubFinish303112")
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

function Quest3031:OnSubStart303111(arg1)
    print("OnSubStart303111")
    this:CreateQuestNpc(arg1, npcs.Npc12947Data.id, 2)
    actorMgr:CreateActorWithPos("Q303111Trigger", "Actor/Gadget/Q303111Trigger", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303111_N12947").pos, sceneData:GetDummyPoint(20169, "Q303111_N12947").rot, true, false, 20169)
end

function Quest3031:OnSubFinish303111(arg1)
    print("OnSubFinish303111")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 3031)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc12947Data.alias, 1075)
end

function Quest3031:OnSubStart303117(arg1)
    print("OnSubStart303117")
    actorMgr:CreateActorWithPos("Q303117Trigger", "Actor/Gadget/Q303117Trigger", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303117_guide").pos, sceneData:GetDummyPoint(20169, "Q303117_guide").rot, true, false, 20169)
end

function Quest3031:OnSubFinish303117(arg1)
    print("OnSubFinish303117")
    this:ClearNarratorTask()
end

function Quest3031:OnSubFailed303117(arg1)
    print("OnSubFailed303117")
    this:ClearNarratorTask()
end

function Quest3031:OnSubStart303118(arg1)
    print("OnSubStart303118")
    actorMgr:CreateActorWithPos("Q303118Trigger", "Actor/Gadget/Q303118Trigger", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303118_guide").pos, sceneData:GetDummyPoint(20169, "Q303118_guide").rot, true, false, 20169)
    actorMgr:CreateActorWithPos("Q303118Triggerchuansong", "Actor/Gadget/Q303118Triggerchuansong", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303118_guide_chuansong").pos, sceneData:GetDummyPoint(20169, "Q303118_guide_chuansong").rot, true, false, 20169)
end

function Quest3031:OnSubFinish303118(arg1)
    print("OnSubFinish303118")
    this:ActorDestroy("Q303118Triggerchuansong")
end

function Quest3031:OnSubFailed303118(arg1)
    print("OnSubFailed303118")
    this:ActorDestroy("Q303118Triggerchuansong")
    this:ActorDestroy("Q303118Trigger")
end

function Quest3031:OnSubStart303119(arg1)
    print("OnSubStart303119")
end

function Quest3031:OnSubFinish303119(arg1)
    print("OnSubFinish303119")
end

function Quest3031:OnSubStart303105(arg1)
    print("OnSubStart303105")
    actorMgr:CreateActorWithPos("Q303105Triggerchuansong", "Actor/Gadget/Q303105Triggerchuansong", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303119_guide").pos, sceneData:GetDummyPoint(20169, "Q303119_guide").rot, true, false, 20169)
    actorMgr:CreateActorWithPos("Q303105Triggerkaiche", "Actor/Gadget/Q303105Triggerkaiche", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303105_kaiche").pos, sceneData:GetDummyPoint(20169, "Q303105_kaiche").rot, true, false, 20169)
    actorMgr:CreateActorWithPos("Q303105Trigger", "Actor/Gadget/Q303105Trigger", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303120_guide").pos, sceneData:GetDummyPoint(20169, "Q303120_guide").rot, true, false, 20169)
end

function Quest3031:OnSubFinish303105(arg1)
    print("OnSubFinish303105")
    this:SafeDestroyQuestNpc(npcs.Npc12947Data.alias, 20169)
    this:ActorDestroy("Q303105Triggerchuansong")
end

function Quest3031:OnSubFailed303105(arg1)
    print("OnSubFailed303105")
    this:ClearNarratorTask()
    this:ActorDestroy("Q303105Triggerchuansong")
    this:ActorDestroy("Q303105Trigger")
    this:ActorDestroy("Q303105Triggerkaiche")
end

function Quest3031:OnSubStart303120(arg1)
    print("OnSubStart303120")
    actorMgr:CreateActorWithPos("Q303120Trigger", "Actor/Gadget/Q303120Trigger", 70900002, 0, sceneData:GetDummyPoint(20169, "Q303120_guide").pos, sceneData:GetDummyPoint(20169, "Q303120_guide").rot, true, false, 20169)
end

function Quest3031:OnSubFinish303120(arg1)
    print("OnSubFinish303120")
end

function Quest3031:OnSubFailed303120(arg1)
    print("OnSubFailed303120")
    this:ClearNarratorTask()
end

function Quest3031:OnSubStart303121(arg1)
    print("OnSubStart303121")
end

function Quest3031:OnSubFinish303121(arg1)
    print("OnSubFinish303121")
    this:ClearNarratorTask()
end

function Quest3031:OnSubStart303113(arg1)
    print("OnSubStart303113")
    if sceneData.currSceneID == 20169 then
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            globalActor:PlayerEnterDungeon(16, 1171, true, nil, 0)
        end, nil, nil, 0, false, true)
    end
end

function Quest3031:OnSubFinish303113(arg1)
    print("OnSubFinish303113")
end

function Quest3031:OnSubStart303106(arg1)
    print("OnSubStart303106")
    actorMgr:CreateActorWithPos("Q303106Trigger", "Actor/Gadget/Q303106Trigger", 70900002, 0, sceneData:GetDummyPoint(20170, "Q303106_N12947").pos, sceneData:GetDummyPoint(20170, "Q303106_N12947").rot, true, false, 20170)
end

function Quest3031:OnSubFinish303106(arg1)
    print("OnSubFinish303106")
    this:SafeDestroyQuestNpc(npcs.Npc12947Data.alias, 20170)
end

function Quest3031:OnSubFailed303106(arg1)
    print("OnSubFailed303106")
    this:ActorDestroy("Q303106Trigger")
end

function Quest3031:OnSubStart303122(arg1)
    print("OnSubStart303122")
end

function Quest3031:OnSubFinish303122(arg1)
    print("OnSubFinish303122")
end

function Quest3031:OnSubStart303114(arg1)
    print("OnSubStart303114")
    if sceneData.currSceneID == 20170 then
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            globalActor:PlayerEnterDungeon(17, 1172, true, nil, 0)
        end, nil, nil, 0, false, true)
    end
end

function Quest3031:OnSubFinish303114(arg1)
    print("OnSubFinish303114")
end

function Quest3031:OnSubStart303107(arg1)
    print("OnSubStart303107")
    actorMgr:CreateActorWithPos("Q303107Trigger", "Actor/Gadget/Q303107Trigger", 70900002, 0, sceneData:GetDummyPoint(20171, "Q303107_N12947").pos, sceneData:GetDummyPoint(20171, "Q303107_N12947").rot, true, false, 20171)
end

function Quest3031:OnSubFinish303107(arg1)
    print("OnSubFinish303107")
    this:SafeDestroyQuestNpc(npcs.Npc12947Data.alias, 20171)
end

function Quest3031:OnSubFailed303107(arg1)
    print("OnSubFailed303107")
    this:ActorDestroy("Q303107Trigger")
end

function Quest3031:OnSubStart303127(arg1)
    print("OnSubStart303127")
    actorMgr:CreateActorWithPos("Q303127Trigger", "Actor/Gadget/Q303127Trigger", 70900002, 0, sceneData:GetDummyPoint(20171, "Q303108_guide").pos, sceneData:GetDummyPoint(20171, "Q303108_guide").rot, true, false, 20171)
end

function Quest3031:OnSubFinish303127(arg1)
    print("OnSubFinish303127")
end

function Quest3031:OnSubStart303108(arg1)
    print("OnSubStart303108")
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest3031:OnSubFinish303108(arg1)
    print("OnSubFinish303108")
end

function Quest3031:OnSubFailed303108(arg1)
    print("OnSubFailed303108")
    this:ClearNarratorTask()
end

function Quest3031:OnSubStart303126(arg1)
    print("OnSubStart303126")
end

function Quest3031:OnSubFinish303126(arg1)
    print("OnSubFinish303126")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId06, nil, 3031)
    end)
end

function Quest3031:OnSubStart303109(arg1)
    print("OnSubStart303109")
    actorMgr:CreateActorWithPos("Q303109Trigger", "Actor/Gadget/Q303109Trigger", 70900002, 0, sceneData:GetDummyPoint(20171, "Q303109_T303109_N1056").pos, sceneData:GetDummyPoint(20171, "Q303109_T303109_N1056").rot, true, false, 20171)
end

function Quest3031:OnSubFinish303109(arg1)
    print("OnSubFinish303109")
    this:SafeDestroyQuestNpc(npcs.Npc1065Data.alias, 20171)
end

function Quest3031:OnSubStart303110(arg1)
    print("OnSubStart303110")
end

function Quest3031:OnSubFinish303110(arg1)
    print("OnSubFinish303110")
end

return Quest3031
