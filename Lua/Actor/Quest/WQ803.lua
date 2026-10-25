require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest803 = class("Quest803", QuestActorProxy)
Quest803.defaultAlias = "Quest803"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest803:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest803:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["80301"] = self.OnSubStart80301,
        ["80302"] = self.OnSubStart80302,
        ["80303"] = self.OnSubStart80303,
        ["80304"] = self.OnSubStart80304,
        ["80305"] = self.OnSubStart80305,
        ["80306"] = self.OnSubStart80306,
        ["80307"] = self.OnSubStart80307,
        ["80308"] = self.OnSubStart80308,
        ["80309"] = self.OnSubStart80309,
        ["80310"] = self.OnSubStart80310,
        ["80311"] = self.OnSubStart80311,
        ["80312"] = self.OnSubStart80312,
        ["80313"] = self.OnSubStart80313,
        ["80314"] = self.OnSubStart80314,
        ["80315"] = self.OnSubStart80315,
        ["80316"] = self.OnSubStart80316,
        ["80317"] = self.OnSubStart80317,
        ["80318"] = self.OnSubStart80318,
        ["80319"] = self.OnSubStart80319,
        ["80320"] = self.OnSubStart80320,
        ["80321"] = self.OnSubStart80321,
        ["80322"] = self.OnSubStart80322,
        ["80323"] = self.OnSubStart80323,
        ["80324"] = self.OnSubStart80324,
        ["80325"] = self.OnSubStart80325,
        ["80326"] = self.OnSubStart80326,
        ["80327"] = self.OnSubStart80327,
        ["80328"] = self.OnSubStart80328,
        ["80329"] = self.OnSubStart80329,
        ["80330"] = self.OnSubStart80330,
        ["80331"] = self.OnSubStart80331,
        ["80332"] = self.OnSubStart80332,
        ["80333"] = self.OnSubStart80333,
        ["80334"] = self.OnSubStart80334,
        ["80335"] = self.OnSubStart80335,
        ["80336"] = self.OnSubStart80336,
        ["80337"] = self.OnSubStart80337,
        ["80338"] = self.OnSubStart80338,
        ["80339"] = self.OnSubStart80339,
        ["80340"] = self.OnSubStart80340,
        ["80341"] = self.OnSubStart80341
    }
end

function Quest803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["80301"] = self.OnSubFinish80301,
        ["80302"] = self.OnSubFinish80302,
        ["80303"] = self.OnSubFinish80303,
        ["80304"] = self.OnSubFinish80304,
        ["80305"] = self.OnSubFinish80305,
        ["80306"] = self.OnSubFinish80306,
        ["80307"] = self.OnSubFinish80307,
        ["80308"] = self.OnSubFinish80308,
        ["80309"] = self.OnSubFinish80309,
        ["80310"] = self.OnSubFinish80310,
        ["80311"] = self.OnSubFinish80311,
        ["80312"] = self.OnSubFinish80312,
        ["80313"] = self.OnSubFinish80313,
        ["80314"] = self.OnSubFinish80314,
        ["80315"] = self.OnSubFinish80315,
        ["80316"] = self.OnSubFinish80316,
        ["80317"] = self.OnSubFinish80317,
        ["80318"] = self.OnSubFinish80318,
        ["80319"] = self.OnSubFinish80319,
        ["80320"] = self.OnSubFinish80320,
        ["80321"] = self.OnSubFinish80321,
        ["80322"] = self.OnSubFinish80322,
        ["80323"] = self.OnSubFinish80323,
        ["80324"] = self.OnSubFinish80324,
        ["80325"] = self.OnSubFinish80325,
        ["80326"] = self.OnSubFinish80326,
        ["80327"] = self.OnSubFinish80327,
        ["80328"] = self.OnSubFinish80328,
        ["80329"] = self.OnSubFinish80329,
        ["80330"] = self.OnSubFinish80330,
        ["80331"] = self.OnSubFinish80331,
        ["80332"] = self.OnSubFinish80332,
        ["80333"] = self.OnSubFinish80333,
        ["80334"] = self.OnSubFinish80334,
        ["80335"] = self.OnSubFinish80335,
        ["80336"] = self.OnSubFinish80336,
        ["80337"] = self.OnSubFinish80337,
        ["80338"] = self.OnSubFinish80338,
        ["80339"] = self.OnSubFinish80339,
        ["80340"] = self.OnSubFinish80340,
        ["80341"] = self.OnSubFinish80341
    }
