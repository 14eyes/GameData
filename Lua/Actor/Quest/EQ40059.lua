require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40059 = class("Quest40059", QuestActorProxy)
Quest40059.defaultAlias = "Quest40059"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40059:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40059:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005901"] = self.OnSubStart4005901,
        ["4005902"] = self.OnSubStart4005902,
        ["4005903"] = self.OnSubStart4005903,
        ["4005904"] = self.OnSubStart4005904,
        ["4005905"] = self.OnSubStart4005905,
        ["4005906"] = self.OnSubStart4005906,
        ["4005907"] = self.OnSubStart4005907,
        ["4005908"] = self.OnSubStart4005908,
        ["4005909"] = self.OnSubStart4005909,
        ["4005910"] = self.OnSubStart4005910,
        ["4005911"] = self.OnSubStart4005911,
        ["4005917"] = self.OnSubStart4005917,
        ["4005912"] = self.OnSubStart4005912,
        ["4005913"] = self.OnSubStart4005913,
        ["4005914"] = self.OnSubStart4005914,
        ["4005916"] = self.OnSubStart4005916,
        ["4005915"] = self.OnSubStart4005915
    }
end

function Quest40059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005901"] = self.OnSubFinish4005901,
        ["4005902"] = self.OnSubFinish4005902,
        ["4005903"] = self.OnSubFinish4005903,
        ["4005904"] = self.OnSubFinish4005904,
        ["4005905"] = self.OnSubFinish4005905,
        ["4005906"] = self.OnSubFinish4005906,
        ["4005907"] = self.OnSubFinish4005907,
        ["4005908"] = self.OnSubFinish4005908,
        ["4005909"] = self.OnSubFinish4005909,
        ["4005910"] = self.OnSubFinish4005910,
        ["4005911"] = self.OnSubFinish4005911,
        ["4005917"] = self.OnSubFinish4005917,
        ["4005912"] = self.OnSubFinish4005912,
        ["4005913"] = self.OnSubFinish4005913,
        ["4005914"] = self.OnSubFinish4005914,
        ["4005916"] = self.OnSubFinish4005916,
        ["4005915"] = self.OnSubFinish4005915
    }
end

function Quest40059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40059:Start()
    print("Start")
end

function Quest40059:OnDestroy()
    print("OnDestroy")
end

function Quest40059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40059:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30151Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12435Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30150Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30180Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3091Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3089Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3070Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3095Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3084Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3097Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30180Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3089Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3070Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3095Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3084Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3097Data.alias, 0, true)
    actorMgr:GetActor("40059"):UnSpawn(gadgets.Gadget70710699Data.alias)
    actorMgr:DestroyEntityActor("Q4005901Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005908Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005909Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005910Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005912Trigger", 3, false)
end

function Quest40059:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40059:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40059:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 2 then
        self:UnSpawn(gadgets.Gadget70710699Data.alias)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 4005916)
        globalActor:ChangeDay24Time(8, true)
    elseif arg1 == 4 then
        globalActor:ChangeDay24Time(1, true)
    end
end

function Quest40059:OnSubStart4005901(arg1)
    print("OnSubStart4005901")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc1018Data.id, 1)
    actorMgr:CreateActorWithPos("Q4005901Trigger", "Actor/Gadget/Q4005901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").pos, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").rot, true, false, 3)
end

function Quest40059:OnSubFinish4005901(arg1)
    print("OnSubFinish4005901")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId4005901)
    end, nil, "QUEST_Message_Q4005916", false, true)
end

function Quest40059:OnSubStart4005902(arg1)
    print("OnSubStart4005902")
end

function Quest40059:OnSubFinish4005902(arg1)
    print("OnSubFinish4005902")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest40059:OnSubStart4005903(arg1)
    print("OnSubStart4005903")
end

function Quest40059:OnSubFinish4005903(arg1)
    print("OnSubFinish4005903")
end

function Quest40059:OnSubStart4005904(arg1)
    print("OnSubStart4005904")
end

function Quest40059:OnSubFinish4005904(arg1)
    print("OnSubFinish4005904")
end

function Quest40059:OnSubStart4005905(arg1)
    print("OnSubStart4005905")
end

function Quest40059:OnSubFinish4005905(arg1)
    print("OnSubFinish4005905")
