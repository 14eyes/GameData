require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73049 = class("Quest73049", QuestActorProxy)
Quest73049.defaultAlias = "Quest73049"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73049:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304929"] = self.OnSubStart7304929,
        ["7304930"] = self.OnSubStart7304930,
        ["7304931"] = self.OnSubStart7304931,
        ["7304932"] = self.OnSubStart7304932,
        ["7304933"] = self.OnSubStart7304933,
        ["7304934"] = self.OnSubStart7304934,
        ["7304935"] = self.OnSubStart7304935,
        ["7304936"] = self.OnSubStart7304936,
        ["7304901"] = self.OnSubStart7304901,
        ["7304902"] = self.OnSubStart7304902,
        ["7304903"] = self.OnSubStart7304903,
        ["7304904"] = self.OnSubStart7304904,
        ["7304905"] = self.OnSubStart7304905,
        ["7304908"] = self.OnSubStart7304908,
        ["7304909"] = self.OnSubStart7304909,
        ["7304910"] = self.OnSubStart7304910,
        ["7304911"] = self.OnSubStart7304911,
        ["7304912"] = self.OnSubStart7304912,
        ["7304913"] = self.OnSubStart7304913,
        ["7304914"] = self.OnSubStart7304914,
        ["7304915"] = self.OnSubStart7304915,
        ["7304916"] = self.OnSubStart7304916,
        ["7304917"] = self.OnSubStart7304917,
        ["7304927"] = self.OnSubStart7304927,
        ["7304928"] = self.OnSubStart7304928,
        ["7304920"] = self.OnSubStart7304920,
        ["7304918"] = self.OnSubStart7304918,
        ["7304919"] = self.OnSubStart7304919,
        ["7304921"] = self.OnSubStart7304921,
        ["7304922"] = self.OnSubStart7304922,
        ["7304923"] = self.OnSubStart7304923,
        ["7304906"] = self.OnSubStart7304906,
        ["7304924"] = self.OnSubStart7304924,
        ["7304925"] = self.OnSubStart7304925,
        ["7304926"] = self.OnSubStart7304926,
        ["7304907"] = self.OnSubStart7304907
    }
end

function Quest73049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304929"] = self.OnSubFinish7304929,
        ["7304930"] = self.OnSubFinish7304930,
        ["7304931"] = self.OnSubFinish7304931,
        ["7304932"] = self.OnSubFinish7304932,
        ["7304933"] = self.OnSubFinish7304933,
        ["7304934"] = self.OnSubFinish7304934,
        ["7304935"] = self.OnSubFinish7304935,
        ["7304936"] = self.OnSubFinish7304936,
        ["7304901"] = self.OnSubFinish7304901,
        ["7304902"] = self.OnSubFinish7304902,
        ["7304903"] = self.OnSubFinish7304903,
        ["7304904"] = self.OnSubFinish7304904,
        ["7304905"] = self.OnSubFinish7304905,
        ["7304908"] = self.OnSubFinish7304908,
        ["7304909"] = self.OnSubFinish7304909,
        ["7304910"] = self.OnSubFinish7304910,
        ["7304911"] = self.OnSubFinish7304911,
        ["7304912"] = self.OnSubFinish7304912,
        ["7304913"] = self.OnSubFinish7304913,
        ["7304914"] = self.OnSubFinish7304914,
        ["7304915"] = self.OnSubFinish7304915,
        ["7304916"] = self.OnSubFinish7304916,
        ["7304917"] = self.OnSubFinish7304917,
        ["7304927"] = self.OnSubFinish7304927,
        ["7304928"] = self.OnSubFinish7304928,
        ["7304920"] = self.OnSubFinish7304920,
        ["7304918"] = self.OnSubFinish7304918,
        ["7304919"] = self.OnSubFinish7304919,
        ["7304921"] = self.OnSubFinish7304921,
        ["7304922"] = self.OnSubFinish7304922,
        ["7304923"] = self.OnSubFinish7304923,
        ["7304906"] = self.OnSubFinish7304906,
        ["7304924"] = self.OnSubFinish7304924,
        ["7304925"] = self.OnSubFinish7304925,
        ["7304926"] = self.OnSubFinish7304926,
        ["7304907"] = self.OnSubFinish7304907
    }
