require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40058 = class("Quest40058", QuestActorProxy)
Quest40058.defaultAlias = "Quest40058"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40058:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40058:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005801"] = self.OnSubStart4005801,
        ["4005802"] = self.OnSubStart4005802,
        ["4005803"] = self.OnSubStart4005803,
        ["4005804"] = self.OnSubStart4005804,
        ["4005805"] = self.OnSubStart4005805,
        ["4005806"] = self.OnSubStart4005806,
        ["4005807"] = self.OnSubStart4005807,
        ["4005808"] = self.OnSubStart4005808,
        ["4005809"] = self.OnSubStart4005809,
        ["4005810"] = self.OnSubStart4005810,
        ["4005811"] = self.OnSubStart4005811,
        ["4005812"] = self.OnSubStart4005812,
        ["4005813"] = self.OnSubStart4005813,
        ["4005814"] = self.OnSubStart4005814,
        ["4005815"] = self.OnSubStart4005815,
        ["4005816"] = self.OnSubStart4005816,
        ["4005817"] = self.OnSubStart4005817,
        ["4005818"] = self.OnSubStart4005818,
        ["4005819"] = self.OnSubStart4005819,
        ["4005820"] = self.OnSubStart4005820,
        ["4005821"] = self.OnSubStart4005821
    }
end

function Quest40058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005801"] = self.OnSubFinish4005801,
        ["4005802"] = self.OnSubFinish4005802,
        ["4005803"] = self.OnSubFinish4005803,
        ["4005804"] = self.OnSubFinish4005804,
        ["4005805"] = self.OnSubFinish4005805,
        ["4005806"] = self.OnSubFinish4005806,
        ["4005807"] = self.OnSubFinish4005807,
        ["4005808"] = self.OnSubFinish4005808,
        ["4005809"] = self.OnSubFinish4005809,
        ["4005810"] = self.OnSubFinish4005810,
        ["4005811"] = self.OnSubFinish4005811,
        ["4005812"] = self.OnSubFinish4005812,
        ["4005813"] = self.OnSubFinish4005813,
        ["4005814"] = self.OnSubFinish4005814,
        ["4005815"] = self.OnSubFinish4005815,
        ["4005816"] = self.OnSubFinish4005816,
        ["4005817"] = self.OnSubFinish4005817,
        ["4005818"] = self.OnSubFinish4005818,
        ["4005819"] = self.OnSubFinish4005819,
        ["4005820"] = self.OnSubFinish4005820,
        ["4005821"] = self.OnSubFinish4005821
    }
end

function Quest40058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40058:Start()
    print("Start")
end

function Quest40058:OnDestroy()
    print("OnDestroy")
end

function Quest40058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40058:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1061)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20126)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 1061)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 20126)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 1061)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 20126)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 1061)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 20126)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 20126)
    self:SafeDestroyQuestNpc(npcs.Npc30143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30144Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30145Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30146Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30147Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30149Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 1061)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 20126)
    self:SafeDestroyQuestNpc(npcs.Npc10013Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4005802Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005803Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005804Trigger", 1061, false)
    actorMgr:DestroyEntityActor("Q4005806Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005810Trigger", 20126, false)
    actorMgr:DestroyEntityActor("Q4005819Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005820Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005809Trigger", 20126, false)
    globalActor:LeaveAllWeather()
    self:CancelCheckNpcHeight()
end

function Quest40058:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40058:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40058:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40058:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40058:RealCheckNpcData(arg1, y, arg3)
    print("RealCheckNpcData")
    if arg1 == nil then
        return
    end

    local realAlias = self:GetRealAlias(arg1)
    local actorInternal = actorMgr:GetActorInternal(realAlias)
    if actorInternal == nil then
        return
    end

    local pos = actorInternal:GetPos()
    if arg3 >= pos.y - y then
        pos.y = y
        actorInternal:SetPos(pos)
    end
end

function Quest40058:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        globalActor:ChangeDay24Time(8, true)
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    elseif arg1 == 2 then
        globalActor:ChangeDay24TimeClock(24, 0, 0, true)
        globalActor:LeaveAllWeather()
        globalActor:ChangeWeather("BigWorld/Weather_Rain_Light")
    elseif arg1 == 3 then
        globalActor:ChangeDay24Time(8, true)
        globalActor:LeaveAllWeather()
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    end
end

function Quest40058:UpdateCheckNpcHeight()
    print("UpdateCheckNpcHeight")
    self:UnCallFunc(self.UpdateCheckNpcHeight)
    self:RealCheckNpcData(npcs.Npc1018Data.alias, 27.923, -0.5)
    self:CallDelay(1.5, self.UpdateCheckNpcHeight)
end

function Quest40058:CancelCheckNpcHeight()
    print("CancelCheckNpcHeight")
    self:UnCallFunc(self.UpdateCheckNpcHeight)
end

function Quest40058:OnSubStart4005801(arg1)
    print("OnSubStart4005801")
end

function Quest40058:OnSubFinish4005801(arg1)
    print("OnSubFinish4005801")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005801)