end

function Quest40059:OnSubStart4005906(arg1)
    print("OnSubStart4005906")
end

function Quest40059:OnSubFinish4005906(arg1)
    print("OnSubFinish4005906")
end

function Quest40059:OnSubStart4005907(arg1)
    print("OnSubStart4005907")
end

function Quest40059:OnSubFinish4005907(arg1)
    print("OnSubFinish4005907")
end

function Quest40059:OnSubStart4005908(arg1)
    print("OnSubStart4005908")
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc30139Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc12435Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc30150Data.id, 10)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12435Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc30150Data.alias):SitOnChair(0)
    actorMgr:CreateActorWithPos("Q4005908Trigger", "Actor/Gadget/Q4005908Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005903_N10045").pos, sceneData:GetDummyPoint(3, "Q4005903_N10045").rot, true, false, 3)
end

function Quest40059:OnSubFinish4005908(arg1)
    print("OnSubFinish4005908")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId4005908)
    end, nil, "", false, true)
end

function Quest40059:OnSubStart4005909(arg1)
    print("OnSubStart4005909")
    self:CreateQuestNpc(arg1, npcs.Npc3000Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget70710699Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710699Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q4005909Trigger", "Actor/Gadget/Q4005909Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").pos, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc12435Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc30150Data.alias):SitOnChair(0)
end

function Quest40059:OnSubFinish4005909(arg1)
    print("OnSubFinish4005909")
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):StandFromChair(0)
end

function Quest40059:OnSubStart4005910(arg1)
    print("OnSubStart4005910")
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005910Trigger", "Actor/Gadget/Q4005910Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005901_N3000").pos, sceneData:GetDummyPoint(3, "Q4005901_N3000").rot, true, false, 3)
end

function Quest40059:OnSubFinish4005910(arg1)
    print("OnSubFinish4005910")
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12435Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30150Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710699Data.alias)
end

function Quest40059:OnSubStart4005911(arg1)
    print("OnSubStart4005911")
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1330, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1018Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1013Data.alias):DoFreeStyle(1220, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.WendyData.id, 5)
    self:GetQuestNpcActor(npcs.WendyData.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc1034Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
end

function Quest40059:OnSubFinish4005911(arg1)
    print("OnSubFinish4005911")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
end

function Quest40059:OnSubStart4005917(arg1)
    print("OnSubStart4005917")
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
end

function Quest40059:OnSubFinish4005917(arg1)
    print("OnSubFinish4005917")
end

function Quest40059:OnSubStart4005912(arg1)
    print("OnSubStart4005912")
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005912Trigger", "Actor/Gadget/Q4005912Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005914_N30151").pos, sceneData:GetDummyPoint(3, "Q4005914_N30151").rot, true, false, 3)
end

function Quest40059:OnSubFinish4005912(arg1)
    print("OnSubFinish4005912")
end

function Quest40059:OnSubStart4005913(arg1)
    print("OnSubStart4005913")
    self:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3070Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3095Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3084Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3097Data.alias, 1, true)
end

function Quest40059:OnSubFinish4005913(arg1)
    print("OnSubFinish4005913")
end

function Quest40059:OnSubStart4005914(arg1)
    print("OnSubStart4005914")
    self:CreateQuestNpc(arg1, npcs.Npc30151Data.id, 8)
    self:DailyNpcSafeHideSelf(npcs.Npc30180Data.alias, 1, true)
    self:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3089Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3070Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3095Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3084Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3097Data.alias, 0, true)
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc30151Data.alias)
    end)
end

function Quest40059:OnSubFinish4005914(arg1)
    print("OnSubFinish4005914")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30151Data.alias, 3)
    self:LightNotifyTo(npcs.Npc30180Data.alias, 0, true)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:CallDelay(5, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("IrodoriMainPage", 4005914)
        end)
    end)
end

function Quest40059:OnSubStart4005916(arg1)
    print("OnSubStart4005916")
end

function Quest40059:OnSubFinish4005916(arg1)
    print("OnSubFinish4005916")
end

function Quest40059:OnSubStart4005915(arg1)
    print("OnSubStart4005915")
end

function Quest40059:OnSubFinish4005915(arg1)
    print("OnSubFinish4005915")
end

return Quest40059