end

function Quest73049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73049:Start()
    print("Start")
end

function Quest73049:OnDestroy()
    print("OnDestroy")
end

function Quest73049:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73049:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73049:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73049:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73049:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73049:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73049:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73049:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 99 then
        globalActor:SpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:SpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:SpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    elseif arg1 == 88 then
        self:ActionSafeCall(function(arg1)
            globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
            globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
            globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
            globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
        end)
    end

    if arg1 == 7304900 then
        print("showlikingbar")
        self:ShowQuestLikingBar(73049, 20713, 100, false, "WILL_EXP_NAME")
        emition = 100
    elseif arg1 == 7304901 then
        emition = emition - 30
        self:UpdateQuestLikingBar(emition, true, "WILL_LEVEL_DOWN")
    elseif arg1 == 7304902 then
        emition = emition - 30
        self:UpdateQuestLikingBar(emition, true, "WILL_LEVEL_DOWN")
    elseif arg1 == 7304903 then
        emition = emition - 40
        self:UpdateQuestLikingBar(emition, true, "WILL_LEVEL_DOWN")
    elseif arg1 == 7304904 then
        self:HideQuestLikingBar()
        if emition <= 0 then
            actorUtils.FinishQuestID(false, 7304917)
        else
            if 0 < emition then
                self:HideQuestLikingBar()
                actorUtils.FinishQuestID(true, 7304917)
            end
        end
    end
end

function Quest73049:OnSubStart7304929(arg1)
    print("OnSubStart7304929")
end

function Quest73049:OnSubFinish7304929(arg1)
    print("OnSubFinish7304929")
end

function Quest73049:OnSubStart7304930(arg1)
    print("OnSubStart7304930")
end

function Quest73049:OnSubFinish7304930(arg1)
    print("OnSubFinish7304930")
end

function Quest73049:OnSubStart7304931(arg1)
    print("OnSubStart7304931")
end

function Quest73049:OnSubFinish7304931(arg1)
    print("OnSubFinish7304931")
end

function Quest73049:OnSubStart7304932(arg1)
    print("OnSubStart7304932")
end

function Quest73049:OnSubFinish7304932(arg1)
    print("OnSubFinish7304932")
end

function Quest73049:OnSubStart7304933(arg1)
    print("OnSubStart7304933")
end

function Quest73049:OnSubFinish7304933(arg1)
    print("OnSubFinish7304933")
end

function Quest73049:OnSubStart7304934(arg1)
    print("OnSubStart7304934")
end

function Quest73049:OnSubFinish7304934(arg1)
    print("OnSubFinish7304934")
end

function Quest73049:OnSubStart7304935(arg1)
    print("OnSubStart7304935")
end

function Quest73049:OnSubFinish7304935(arg1)
    print("OnSubFinish7304935")
end

function Quest73049:OnSubStart7304936(arg1)
    print("OnSubStart7304936")
end

function Quest73049:OnSubFinish7304936(arg1)
    print("OnSubFinish7304936")
end

function Quest73049:OnSubStart7304901(arg1)
    print("OnSubStart7304901")
end

function Quest73049:OnSubFinish7304901(arg1)
    print("OnSubFinish7304901")
end

function Quest73049:OnSubStart7304902(arg1)
    print("OnSubStart7304902")
    self:CreateQuestNpc(arg1, npcs.Npc20712Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20713Data.id, 2)
    actorMgr:CreateActorWithPos("Q7304902Trigger", "Actor/Gadget/Q7304902Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7304902").pos, sceneData:GetDummyPoint(3, "guide_Q7304902").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304902(arg1)
    print("OnSubFinish7304902")
end

function Quest73049:OnSubStart7304903(arg1)
    print("OnSubStart7304903")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20712Data.id, 1, npcs.Npc20712Data.alias)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20713Data.id, 2)
end

function Quest73049:OnSubFinish7304903(arg1)
    print("OnSubFinish7304903")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20712Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20713Data.alias)
end

function Quest73049:OnSubStart7304904(arg1)
    print("OnSubStart7304904")
    self:NarratorOnlyTask(datas.fenweikaiche, nil, "")
end

function Quest73049:OnSubFinish7304904(arg1)
    print("OnSubFinish7304904")
