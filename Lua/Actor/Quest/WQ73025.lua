require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73025 = class("Quest73025", QuestActorProxy)
Quest73025.defaultAlias = "Quest73025"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest73025:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest73025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302520"] = self.OnSubStart7302520,
        ["7302521"] = self.OnSubStart7302521,
        ["7302501"] = self.OnSubStart7302501,
        ["7302502"] = self.OnSubStart7302502,
        ["7302503"] = self.OnSubStart7302503,
        ["7302522"] = self.OnSubStart7302522,
        ["7302523"] = self.OnSubStart7302523,
        ["7302524"] = self.OnSubStart7302524,
        ["7302512"] = self.OnSubStart7302512,
        ["7302504"] = self.OnSubStart7302504,
        ["7302516"] = self.OnSubStart7302516,
        ["7302505"] = self.OnSubStart7302505,
        ["7302532"] = self.OnSubStart7302532,
        ["7302517"] = self.OnSubStart7302517,
        ["7302525"] = self.OnSubStart7302525,
        ["7302506"] = self.OnSubStart7302506,
        ["7302530"] = self.OnSubStart7302530,
        ["7302513"] = self.OnSubStart7302513,
        ["7302518"] = self.OnSubStart7302518,
        ["7302507"] = self.OnSubStart7302507,
        ["7302508"] = self.OnSubStart7302508,
        ["7302509"] = self.OnSubStart7302509,
        ["7302531"] = self.OnSubStart7302531,
        ["7302526"] = self.OnSubStart7302526,
        ["7302510"] = self.OnSubStart7302510,
        ["7302527"] = self.OnSubStart7302527,
        ["7302528"] = self.OnSubStart7302528,
        ["7302529"] = self.OnSubStart7302529,
        ["7302511"] = self.OnSubStart7302511,
        ["7302514"] = self.OnSubStart7302514,
        ["7302519"] = self.OnSubStart7302519,
        ["7302515"] = self.OnSubStart7302515
    }
end

function Quest73025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302520"] = self.OnSubFinish7302520,
        ["7302521"] = self.OnSubFinish7302521,
        ["7302501"] = self.OnSubFinish7302501,
        ["7302502"] = self.OnSubFinish7302502,
        ["7302503"] = self.OnSubFinish7302503,
        ["7302522"] = self.OnSubFinish7302522,
        ["7302523"] = self.OnSubFinish7302523,
        ["7302524"] = self.OnSubFinish7302524,
        ["7302512"] = self.OnSubFinish7302512,
        ["7302504"] = self.OnSubFinish7302504,
        ["7302516"] = self.OnSubFinish7302516,
        ["7302505"] = self.OnSubFinish7302505,
        ["7302532"] = self.OnSubFinish7302532,
        ["7302517"] = self.OnSubFinish7302517,
        ["7302525"] = self.OnSubFinish7302525,
        ["7302506"] = self.OnSubFinish7302506,
        ["7302530"] = self.OnSubFinish7302530,
        ["7302513"] = self.OnSubFinish7302513,
        ["7302518"] = self.OnSubFinish7302518,
        ["7302507"] = self.OnSubFinish7302507,
        ["7302508"] = self.OnSubFinish7302508,
        ["7302509"] = self.OnSubFinish7302509,
        ["7302531"] = self.OnSubFinish7302531,
        ["7302526"] = self.OnSubFinish7302526,
        ["7302510"] = self.OnSubFinish7302510,
        ["7302527"] = self.OnSubFinish7302527,
        ["7302528"] = self.OnSubFinish7302528,
        ["7302529"] = self.OnSubFinish7302529,
        ["7302511"] = self.OnSubFinish7302511,
        ["7302514"] = self.OnSubFinish7302514,
        ["7302519"] = self.OnSubFinish7302519,
        ["7302515"] = self.OnSubFinish7302515
    }
end

function Quest73025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73025:Start()
    print("Start")
end

function Quest73025:OnDestroy()
    print("OnDestroy")
end