end

function Quest803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest803:Start()
    print("Start")
end

function Quest803:OnDestroy()
    print("OnDestroy")
end

function Quest803:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest803:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest803:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest803:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 80339 then
        this:PlayerEnterDungeonWithData(9, 1165, 80339, 1, datas.PlayerEnterDungeonData, nil, nil)
    elseif arg1 == 80340 then
        this:TransmitPlayerWithQuestIdByData(80340, 1, datas.TransmitData)
    end
end

function Quest803:OnSubStart80301(arg1)
    print("OnSubStart80301")
end

function Quest803:OnSubFinish80301(arg1)
    print("OnSubFinish80301")
end

function Quest803:OnSubStart80302(arg1)
    print("OnSubStart80302")
    this:TransmitPlayerById(arg1, 1)
end

function Quest803:OnSubFinish80302(arg1)
    print("OnSubFinish80302")
end

function Quest803:OnSubStart80303(arg1)
    print("OnSubStart80303")
end

function Quest803:OnSubFinish80303(arg1)
    print("OnSubFinish80303")
end

function Quest803:OnSubStart80304(arg1)
    print("OnSubStart80304")
end

function Quest803:OnSubFinish80304(arg1)
    print("OnSubFinish80304")
end

function Quest803:OnSubStart80305(arg1)
    print("OnSubStart80305")
end

function Quest803:OnSubFinish80305(arg1)
    print("OnSubFinish80305")
end

function Quest803:OnSubStart80306(arg1)
    print("OnSubStart80306")
end

function Quest803:OnSubFinish80306(arg1)
    print("OnSubFinish80306")
end

function Quest803:OnSubStart80307(arg1)
    print("OnSubStart80307")
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest803:OnSubFinish80307(arg1)
    print("OnSubFinish80307")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest803:OnSubStart80308(arg1)
    print("OnSubStart80308")
    this:EnablePlayerInputByQuest(false)
end

function Quest803:OnSubFinish80308(arg1)
    print("OnSubFinish80308")
    this:EnablePlayerInputByQuest(true)
end

function Quest803:OnSubStart80309(arg1)
    print("OnSubStart80309")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
end

function Quest803:OnSubFinish80309(arg1)
    print("OnSubFinish80309")
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest803:OnSubStart80310(arg1)
    print("OnSubStart80310")
    globalActor:ChangeDay24TimeClock(24, 1, 2, false)
end

function Quest803:OnSubFinish80310(arg1)
    print("OnSubFinish80310")
end

function Quest803:OnSubStart80311(arg1)
    print("OnSubStart80311")
    this:NarratorOnlyTaskByDataSpecifyingResumeReminder(datas.Q80311_NarratorWithId, nil, nil, 1003)
end

function Quest803:OnSubFinish80311(arg1)
    print("OnSubFinish80311")
end