end

function Quest73049:OnSubStart7304905(arg1)
    print("OnSubStart7304905")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20712Data.id, 1, npcs.Npc20712Data.alias)
end

function Quest73049:OnSubFinish7304905(arg1)
    print("OnSubFinish7304905")
end

function Quest73049:OnSubStart7304908(arg1)
    print("OnSubStart7304908")
    self:CreateQuestNpc(arg1, npcs.Npc20712Data.id, 1)
    actorMgr:CreateActorWithPos("Q7304908Trigger", "Actor/Gadget/Q7304908Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7304908").pos, sceneData:GetDummyPoint(3, "guide_Q7304908").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304908(arg1)
    print("OnSubFinish7304908")
    self:SafeDestroyQuestNpc(npcs.Npc20712Data.alias, 3)
end

function Quest73049:OnSubStart7304909(arg1)
    print("OnSubStart7304909")
end

function Quest73049:OnSubFinish7304909(arg1)
    print("OnSubFinish7304909")
end

function Quest73049:OnSubStart7304910(arg1)
    print("OnSubStart7304910")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20712Data.id, 1, npcs.Npc20712Data.alias)
end

function Quest73049:OnSubFinish7304910(arg1)
    print("OnSubFinish7304910")
end

function Quest73049:OnSubStart7304911(arg1)
    print("OnSubStart7304911")
    self:CreateQuestNpc(arg1, npcs.Npc20712Data.id, 1)
    actorMgr:CreateActorWithPos("Q7304911Trigger", "Actor/Gadget/Q7304911Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7304911").pos, sceneData:GetDummyPoint(3, "guide_Q7304911").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304911(arg1)
    print("OnSubFinish7304911")
    self:SafeDestroyQuestNpc(npcs.Npc20712Data.alias, 3)
end

function Quest73049:OnSubStart7304912(arg1)
    print("OnSubStart7304912")
end

function Quest73049:OnSubFinish7304912(arg1)
    print("OnSubFinish7304912")
end

function Quest73049:OnSubStart7304913(arg1)
    print("OnSubStart7304913")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20712Data.id, 1, npcs.Npc20712Data.alias)
end

function Quest73049:OnSubFinish7304913(arg1)
    print("OnSubFinish7304913")
    self:SafeDestroyQuestNpc(npcs.Npc20712Data.alias, 3)
end

function Quest73049:OnSubStart7304914(arg1)
    print("OnSubStart7304914")
    actorMgr:CreateActorWithPos("Q7304914Trigger", "Actor/Gadget/Q7304914Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7304914").pos, sceneData:GetDummyPoint(3, "guide_Q7304914").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304914(arg1)
    print("OnSubFinish7304914")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_dujin)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q7304916_N20713").pos, 1, 2, true, false)
end

function Quest73049:OnSubStart7304915(arg1)
    print("OnSubStart7304915")
end

function Quest73049:OnSubFinish7304915(arg1)
    print("OnSubFinish7304915")
end

function Quest73049:OnSubStart7304916(arg1)
    print("OnSubStart7304916")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20713Data.id, 1, npcs.Npc20713Data.alias)
end

function Quest73049:OnSubFinish7304916(arg1)
    print("OnSubFinish7304916")
end

function Quest73049:OnSubStart7304917(arg1)
    print("OnSubStart7304917")
    self:RequestInteraction(npcs.Npc20713Data.alias)
end

function Quest73049:OnSubFinish7304917(arg1)
    print("OnSubFinish7304917")
end

function Quest73049:OnSubStart7304927(arg1)
    print("OnSubStart7304927")
    self:RequestInteraction(npcs.Npc20713Data.alias)
end

function Quest73049:OnSubFinish7304927(arg1)
    print("OnSubFinish7304927")
    self:SafeDestroyQuestNpc(npcs.Npc20713Data.alias, 3)
end

function Quest73049:OnSubStart7304928(arg1)
    print("OnSubStart7304928")
    self:RequestInteraction(npcs.Npc20713Data.alias)
end

function Quest73049:OnSubFinish7304928(arg1)
    print("OnSubFinish7304928")
    self:SafeDestroyQuestNpc(npcs.Npc20713Data.alias, 3)
end