function Quest73025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73025:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73025:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73025:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73025:OnSubStart7302520(arg1)
    print("OnSubStart7302520")
    this:CreateQuestNpc(arg1, npcs.Npc20644Data.id, 1)
    this:NpcCreate(arg1, npcs.PaimonData.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest73025:OnSubFinish7302520(arg1)
    print("OnSubFinish7302520")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73025:OnSubStart7302521(arg1)
    print("OnSubStart7302521")
    this:DailyNpcSafeHideSelf(npcs.Npc4321Data.alias, 1, true)
end

function Quest73025:OnSubFinish7302521(arg1)
    print("OnSubFinish7302521")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20644Data.alias)
end

function Quest73025:OnSubStart7302501(arg1)
    print("OnSubStart7302501")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302501", "Actor/Gadget/Q73025Trigger_7302501", 70900002, 0, {x = -1112.934, y = 200.0, z = 2675.552}, {x = 0.0, y = 10.743, z = 0.0}, true, false, 3)
    this:NarratorOnlyTask(datas.NarratorTable_departborrowlyre, nil, "")
end

function Quest73025:OnSubFinish7302501(arg1)
    print("OnSubFinish7302501")
end

function Quest73025:OnSubStart7302502(arg1)
    print("OnSubStart7302502")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302502", "Actor/Gadget/Q73025Trigger_7302502", 70900002, 0, {x = -1045.454, y = 200.0, z = 2648.446}, {x = 0.0, y = 18.211, z = 0.0}, true, false, 3)
end

function Quest73025:OnSubFinish7302502(arg1)
    print("OnSubFinish7302502")
end

function Quest73025:OnSubStart7302503(arg1)
    print("OnSubStart7302503")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302503", "Actor/Gadget/Q73025Trigger_7302503", 70900002, 0, {x = -622.783, y = 200.0, z = 2813.089}, {x = 0.0, y = 29.708, z = 0.0}, true, false, 3)
end

function Quest73025:OnSubFinish7302503(arg1)
    print("OnSubFinish7302503")
end

function Quest73025:OnSubStart7302522(arg1)
    print("OnSubStart7302522")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302522", "Actor/Gadget/Q73025Trigger_7302522", 70900002, 0, {x = -416.351, y = 204.331, z = 3136.562}, {x = 0.0, y = 306.2, z = 0.0}, true, false, 3)
end

function Quest73025:OnSubFinish7302522(arg1)
    print("OnSubFinish7302522")
end

function Quest73025:OnSubStart7302523(arg1)
    print("OnSubStart7302523")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302523", "Actor/Gadget/Q73025Trigger_7302523", 70900002, 0, {x = -182.067, y = 243.707, z = 3172.498}, {x = 0.0, y = 353.003, z = 0.0}, true, false, 3)
end

function Quest73025:OnSubFinish7302523(arg1)
    print("OnSubFinish7302523")
end

function Quest73025:OnSubStart7302524(arg1)
    print("OnSubStart7302524")
end

function Quest73025:OnSubFinish7302524(arg1)
    print("OnSubFinish7302524")
end

function Quest73025:OnSubStart7302512(arg1)
    print("OnSubStart7302512")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302524_12", "Actor/Gadget/Q73025Trigger_7302524_12", 70900002, 0, {x = -195.606, y = 259.163, z = 3448.044}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73025:OnSubFinish7302512(arg1)
    print("OnSubFinish7302512")
end

function Quest73025:OnSubStart7302504(arg1)
    print("OnSubStart7302504")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302504_01big", "Actor/Gadget/Q73025Trigger_7302504_01big", 70900002, 0, {x = -195.606, y = 259.163, z = 3448.044}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q73025Trigger_7302504_02small", "Actor/Gadget/Q73025Trigger_7302504_02small", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302505_guide").pos, sceneData:GetDummyPoint(3, "Q7302505_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302504(arg1)
    print("OnSubFinish7302504")
end

function Quest73025:OnSubStart7302516(arg1)
    print("OnSubStart7302516")
    this:CreateQuestNpc(arg1, npcs.Npc20646Data.id, 1)
    this:NpcCreate(arg1, npcs.PaimonData.id, 2)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest73025:OnSubFinish7302516(arg1)
    print("OnSubFinish7302516")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
end

