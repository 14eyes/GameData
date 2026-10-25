require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4010 = class("Quest4010", QuestActorProxy)
Quest4010.defaultAlias = "Quest4010"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4010:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401014"] = self.OnSubStart401014,
        ["401015"] = self.OnSubStart401015,
        ["401018"] = self.OnSubStart401018,
        ["401001"] = self.OnSubStart401001,
        ["401002"] = self.OnSubStart401002,
        ["401003"] = self.OnSubStart401003,
        ["401020"] = self.OnSubStart401020,
        ["401019"] = self.OnSubStart401019,
        ["401017"] = self.OnSubStart401017,
        ["401006"] = self.OnSubStart401006,
        ["401007"] = self.OnSubStart401007,
        ["401008"] = self.OnSubStart401008,
        ["401016"] = self.OnSubStart401016,
        ["401009"] = self.OnSubStart401009,
        ["401022"] = self.OnSubStart401022,
        ["401010"] = self.OnSubStart401010,
        ["401011"] = self.OnSubStart401011,
        ["401023"] = self.OnSubStart401023,
        ["401021"] = self.OnSubStart401021
    }
end

function Quest4010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401014"] = self.OnSubFinish401014,
        ["401015"] = self.OnSubFinish401015,
        ["401018"] = self.OnSubFinish401018,
        ["401001"] = self.OnSubFinish401001,
        ["401002"] = self.OnSubFinish401002,
        ["401003"] = self.OnSubFinish401003,
        ["401020"] = self.OnSubFinish401020,
        ["401019"] = self.OnSubFinish401019,
        ["401017"] = self.OnSubFinish401017,
        ["401006"] = self.OnSubFinish401006,
        ["401007"] = self.OnSubFinish401007,
        ["401008"] = self.OnSubFinish401008,
        ["401016"] = self.OnSubFinish401016,
        ["401009"] = self.OnSubFinish401009,
        ["401022"] = self.OnSubFinish401022,
        ["401010"] = self.OnSubFinish401010,
        ["401011"] = self.OnSubFinish401011,
        ["401023"] = self.OnSubFinish401023,
        ["401021"] = self.OnSubFinish401021
    }
end

function Quest4010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["401002"] = self.OnSubFailed401002,
        ["401003"] = self.OnSubFailed401003,
        ["401019"] = self.OnSubFailed401019
    }
end

function Quest4010:Start()
    print("Start")
end

function Quest4010:OnDestroy()
    print("OnDestroy")
end

function Quest4010:OnMainFinished(arg1)
    print("OnMainFinished")
    this:ActorDestroy(datas.Q401003_BlackFist_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_BlackMarket_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Enter_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_LetterRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Lift_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_OutRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_WQRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401011_TriggerIn_2.alias)
end

function Quest4010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4010:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4010:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 401011 then
        actorUtils.FinishQuestID(false, 401023)
    elseif arg1 == 401022 then
        actorUtils.FinishQuestID(false, 401022)
    end
end