function Quest73049:OnSubStart7304920(arg1)
    print("OnSubStart7304920")
end

function Quest73049:OnSubFinish7304920(arg1)
    print("OnSubFinish7304920")
end

function Quest73049:OnSubStart7304918(arg1)
    print("OnSubStart7304918")
    actorMgr:CreateActorWithPos("Q7304918Trigger", "Actor/Gadget/Q7304918Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7304918").pos, sceneData:GetDummyPoint(3, "guide_Q7304918").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304918(arg1)
    print("OnSubFinish7304918")
end

function Quest73049:OnSubStart7304919(arg1)
    print("OnSubStart7304919")
end

function Quest73049:OnSubFinish7304919(arg1)
    print("OnSubFinish7304919")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable6_light, nil, "")
    end)
end

function Quest73049:OnSubStart7304921(arg1)
    print("OnSubStart7304921")
    self:CreateQuestNpc(arg1, npcs.Npc20712Data.id, 1)
    actorMgr:CreateActorWithPos("Q7304921Trigger", "Actor/Gadget/Q7304921Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7304921").pos, sceneData:GetDummyPoint(3, "guide_Q7304921").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304921(arg1)
    print("OnSubFinish7304921")
end

function Quest73049:OnSubStart7304922(arg1)
    print("OnSubStart7304922")
    globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest73049:OnSubFinish7304922(arg1)
    print("OnSubFinish7304922")
    self:ActionSafeCall(function(arg1)
        globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    end)

    self:CallDelay(3, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId_getin)
    end)
end

function Quest73049:OnSubStart7304923(arg1)
    print("OnSubStart7304923")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20712Data.alias, 73049)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, nil, nil, nil, nil, nil, nil, true)
    questNpcActor:ForceAvatarWalkByDist(3, 5)
    questNpcActor:EnableInteraction(false)
    actorMgr:CreateActorWithPos("Q7304923Trigger", "Actor/Gadget/Q7304923Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7304922_N20712").pos, sceneData:GetDummyPoint(3, "Q7304922_N20712").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7304923Trigger_finish", "Actor/Gadget/Q7304923Trigger_finish", 70900002, 0, sceneData:GetDummyPoint(3, "Q7304923_Player").pos, sceneData:GetDummyPoint(3, "Q7304923_Player").rot, true, false, 3)
end

function Quest73049:OnSubFinish7304923(arg1)
    print("OnSubFinish7304923")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20712Data.alias)
    questNpcActor:EnableInteraction(true)
    self:ClearNarratorTask()
    questNpcActor:ClearFollowTask()
end

function Quest73049:OnSubStart7304906(arg1)
    print("OnSubStart7304906")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20712Data.id, 1, npcs.Npc20712Data.alias)
    globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
    globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
end

function Quest73049:OnSubFinish7304906(arg1)
    print("OnSubFinish7304906")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20712Data.alias)
    self:ActionSafeCall(function(arg1)
        globalActor:UnSpawnAttach("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttach("Mask_PlayerGirl", 10000007)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerBoy", 10000005)
        globalActor:UnSpawnAttachHeroEntity("Mask_PlayerGirl", 10000007)
    end)
end

function Quest73049:OnSubStart7304924(arg1)
    print("OnSubStart7304924")
    self:GetQuestNpcActor(npcs.Npc20712Data.alias):EnableInteraction(true)
end

function Quest73049:OnSubFinish7304924(arg1)
    print("OnSubFinish7304924")
end

function Quest73049:OnSubStart7304925(arg1)
    print("OnSubStart7304925")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20712Data.id, 1, npcs.Npc20712Data.alias)
end

function Quest73049:OnSubFinish7304925(arg1)
    print("OnSubFinish7304925")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20712Data.alias)
end

function Quest73049:OnSubStart7304926(arg1)
    print("OnSubStart7304926")
    self:NpcCreate(arg1, npcs.Npc4066Data.id, 1)
end

function Quest73049:OnSubFinish7304926(arg1)
    print("OnSubFinish7304926")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4066Data.alias)
end

function Quest73049:OnSubStart7304907(arg1)
    print("OnSubStart7304907")
end

function Quest73049:OnSubFinish7304907(arg1)
    print("OnSubFinish7304907")
end

return Quest73049