function Quest73025:OnSubStart7302505(arg1)
    print("OnSubStart7302505")
end

function Quest73025:OnSubFinish7302505(arg1)
    print("OnSubFinish7302505")
end

function Quest73025:OnSubStart7302532(arg1)
    print("OnSubStart7302532")
end

function Quest73025:OnSubFinish7302532(arg1)
    print("OnSubFinish7302532")
end

function Quest73025:OnSubStart7302517(arg1)
    print("OnSubStart7302517")
    this:NarratorOnlyTask(datas.NarratorTable_collectbegin, nil, "")
end

function Quest73025:OnSubFinish7302517(arg1)
    print("OnSubFinish7302517")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTask(datas.NarratorTable_collectend, nil, "")
        this:CallDelay(2, function(arg1)
            this:EnterSceneLookCamera({x = -201.9, y = 226.5, z = 3506.4}, 0, 1.5, false, false)
        end)
    end)
end

function Quest73025:OnSubStart7302525(arg1)
    print("OnSubStart7302525")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302525", "Actor/Gadget/Q73025Trigger_7302525", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302506_guide").pos, sceneData:GetDummyPoint(3, "Q7302506_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302525(arg1)
    print("OnSubFinish7302525")
end

function Quest73025:OnSubStart7302506(arg1)
    print("OnSubStart7302506")
end

function Quest73025:OnSubFinish7302506(arg1)
    print("OnSubFinish7302506")
    this:LevelLoadFinishSafeCall(function(arg1_2)
        globalActor:ChangeDay24Time(8, false)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapIdEmpty, 1)
    end)
end

function Quest73025:OnSubStart7302530(arg1)
    print("OnSubStart7302530")
end

function Quest73025:OnSubFinish7302530(arg1)
    print("OnSubFinish7302530")
end

function Quest73025:OnSubStart7302513(arg1)
    print("OnSubStart7302513")
end

function Quest73025:OnSubFinish7302513(arg1)
    print("OnSubFinish7302513")
end

function Quest73025:OnSubStart7302518(arg1)
    print("OnSubStart7302518")
    this:LevelLoadFinishSafeCall(function(arg1_2)
        this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
    end)
end