function Quest803:OnSubStart80312(arg1)
    print("OnSubStart80312")
    this:CreateQuestNpc(arg1, npcs.Npc1025Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc4019Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1026Data.id, 0)
    this:CreateNpcAttachLocalGadget(1053, 803, 71700445, "2", "WeaponR", {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, nil, nil, false)
    this:CreateNpcAttachLocalGadget(4019, 803, 71700445, "4", "WeaponR", {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1025Data.alias):DoFreeStyleWithSuite(133002, true, nil, true, true, false, false, "mirror")
end

function Quest803:OnSubFinish80312(arg1)
    print("OnSubFinish80312")
    this:RemoveLocalGadget(71700445, "1")
    this:RemoveLocalGadget(71700445, "2")
    this:RemoveLocalGadget(71700445, "3")
    this:RemoveLocalGadget(71700445, "4")
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
end

function Quest803:OnSubStart80313(arg1)
    print("OnSubStart80313")
end

function Quest803:OnSubFinish80313(arg1)
    print("OnSubFinish80313")
end

function Quest803:OnSubStart80314(arg1)
    print("OnSubStart80314")
    this:CreateQuestNpc(arg1, npcs.Npc1063Data.id, 0)
end

function Quest803:OnSubFinish80314(arg1)
    print("OnSubFinish80314")
    this:SafeDestroyQuestNpc(npcs.Npc1063Data.alias, 3)
end

function Quest803:OnSubStart80315(arg1)
    print("OnSubStart80315")
end

function Quest803:OnSubFinish80315(arg1)
    print("OnSubFinish80315")
end

function Quest803:OnSubStart80316(arg1)
    print("OnSubStart80316")
end

function Quest803:OnSubFinish80316(arg1)
    print("OnSubFinish80316")
end

function Quest803:OnSubStart80317(arg1)
    print("OnSubStart80317")
    this:CreateQuestNpc(arg1, npcs.Npc1045Data.id, 0)
end

function Quest803:OnSubFinish80317(arg1)
    print("OnSubFinish80317")
    this:SafeDestroyQuestNpc(npcs.Npc1045Data.alias, 3)
end

function Quest803:OnSubStart80318(arg1)
    print("OnSubStart80318")
end

function Quest803:OnSubFinish80318(arg1)
    print("OnSubFinish80318")
end

function Quest803:OnSubStart80319(arg1)
    print("OnSubStart80319")
    this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 0)
end

function Quest803:OnSubFinish80319(arg1)
    print("OnSubFinish80319")
end

function Quest803:OnSubStart80320(arg1)
    print("OnSubStart80320")
end

function Quest803:OnSubFinish80320(arg1)
    print("OnSubFinish80320")
end

function Quest803:OnSubStart80321(arg1)
    print("OnSubStart80321")
end

function Quest803:OnSubFinish80321(arg1)
    print("OnSubFinish80321")
end

function Quest803:OnSubStart80322(arg1)
    print("OnSubStart80322")
end

function Quest803:OnSubFinish80322(arg1)
    print("OnSubFinish80322")
end

function Quest803:OnSubStart80323(arg1)
    print("OnSubStart80323")
end

function Quest803:OnSubFinish80323(arg1)
    print("OnSubFinish80323")
end

function Quest803:OnSubStart80324(arg1)
    print("OnSubStart80324")
end

function Quest803:OnSubFinish80324(arg1)
    print("OnSubFinish80324")
end

function Quest803:OnSubStart80325(arg1)
    print("OnSubStart80325")
end

function Quest803:OnSubFinish80325(arg1)
    print("OnSubFinish80325")
end

function Quest803:OnSubStart80326(arg1)
    print("OnSubStart80326")
end

function Quest803:OnSubFinish80326(arg1)
    print("OnSubFinish80326")
    self:SetWeather("BigWorld/Weather_Storm")
end

function Quest803:OnSubStart80327(arg1)
    print("OnSubStart80327")
end

function Quest803:OnSubFinish80327(arg1)
    print("OnSubFinish80327")
    self:CancelWeather()
end

function Quest803:OnSubStart80328(arg1)
    print("OnSubStart80328")
    this:CreateQuestNpcWithTriggerBlackEx("Q80328Trigger28", 80328, 1032, 0, 5, 0.5, 1, 0.5, 1)
end

function Quest803:OnSubFinish80328(arg1)
    print("OnSubFinish80328")
end

function Quest803:OnSubStart80329(arg1)
    print("OnSubStart80329")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
    this:CallDelayByQuest("Test001", 5, function(arg1)
        print("\229\143\150\230\182\136\229\187\182\232\191\159\230\137\167\232\161\140\229\164\177\232\180\165~")
    end)
end

function Quest803:OnSubFinish80329(arg1)
    print("OnSubFinish80329")
    this:UnCallDelayByQuest("Test001")
    this:TransmitPlayerByQuestId(80329, 1)
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest803:OnSubStart80330(arg1)
    print("OnSubStart80330")
end

function Quest803:OnSubFinish80330(arg1)
    print("OnSubFinish80330")
end

function Quest803:OnSubStart80331(arg1)
    print("OnSubStart80331")
end

function Quest803:OnSubFinish80331(arg1)
    print("OnSubFinish80331")
end

function Quest803:OnSubStart80332(arg1)
    print("OnSubStart80332")
end

function Quest803:OnSubFinish80332(arg1)
    print("OnSubFinish80332")
end

function Quest803:OnSubStart80333(arg1)
    print("OnSubStart80333")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1025Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1026Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1025Data.alias):SetPlayerNpcEnergyType(1)
    this:GetQuestNpcActor(npcs.Npc1026Data.alias):SetPlayerNpcEnergyType(5)