end

function Quest40058:OnSubStart4005802(arg1)
    print("OnSubStart4005802")
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 5)
    actorMgr:CreateActorWithPos("Q4005802Trigger", "Actor/Gadget/Q4005802Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005802_N1032").pos, sceneData:GetDummyPoint(3, "Q4005802_N1032").rot, true, false, 3)
end

function Quest40058:OnSubFinish4005802(arg1)
    print("OnSubFinish4005802")
end

function Quest40058:OnSubStart4005803(arg1)
    print("OnSubStart4005803")
    actorMgr:CreateActorWithPos("Q4005803Trigger", "Actor/Gadget/Q4005803Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005802_N1032").pos, sceneData:GetDummyPoint(3, "Q4005802_N1032").rot, true, false, 3)
end

function Quest40058:OnSubFinish4005803(arg1)
    print("OnSubFinish4005803")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest40058:OnSubStart4005804(arg1)
    print("OnSubStart4005804")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1013Data.id, 4)
    actorMgr:CreateActorWithPos("Q4005804Trigger", "Actor/Gadget/Q4005804Trigger", 70900002, 0, sceneData:GetDummyPoint(1061, "Q4005804_SheFengXing").pos, sceneData:GetDummyPoint(1061, "Q4005804_SheFengXing").rot, true, false, 1061)
end

function Quest40058:OnSubFinish4005804(arg1)
    print("OnSubFinish4005804")
end

function Quest40058:OnSubStart4005805(arg1)
    print("OnSubStart4005805")
end

function Quest40058:OnSubFinish4005805(arg1)
    print("OnSubFinish4005805")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40058:OnSubStart4005806(arg1)
    print("OnSubStart4005806")
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 5)
    actorMgr:CreateActorWithPos("Q4005806Trigger", "Actor/Gadget/Q4005806Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005806_TianLingFengXing").pos, sceneData:GetDummyPoint(3, "Q4005806_TianLingFengXing").rot, true, false, 3)
end

function Quest40058:OnSubFinish4005806(arg1)
    print("OnSubFinish4005806")
end

function Quest40058:OnSubStart4005807(arg1)
    print("OnSubStart4005807")
end

function Quest40058:OnSubFinish4005807(arg1)
    print("OnSubFinish4005807")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40058:OnSubStart4005808(arg1)
    print("OnSubStart4005808")
    self:CreateQuestNpc(arg1, npcs.Npc30141Data.id, 5)
    self:CancelCheckNpcHeight()
end

function Quest40058:OnSubFinish4005808(arg1)
    print("OnSubFinish4005808")
end

function Quest40058:OnSubStart4005809(arg1)
    print("OnSubStart4005809")
    globalActor:PlayerEnterDungeon(473, 1130)
    actorMgr:CreateActorWithPos("Q4005809Trigger", "Actor/Gadget/Q4005809Trigger", 70900002, 0, sceneData:GetDummyPoint(20126, "Q4005810_Player").pos, sceneData:GetDummyPoint(20126, "Q4005810_Player").rot, true, false, 20126)
    self:CancelCheckNpcHeight()