function Quest73025:OnSubFinish7302518(arg1)
    print("OnSubFinish7302518")
    this:NarratorOnlyTask(datas.NarratorTable_clean0_start, nil, "")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73025:OnSubStart7302507(arg1)
    print("OnSubStart7302507")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302507", "Actor/Gadget/Q73025Trigger_7302507", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302507_guide").pos, sceneData:GetDummyPoint(3, "Q7302507_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302507(arg1)
    print("OnSubFinish7302507")
    this:NarratorOnlyTask(datas.NarratorTable_clean1_stone2, function(arg1)
        if this:GetSubQuestState(7302510) == 2 then
            this:NarratorOnlyTask(datas.NarratorTable_clean3_huohua, nil, "")
        end
    end, "")
end

function Quest73025:OnSubStart7302508(arg1)
    print("OnSubStart7302508")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302508", "Actor/Gadget/Q73025Trigger_7302508", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302508_guide").pos, sceneData:GetDummyPoint(3, "Q7302508_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302508(arg1)
    print("OnSubFinish7302508")
    if this:GetSubQuestState(7302509) == 3 then
        this:NarratorOnlyTask(datas.NarratorTable_clean2_mushroom3, function(arg1)
            if this:GetSubQuestState(7302510) == 2 then
                this:NarratorOnlyTask(datas.NarratorTable_clean3_huohua, nil, "")
            end
        end, "")
    end
end

function Quest73025:OnSubStart7302509(arg1)
    print("OnSubStart7302509")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302509", "Actor/Gadget/Q73025Trigger_7302509", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302509_guide").pos, sceneData:GetDummyPoint(3, "Q7302509_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302509(arg1)
    print("OnSubFinish7302509")
    if this:GetSubQuestState(7302508) == 3 then
        this:NarratorOnlyTask(datas.NarratorTable_clean2_mushroom3, function(arg1)
            if this:GetSubQuestState(7302510) == 2 then
                this:NarratorOnlyTask(datas.NarratorTable_clean3_huohua, nil, "")
            end
        end, "")
    end
end

function Quest73025:OnSubStart7302531(arg1)
    print("OnSubStart7302531")
end

function Quest73025:OnSubFinish7302531(arg1)
    print("OnSubFinish7302531")
end

function Quest73025:OnSubStart7302526(arg1)
    print("OnSubStart7302526")
end

function Quest73025:OnSubFinish7302526(arg1)
    print("OnSubFinish7302526")
end

function Quest73025:OnSubStart7302510(arg1)
    print("OnSubStart7302510")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302510", "Actor/Gadget/Q73025Trigger_7302510", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302510_guide").pos, sceneData:GetDummyPoint(3, "Q7302510_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302510(arg1)
    print("OnSubFinish7302510")
end

function Quest73025:OnSubStart7302527(arg1)
    print("OnSubStart7302527")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73025:OnSubFinish7302527(arg1)
    print("OnSubFinish7302527")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73025:OnSubStart7302528(arg1)
    print("OnSubStart7302528")
end

function Quest73025:OnSubFinish7302528(arg1)
    print("OnSubFinish7302528")
    this:NarratorOnlyTask(datas.NarratorTable_clean3_huohua2, nil, "")
end

function Quest73025:OnSubStart7302529(arg1)
    print("OnSubStart7302529")
    actorMgr:CreateActorWithPos("Q73025Trigger_7302529", "Actor/Gadget/Q73025Trigger_7302529", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302506_guide").pos, sceneData:GetDummyPoint(3, "Q7302506_guide").rot, true, false, 3)
end

function Quest73025:OnSubFinish7302529(arg1)
    print("OnSubFinish7302529")
end

function Quest73025:OnSubStart7302511(arg1)
    print("OnSubStart7302511")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
end

function Quest73025:OnSubFinish7302511(arg1)
    print("OnSubFinish7302511")
    this:NarratorOnlyTask(datas.NarratorTable_clean0_end, nil, "")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73025:OnSubStart7302514(arg1)
    print("OnSubStart7302514")
end

function Quest73025:OnSubFinish7302514(arg1)
    print("OnSubFinish7302514")
end

function Quest73025:OnSubStart7302519(arg1)
    print("OnSubStart7302519")
    this:LevelLoadFinishSafeCall(function(arg1_2)
        this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20646Data.id, 1, npcs.Npc20646Data.alias)
        this:CreateQuestNpc(arg1, npcs.Npc20777Data.id, 2)
        this:CreateQuestNpc(arg1, npcs.Npc20656Data.id, 3)
        this:CreateQuestNpc(arg1, npcs.Npc20816Data.id, 4)
        this:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 5)
        this:CreateQuestNpc(arg1, npcs.Npc20649Data.id, 6)
        this:CreateQuestNpc(arg1, npcs.Npc4211Data.id, 7)
        this:CreateQuestNpc(arg1, npcs.Npc4230Data.id, 8)
        this:CreateQuestNpc(arg1, npcs.Npc20716Data.id, 9)
        this:CreateQuestNpc(arg1, npcs.Npc20714Data.id, 10)
        this:CreateQuestNpc(arg1, npcs.Npc20715Data.id, 11)
        this:CreateQuestNpc(arg1, npcs.Npc4210Data.id, 12)
        this:CreateQuestNpc(arg1, npcs.Npc4212Data.id, 13)
    end)
end

function Quest73025:OnSubFinish7302519(arg1)
    print("OnSubFinish7302519")
    this:NarratorOnlyTask(datas.NarratorTable_clean0_end2, nil, "")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20646Data.alias)
end

function Quest73025:OnSubStart7302515(arg1)
    print("OnSubStart7302515")
    this:CreateQuestNpc(arg1, npcs.Npc20648Data.id, 2)
end

function Quest73025:OnSubFinish7302515(arg1)
    print("OnSubFinish7302515")
    this:NarratorOnlyTask(datas.NarratorTable_questfinish, nil, "")
    this:SafeDestroyQuestNpc(npcs.Npc20646Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20648Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20777Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20656Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20816Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20578Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20649Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4230Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20716Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20714Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20715Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4212Data.alias, 3)
end

return Quest73025