end

function Quest803:OnSubFinish80333(arg1)
    print("OnSubFinish80333")
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
end

function Quest803:OnSubStart80334(arg1)
    print("OnSubStart80334")
    actorMgr:CreateActorWithPos("Q80334_TriggerIn", "Actor/Gadget/Q80334_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(3, "Npc1525Route1_2").pos, sceneData:GetDummyPoint(3, "Npc1525Route1_2").rot, true, false, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitWithUIAndTextMapData)
end

function Quest803:OnSubFinish80334(arg1)
    print("OnSubFinish80334")
end

function Quest803:OnSubStart80335(arg1)
    print("OnSubStart80335")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
    this:NpcRunToRouteTask(this:GetQuestNpcActor(npcs.AmborData.alias, 803), datas.Q80335_RoutePointsData)
end

function Quest803:OnSubFinish80335(arg1)
    print("OnSubFinish80335")
end

function Quest803:OnSubStart80336(arg1)
    print("OnSubStart80336")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
end

function Quest803:OnSubFinish80336(arg1)
    print("OnSubFinish80336")
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest803:OnSubStart80337(arg1)
    print("OnSubStart80337")
    this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
    this:SetSceneLightState(1086001, 1086001, 3, TweenEaseType.Linear)
    actorMgr:CreateActorWithPos("Q80337_TriggerIn", "Actor/Gadget/Q80337_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(3, "Q371WendyFootPrint3").pos, sceneData:GetDummyPoint(3, "Q371WendyFootPrint3").rot, true, false, 3)
end

function Quest803:OnSubFinish80337(arg1)
    print("OnSubFinish80337")
    this:ResetSceneLightState(1086001)
    this:TransmitPlayerByData(arg1, 1, datas.Q80337_TransmitData_WithDialog)
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
end

function Quest803:OnSubStart80338(arg1)
    print("OnSubStart80338")
end

function Quest803:OnSubFinish80338(arg1)
    print("OnSubFinish80338")
end

function Quest803:OnSubStart80339(arg1)
    print("OnSubStart80339")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    actorMgr:CreateActorWithPos("Q80339_TriggerIn", "Actor/Gadget/Q80339_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(20164, "Q302818_N1056").pos, sceneData:GetDummyPoint(20164, "Q302818_N1056").rot, true, false, 20164)
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", true, 3, false)
    actorUtils.SetLevelQuestDialogEnableState(false)
end

function Quest803:OnSubFinish80339(arg1)
    print("OnSubFinish80339")
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 20164)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect01", false, 3, false)
    actorUtils.SetLevelQuestDialogEnableState(true)
end

function Quest803:OnSubStart80340(arg1)
    print("OnSubStart80340")
    this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
    actorMgr:CreateActorWithPos("Q80340_TriggerIn", "Actor/Gadget/Q80340_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(3, "Q357Wind7").pos, sceneData:GetDummyPoint(3, "Q357Wind7").rot, true, false, 3)
end

function Quest803:OnSubFinish80340(arg1)
    print("OnSubFinish80340")
    this:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest803:OnSubStart80341(arg1)
    print("OnSubStart80341")
end

function Quest803:OnSubFinish80341(arg1)
    print("OnSubFinish80341")
    this:CreateQuestOrphanNpc(arg1, npcs.AmborData.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
end

return Quest803