function Quest4010:OnSubStart401014(arg1)
    print("OnSubStart401014")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    actorMgr:CreateActorWithPos("Q401014_TriggerIn", "Actor/Gadget/Q401014_TriggerIn", 70900002, 0, {x = 4573.298, y = 167.481, z = 4628.255}, {x = 0.0, y = 10.715, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
end

function Quest4010:OnSubFinish401014(arg1)
    print("OnSubFinish401014")
    this:RemoveLocalGadget(70291004, "2")
    this:RemoveLocalGadget(70291004, "3")
end

function Quest4010:OnSubStart401015(arg1)
    print("OnSubStart401015")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    actorMgr:CreateActorWithPos("Q401015_TriggerIn", "Actor/Gadget/Q401015_TriggerIn", 70900002, 0, {x = 4490.398, y = 121.3, z = 4613.64}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4010:OnSubFinish401015(arg1)
    print("OnSubFinish401015")
end

function Quest4010:OnSubStart401018(arg1)
    print("OnSubStart401018")
    this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4010:OnSubFinish401018(arg1)
    print("OnSubFinish401018")
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 3)
end

function Quest4010:OnSubStart401001(arg1)
    print("OnSubStart401001")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4010:OnSubFinish401001(arg1)
    print("OnSubFinish401001")
    this:RemoveLocalGadget(70291004, "1")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
end

function Quest4010:OnSubStart401002(arg1)
    print("OnSubStart401002")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401002_TriggerIn", "Actor/Gadget/Q401002_TriggerIn", 70900002, 0, {x = 4469.745, y = 163.035, z = 4579.23}, {x = 0.0, y = 236.282, z = 0.0}, true, false, 3)
end

function Quest4010:OnSubFinish401002(arg1)
    print("OnSubFinish401002")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
end

function Quest4010:OnSubFailed401002(arg1)
    print("OnSubFailed401002")
    this:ActorDestroy(datas.Q401002_TriggerIn.alias)
end

function Quest4010:OnSubStart401003(arg1)
    print("OnSubStart401003")
    this:CreateQuestNpc(arg1, npcs.Npc13593Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13594Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13595Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13648Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13649Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13650Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13651Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13652Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401003_BlackFist_TriggerIn", "Actor/Gadget/Q401003_BlackFist_TriggerIn", 70900002, 0, {x = 4387.186, y = 130.485, z = 4668.969}, {x = 0.0, y = 124.232, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_BlackMarket_TriggerIn", "Actor/Gadget/Q401003_BlackMarket_TriggerIn", 70900002, 0, {x = 4406.276, y = 130.485, z = 4571.194}, {x = 0.0, y = 302.971, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_Enter_TriggerIn", "Actor/Gadget/Q401003_Enter_TriggerIn", 70900002, 0, {x = 4459.269, y = 134.393, z = 4557.11}, {x = 0.0, y = 349.001, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_LetterRoom_TriggerIn", "Actor/Gadget/Q401003_LetterRoom_TriggerIn", 70900002, 0, {x = 4515.315, y = 162.912, z = 4615.854}, {x = 0.0, y = 281.408, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_Lift_TriggerIn", "Actor/Gadget/Q401003_Lift_TriggerIn", 70900002, 0, {x = 4430.078, y = 135.309, z = 4708.408}, {x = 0.0, y = 168.435, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_OutRoom_TriggerIn", "Actor/Gadget/Q401003_OutRoom_TriggerIn", 70900002, 0, {x = 4459.399, y = 162.912, z = 4699.443}, {x = 0.0, y = 192.234, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_WQRoom_TriggerIn", "Actor/Gadget/Q401003_WQRoom_TriggerIn", 70900002, 0, {x = 4376.34, y = 162.912, z = 4642.968}, {x = 0.0, y = 10.879, z = 0.0}, true, false, 3)
    this:CreateSpeechBubbleTask(npcs.Npc13593Data.id, 1016135931, 0, true, 2, 3, true)
    this:CreateSpeechBubbleTask(npcs.Npc13594Data.id, 1016135941, 0, true, 2, 3, true)
    this:CreateSpeechBubbleTask(npcs.Npc13595Data.id, 1016135951, 0, true, 2, 3, true)
    this:DeployStoryByQuest(110401003)
    actorMgr:CreateActorWithPos("Q401020_TriggerIn_2", "Actor/Gadget/Q401020_TriggerIn_2", 70900002, 0, {x = 0.0, y = 14.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    this:CallDelayByQuest("401003", 0.5, function(arg1)
        if this:GetSubQuestState(7406201) == 2 then
            globalActor:NotifyTo("Npc522074062", 1, true)
        end

        if this:GetSubQuestState(7406401) == 2 then
            globalActor:NotifyTo("Npc2110774064", 1, true)
            globalActor:NotifyTo("Npc521474064", 1, true)
        end

        if this:GetSubQuestState(7409802) == 2 then
            globalActor:NotifyTo("Npc521074098", 1, true)
        end
    end)
end

function Quest4010:OnSubFinish401003(arg1)
    print("OnSubFinish401003")
    this:ClearSpeechBubbleTask()
    this:CancelStoryByQuest(110401003)
    this:SafeDestroyQuestNpc("Npc13653", 3)
    this:SafeDestroyQuestNpc("Npc13654", 3)
    this:SafeDestroyQuestNpc("Npc13655", 3)
    this:SafeDestroyQuestNpc("Npc13659", 3)
    this:SafeDestroyQuestNpc("Npc13660", 3)
    this:SafeDestroyQuestNpc("Npc13661", 3)
    this:SafeDestroyQuestNpc("Npc13662", 3)
    this:SafeDestroyQuestNpc("Npc13663", 3)
    this:SafeDestroyQuestNpc("Npc13664", 3)
    this:SafeDestroyQuestNpc("Npc13665", 3)
    this:SafeDestroyQuestNpc("Npc13666", 3)
    this:SafeDestroyQuestNpc("Npc13667", 3)
    this:SafeDestroyQuestNpc("Npc13668", 3)
    this:SafeDestroyQuestNpc("Npc13669", 3)
    this:SafeDestroyQuestNpc("Npc13679", 3)
    this:SafeDestroyQuestNpc("Npc13680", 3)
    this:SafeDestroyQuestNpc("Npc13681", 3)
    this:SafeDestroyQuestNpc("Npc13682", 3)
    this:SafeDestroyQuestNpc("Npc13683", 3)
    this:SafeDestroyQuestNpc("Npc13684", 3)
    this:SafeDestroyQuestNpc("Npc13687", 3)
    this:SafeDestroyQuestNpc("Npc13688", 3)
end

function Quest4010:OnSubFailed401003(arg1)
    print("OnSubFailed401003")
    this:ClearSpeechBubbleTask()
    this:ActorDestroy(datas.Q401003_BlackFist_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_BlackMarket_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Enter_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_LetterRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Lift_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_OutRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_WQRoom_TriggerIn.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13593Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13594Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13595Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13648Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13649Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13650Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13651Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13652Data.alias, 3)
    this:CancelStoryByQuest(110401003)
    this:SafeDestroyQuestNpc("Npc13653", 3)
    this:SafeDestroyQuestNpc("Npc13654", 3)
    this:SafeDestroyQuestNpc("Npc13655", 3)
    this:SafeDestroyQuestNpc("Npc13659", 3)
    this:SafeDestroyQuestNpc("Npc13660", 3)
    this:SafeDestroyQuestNpc("Npc13661", 3)
    this:SafeDestroyQuestNpc("Npc13662", 3)
    this:SafeDestroyQuestNpc("Npc13663", 3)
    this:SafeDestroyQuestNpc("Npc13664", 3)
    this:SafeDestroyQuestNpc("Npc13665", 3)
    this:SafeDestroyQuestNpc("Npc13666", 3)
    this:SafeDestroyQuestNpc("Npc13667", 3)
    this:SafeDestroyQuestNpc("Npc13668", 3)
    this:SafeDestroyQuestNpc("Npc13669", 3)
    this:SafeDestroyQuestNpc("Npc13679", 3)
    this:SafeDestroyQuestNpc("Npc13680", 3)
    this:SafeDestroyQuestNpc("Npc13681", 3)
    this:SafeDestroyQuestNpc("Npc13682", 3)
    this:SafeDestroyQuestNpc("Npc13683", 3)
    this:SafeDestroyQuestNpc("Npc13684", 3)
    this:SafeDestroyQuestNpc("Npc13687", 3)
    this:SafeDestroyQuestNpc("Npc13688", 3)
    local actor = actorMgr:GetActor("74062")
    if actor == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7406201) == 2 then
            actor:CreateQuestNpcById(7406201, 5220, 0)
        end
    end

    local dummyActor = actorMgr:GetActor("74064")
    if dummyActor == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7406401) == 2 then
            dummyActor:CreateQuestNpcById(7406401, 21107, 0)
            dummyActor:CreateQuestNpcById(7406401, 5214, 0)
        end
    end

    local v = actorMgr:GetActor("74098")
    if v == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7409801) == 2 then
            v:CreateQuestNpcById(7409801, 5210, 0)
        end
    end
end

function Quest4010:OnSubStart401020(arg1)
    print("OnSubStart401020")
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401020_TriggerIn", "Actor/Gadget/Q401020_TriggerIn", 70900002, 0, points.TPos_Q401020_TriggerIn.pos, points.TPos_Q401020_TriggerIn.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401020_TriggerIn_2", "Actor/Gadget/Q401020_TriggerIn_2", 70900002, 0, {x = 0.0, y = 14.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    this:CallDelayByQuest("401020", 0.5, function(arg1)
        if this:GetSubQuestState(7406201) == 2 then
            globalActor:NotifyTo("Npc522074062", 1, true)
        end

        if this:GetSubQuestState(7406401) == 2 then
            globalActor:NotifyTo("Npc2110774064", 1, true)
            globalActor:NotifyTo("Npc521474064", 1, true)
        end

        if this:GetSubQuestState(7409802) == 2 then
            globalActor:NotifyTo("Npc521074098", 1, true)
        end
    end)
end

function Quest4010:OnSubFinish401020(arg1)
    print("OnSubFinish401020")
    this:ActorDestroy(datas.Q401020_TriggerIn.alias)
    this:ActorDestroy(datas.Q401020_TriggerIn_2.alias)
    this:LightNotifyTo("Npc522074062", 0, true)
    this:LightNotifyTo("Npc2110774064", 0, true)
    this:LightNotifyTo("Npc521474064", 0, true)
    local actor = actorMgr:GetActor("74062")
    if actor == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7406201) == 2 then
            actor:CreateQuestNpcById(7406201, 5220, 0)
        end
    end

    local dummyActor = actorMgr:GetActor("74064")
    if dummyActor == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7406401) == 2 then
            dummyActor:CreateQuestNpcById(7406401, 21107, 0)
            dummyActor:CreateQuestNpcById(7406401, 5214, 0)
        end
    end

    local v = actorMgr:GetActor("74098")
    if v == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7409801) == 2 then
            v:CreateQuestNpcById(7409801, 5210, 0)
        end
    end
end

function Quest4010:OnSubStart401019(arg1)
    print("OnSubStart401019")
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
end

function Quest4010:OnSubFinish401019(arg1)
    print("OnSubFinish401019")
end

function Quest4010:OnSubFailed401019(arg1)
    print("OnSubFailed401019")
    this:ClearSpeechBubbleTask()
    this:ActorDestroy(datas.Q401003_BlackFist_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_BlackMarket_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Enter_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_LetterRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Lift_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_OutRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_WQRoom_TriggerIn.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13593Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13594Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13595Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13648Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13649Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13650Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13651Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13652Data.alias, 3)
end

function Quest4010:OnSubStart401017(arg1)
    print("OnSubStart401017")
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    this:PlayCutsceneIndex(40100301, function(arg1)
        actorUtils.FinishQuestID(false, 401017)
        this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, nil, nil, nil, 0, false, true)
    end, nil, nil, false)

    actorMgr:CreateActorWithPos("Q401003_BlackFist_TriggerIn", "Actor/Gadget/Q401003_BlackFist_TriggerIn", 70900002, 0, {x = 4387.186, y = 130.485, z = 4668.969}, {x = 0.0, y = 124.232, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_BlackMarket_TriggerIn", "Actor/Gadget/Q401003_BlackMarket_TriggerIn", 70900002, 0, {x = 4406.276, y = 130.485, z = 4571.194}, {x = 0.0, y = 302.971, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_Enter_TriggerIn", "Actor/Gadget/Q401003_Enter_TriggerIn", 70900002, 0, {x = 4459.269, y = 134.393, z = 4557.11}, {x = 0.0, y = 349.001, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_LetterRoom_TriggerIn", "Actor/Gadget/Q401003_LetterRoom_TriggerIn", 70900002, 0, {x = 4515.315, y = 162.912, z = 4615.854}, {x = 0.0, y = 281.408, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_Lift_TriggerIn", "Actor/Gadget/Q401003_Lift_TriggerIn", 70900002, 0, {x = 4430.078, y = 135.309, z = 4708.408}, {x = 0.0, y = 168.435, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_OutRoom_TriggerIn", "Actor/Gadget/Q401003_OutRoom_TriggerIn", 70900002, 0, {x = 4459.399, y = 162.912, z = 4699.443}, {x = 0.0, y = 192.234, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q401003_WQRoom_TriggerIn", "Actor/Gadget/Q401003_WQRoom_TriggerIn", 70900002, 0, {x = 4376.34, y = 162.912, z = 4642.968}, {x = 0.0, y = 10.879, z = 0.0}, true, false, 3)
end

function Quest4010:OnSubFinish401017(arg1)
    print("OnSubFinish401017")
    this:ActorDestroy(datas.Q401003_BlackFist_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_BlackMarket_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Enter_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_LetterRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_Lift_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_OutRoom_TriggerIn.alias)
    this:ActorDestroy(datas.Q401003_WQRoom_TriggerIn.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13593Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13594Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13595Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13648Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13649Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13650Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13651Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13652Data.alias, 3)
    this:TransmitPlayerWithDialogTextByQuestId(401003, 1, datas.DialogsId_40109902, 0.5)
end

function Quest4010:OnSubStart401006(arg1)
    print("OnSubStart401006")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401006_TriggerIn", "Actor/Gadget/Q401006_TriggerIn", 70900002, 0, points.TPos_Q401006_TriggerIn.pos, points.TPos_Q401006_TriggerIn.rot, true, false, 3)
end

function Quest4010:OnSubFinish401006(arg1)
    print("OnSubFinish401006")
end

function Quest4010:OnSubStart401007(arg1)
    print("OnSubStart401007")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13542Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13781Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13782Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13783Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13784Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13785Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13786Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13787Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13788Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401007_TriggerIn", "Actor/Gadget/Q401007_TriggerIn", 70900002, 0, {x = 3427.259, y = 468.587, z = 3709.33}, {x = 0.0, y = 316.022, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13781Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13782Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13783Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13784Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13785Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13786Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13787Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13788Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4010:OnSubFinish401007(arg1)
    print("OnSubFinish401007")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13542Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13786Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13787Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13788Data.alias, 3)
end

function Quest4010:OnSubStart401008(arg1)
    print("OnSubStart401008")
    this:CreateQuestNpc(arg1, npcs.Npc13316Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1080Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401008_TriggerIn", "Actor/Gadget/Q401008_TriggerIn", 70900002, 0, points.TPos_Q401008_TriggerIn.pos, points.TPos_Q401008_TriggerIn.rot, true, false, 1085)
    actorMgr:CreateActorWithPos("Q401008_TriggerIn_2", "Actor/Gadget/Q401008_TriggerIn_2", 70900002, 0, {x = 3417.564, y = 463.021, z = 3718.575}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4010:OnSubFinish401008(arg1)
    print("OnSubFinish401008")
    this:ActorDestroy(datas.Q401008_TriggerIn_2.alias)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_40109902, 0.5, nil, nil)
end

function Quest4010:OnSubStart401016(arg1)
    print("OnSubStart401016")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401016_TriggerIn", "Actor/Gadget/Q401016_TriggerIn", 70900002, 0, points.TPos_Q401016_TriggerIn.pos, points.TPos_Q401016_TriggerIn.rot, true, false, 3)
end

function Quest4010:OnSubFinish401016(arg1)
    print("OnSubFinish401016")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_40109902, 0.5, nil, nil)
end

function Quest4010:OnSubStart401009(arg1)
    print("OnSubStart401009")
    this:DailyNpcSafeHideSelf(npcs.Npc5251Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q401009_TriggerIn", "Actor/Gadget/Q401009_TriggerIn", 70900002, 0, points.TPos_Q401009_TriggerIn.pos, points.TPos_Q401009_TriggerIn.rot, true, false, 1085)
end

function Quest4010:OnSubFinish401009(arg1)
    print("OnSubFinish401009")
    this:LightNotifyTo(npcs.Npc5251Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 1085)
end

function Quest4010:OnSubStart401022(arg1)
    print("OnSubStart401022")
end

function Quest4010:OnSubFinish401022(arg1)
    print("OnSubFinish401022")
end

function Quest4010:OnSubStart401010(arg1)
    print("OnSubStart401010")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q401010_TriggerIn", "Actor/Gadget/Q401010_TriggerIn", 70900002, 0, {x = -0.118, y = 26.675, z = 183.211}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13316Data.alias)
    questNpcActor:SitOnChair(8010, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4010:OnSubFinish401010(arg1)
    print("OnSubFinish401010")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13316Data.alias, 1085)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_40109902, 0.5, nil, nil)
end

function Quest4010:OnSubStart401011(arg1)
    print("OnSubStart401011")
    this:CreateQuestNpc(arg1, npcs.Npc13781Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13782Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13783Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13784Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13785Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13786Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13787Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13788Data.id, 0)
    actorMgr:CreateActorWithPos("Q401011_TriggerIn", "Actor/Gadget/Q401011_TriggerIn", 70900002, 0, points.TPos_Q401011_TriggerIn.pos, points.TPos_Q401011_TriggerIn.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc13781Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13782Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13783Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13784Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13785Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13786Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13787Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13788Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4010:OnSubFinish401011(arg1)
    print("OnSubFinish401011")
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13781Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13782Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13783Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13784Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13785Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13786Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13787Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13788Data.alias, 3)
end

function Quest4010:OnSubStart401023(arg1)
    print("OnSubStart401023")
end

function Quest4010:OnSubFinish401023(arg1)
    print("OnSubFinish401023")
end

function Quest4010:OnSubStart401021(arg1)
    print("OnSubStart401021")
end

function Quest4010:OnSubFinish401021(arg1)
    print("OnSubFinish401021")
end

return Quest4010