end

function Quest40058:OnSubFinish4005809(arg1)
    print("OnSubFinish4005809")
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest40058:OnSubStart4005810(arg1)
    print("OnSubStart4005810")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30141Data.id, 5)
        actorMgr:CreateActorWithPos("Q4005810Trigger", "Actor/Gadget/Q4005810Trigger", 70900002, 0, sceneData:GetDummyPoint(20126, "Q4005810_Player").pos, sceneData:GetDummyPoint(20126, "Q4005810_Player").rot, true, false, 20126)
    end)

    self:ActorDestroy("Q4005809Trigger")
    self:CancelCheckNpcHeight()
end

function Quest40058:OnSubFinish4005810(arg1)
    print("OnSubFinish4005810")
end

function Quest40058:OnSubStart4005811(arg1)
    print("OnSubStart4005811")
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 6)
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40058:OnSubFinish4005811(arg1)
    print("OnSubFinish4005811")
end

function Quest40058:OnSubStart4005812(arg1)
    print("OnSubStart4005812")
end

function Quest40058:OnSubFinish4005812(arg1)
    print("OnSubFinish4005812")
end

function Quest40058:OnSubStart4005813(arg1)
    print("OnSubStart4005813")
end

function Quest40058:OnSubFinish4005813(arg1)
    print("OnSubFinish4005813")
end

function Quest40058:OnSubStart4005814(arg1)
    print("OnSubStart4005814")
    actorUtils.FinishQuestID(false, 4005814)
end

function Quest40058:OnSubFinish4005814(arg1)
    print("OnSubFinish4005814")
end

function Quest40058:OnSubStart4005815(arg1)
    print("OnSubStart4005815")
end

function Quest40058:OnSubFinish4005815(arg1)
    print("OnSubFinish4005815")
end

function Quest40058:OnSubStart4005816(arg1)
    print("OnSubStart4005816")
end

function Quest40058:OnSubFinish4005816(arg1)
    print("OnSubFinish4005816")
end

function Quest40058:OnSubStart4005817(arg1)
    print("OnSubStart4005817")
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DisableInteeHeadCtrl(true)
    self:UpdateCheckNpcHeight()
end

function Quest40058:OnSubFinish4005817(arg1)
    print("OnSubFinish4005817")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId4005817)
    end, nil, "", false, true)

    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DisableInteeHeadCtrl(false)
    self:CancelCheckNpcHeight()
end

function Quest40058:OnSubStart4005818(arg1)
    print("OnSubStart4005818")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc1032Data.id, 1)
end

function Quest40058:OnSubFinish4005818(arg1)
    print("OnSubFinish4005818")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30141Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:TransmitPlayerWithTextById(arg1, 4005818, datas.TransmitPlayerTextmapId18, 5)
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest40058:OnSubStart4005819(arg1)
    print("OnSubStart4005819")
    actorMgr:CreateActorWithPos("Q4005819Trigger", "Actor/Gadget/Q4005819Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005819_N1032").pos, sceneData:GetDummyPoint(3, "Q4005819_N1032").rot, true, false, 3)
end

function Quest40058:OnSubFinish4005819(arg1)
    print("OnSubFinish4005819")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
end

function Quest40058:OnSubStart4005820(arg1)
    print("OnSubStart4005820")
    actorMgr:CreateActorWithPos("Q4005820Trigger", "Actor/Gadget/Q4005820Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005819_ShuiAn").pos, sceneData:GetDummyPoint(3, "Q4005819_ShuiAn").rot, true, false, 3)
    globalActor:LeaveAllWeather()
end

function Quest40058:OnSubFinish4005820(arg1)
    print("OnSubFinish4005820")
end

function Quest40058:OnSubStart4005821(arg1)
    print("OnSubStart4005821")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest40058:OnSubFinish4005821(arg1)
    print("OnSubFinish4005821")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30143Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30144Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30145Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30146Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30147Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30148Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30149Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10013Data.alias, 3)
    globalActor:LeaveAllWeather()
end

return Quest40058
