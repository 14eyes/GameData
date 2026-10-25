require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73187 = class("Quest73187", QuestActorProxy)
Quest73187.defaultAlias = "Quest73187"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73187:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7318702"] = self.OnSubStart7318702,
        ["7318703"] = self.OnSubStart7318703,
        ["7318750"] = self.OnSubStart7318750,
        ["7318751"] = self.OnSubStart7318751,
        ["7318704"] = self.OnSubStart7318704,
        ["7318705"] = self.OnSubStart7318705,
        ["7318706"] = self.OnSubStart7318706,
        ["7318707"] = self.OnSubStart7318707,
        ["7318740"] = self.OnSubStart7318740,
        ["7318708"] = self.OnSubStart7318708,
        ["7318709"] = self.OnSubStart7318709,
        ["7318710"] = self.OnSubStart7318710,
        ["7318711"] = self.OnSubStart7318711,
        ["7318746"] = self.OnSubStart7318746,
        ["7318745"] = self.OnSubStart7318745,
        ["7318748"] = self.OnSubStart7318748,
        ["7318742"] = self.OnSubStart7318742,
        ["7318712"] = self.OnSubStart7318712,
        ["7318713"] = self.OnSubStart7318713,
        ["7318714"] = self.OnSubStart7318714,
        ["7318715"] = self.OnSubStart7318715,
        ["7318716"] = self.OnSubStart7318716,
        ["7318736"] = self.OnSubStart7318736,
        ["7318749"] = self.OnSubStart7318749,
        ["7318717"] = self.OnSubStart7318717,
        ["7318718"] = self.OnSubStart7318718,
        ["7318719"] = self.OnSubStart7318719,
        ["7318741"] = self.OnSubStart7318741,
        ["7318720"] = self.OnSubStart7318720,
        ["7318737"] = self.OnSubStart7318737,
        ["7318721"] = self.OnSubStart7318721,
        ["7318722"] = self.OnSubStart7318722,
        ["7318723"] = self.OnSubStart7318723,
        ["7318738"] = self.OnSubStart7318738,
        ["7318747"] = self.OnSubStart7318747,
        ["7318752"] = self.OnSubStart7318752,
        ["7318739"] = self.OnSubStart7318739,
        ["7318724"] = self.OnSubStart7318724,
        ["7318725"] = self.OnSubStart7318725,
        ["7318735"] = self.OnSubStart7318735,
        ["7318726"] = self.OnSubStart7318726,
        ["7318753"] = self.OnSubStart7318753,
        ["7318727"] = self.OnSubStart7318727,
        ["7318728"] = self.OnSubStart7318728,
        ["7318733"] = self.OnSubStart7318733,
        ["7318734"] = self.OnSubStart7318734,
        ["7318729"] = self.OnSubStart7318729,
        ["7318730"] = self.OnSubStart7318730,
        ["7318744"] = self.OnSubStart7318744,
        ["7318731"] = self.OnSubStart7318731,
        ["7318732"] = self.OnSubStart7318732,
        ["7318701"] = self.OnSubStart7318701,
        ["7318743"] = self.OnSubStart7318743
    }
end

function Quest73187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7318702"] = self.OnSubFinish7318702,
        ["7318703"] = self.OnSubFinish7318703,
        ["7318750"] = self.OnSubFinish7318750,
        ["7318751"] = self.OnSubFinish7318751,
        ["7318704"] = self.OnSubFinish7318704,
        ["7318705"] = self.OnSubFinish7318705,
        ["7318706"] = self.OnSubFinish7318706,
        ["7318707"] = self.OnSubFinish7318707,
        ["7318740"] = self.OnSubFinish7318740,
        ["7318708"] = self.OnSubFinish7318708,
        ["7318709"] = self.OnSubFinish7318709,
        ["7318710"] = self.OnSubFinish7318710,
        ["7318711"] = self.OnSubFinish7318711,
        ["7318746"] = self.OnSubFinish7318746,
        ["7318745"] = self.OnSubFinish7318745,
        ["7318748"] = self.OnSubFinish7318748,
        ["7318742"] = self.OnSubFinish7318742,
        ["7318712"] = self.OnSubFinish7318712,
        ["7318713"] = self.OnSubFinish7318713,
        ["7318714"] = self.OnSubFinish7318714,
        ["7318715"] = self.OnSubFinish7318715,
        ["7318716"] = self.OnSubFinish7318716,
        ["7318736"] = self.OnSubFinish7318736,
        ["7318749"] = self.OnSubFinish7318749,
        ["7318717"] = self.OnSubFinish7318717,
        ["7318718"] = self.OnSubFinish7318718,
        ["7318719"] = self.OnSubFinish7318719,
        ["7318741"] = self.OnSubFinish7318741,
        ["7318720"] = self.OnSubFinish7318720,
        ["7318737"] = self.OnSubFinish7318737,
        ["7318721"] = self.OnSubFinish7318721,
        ["7318722"] = self.OnSubFinish7318722,
        ["7318723"] = self.OnSubFinish7318723,
        ["7318738"] = self.OnSubFinish7318738,
        ["7318747"] = self.OnSubFinish7318747,
        ["7318752"] = self.OnSubFinish7318752,
        ["7318739"] = self.OnSubFinish7318739,
        ["7318724"] = self.OnSubFinish7318724,
        ["7318725"] = self.OnSubFinish7318725,
        ["7318735"] = self.OnSubFinish7318735,
        ["7318726"] = self.OnSubFinish7318726,
        ["7318753"] = self.OnSubFinish7318753,
        ["7318727"] = self.OnSubFinish7318727,
        ["7318728"] = self.OnSubFinish7318728,
        ["7318733"] = self.OnSubFinish7318733,
        ["7318734"] = self.OnSubFinish7318734,
        ["7318729"] = self.OnSubFinish7318729,
        ["7318730"] = self.OnSubFinish7318730,
        ["7318744"] = self.OnSubFinish7318744,
        ["7318731"] = self.OnSubFinish7318731,
        ["7318732"] = self.OnSubFinish7318732,
        ["7318701"] = self.OnSubFinish7318701,
        ["7318743"] = self.OnSubFinish7318743
    }
end

function Quest73187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73187:Start()
    print("Start")
end

function Quest73187:OnDestroy()
    print("OnDestroy")
end

function Quest73187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73187:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73187:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73187:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73187:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73187:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest73187:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73187:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:TransmitPlayerWithTextByQuestId(7318732, 2, datas.Trans_Id_1, 5)
    end
end

function Quest73187:OnSubStart7318702(arg1)
    print("OnSubStart7318702")
    actorMgr:CreateActorWithPos("Q7318702_EnterTrigger", "Actor/Gadget/Q7318702_EnterTrigger", 70900002, 0, {x = -592.259, y = 34.823, z = 4514.152}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73187:OnSubFinish7318702(arg1)
    print("OnSubFinish7318702")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318703(arg1)
    print("OnSubStart7318703")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20845Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318703(arg1)
    print("OnSubFinish7318703")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73187:OnSubStart7318750(arg1)
    print("OnSubStart7318750")
    actorMgr:CreateActorWithPos("Q7318750_EnterTrigger", "Actor/Gadget/Q7318750_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318750_guide").pos, sceneData:GetDummyPoint(3, "Q7318750_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318750(arg1)
    print("OnSubFinish7318750")
end

function Quest73187:OnSubStart7318751(arg1)
    print("OnSubStart7318751")
    actorMgr:CreateActorWithPos("Q7318751_EnterTrigger", "Actor/Gadget/Q7318751_EnterTrigger", 70900002, 0, {x = -481.104, y = 119.607, z = 4403.824}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318704_RmdTrigger", "Actor/Gadget/Q7318704_RmdTrigger", 70900002, 0, {x = -567.078, y = 58.364, z = 4451.23}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73187:OnSubFinish7318751(arg1)
    print("OnSubFinish7318751")
    this:ActorDestroy("Q7318704_RmdTrigger")
end

function Quest73187:OnSubStart7318704(arg1)
    print("OnSubStart7318704")
    actorMgr:CreateActorWithPos("Q7318704_EnterTrigger", "Actor/Gadget/Q7318704_EnterTrigger", 70900002, 0, {x = -445.687, y = 129.933, z = 4433.287}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73187:OnSubFinish7318704(arg1)
    print("OnSubFinish7318704")
    this:ClearNarratorTask()
    this:NarratorOnlyTaskByData(datas.s7318704_fin, nil, 73187)
end

function Quest73187:OnSubStart7318705(arg1)
    print("OnSubStart7318705")
    actorMgr:CreateActorWithPos("Q7318705_EnterTrigger", "Actor/Gadget/Q7318705_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318705_guide").pos, sceneData:GetDummyPoint(3, "Q7318705_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318705(arg1)
    print("OnSubFinish7318705")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318706(arg1)
    print("OnSubStart7318706")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20845Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318706(arg1)
    print("OnSubFinish7318706")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318705_Rmd)
    end)
end

function Quest73187:OnSubStart7318707(arg1)
    print("OnSubStart7318707")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    actorMgr:CreateActorWithPos("Q7318707_ToturialTrigger", "Actor/Gadget/Q7318707_ToturialTrigger", 70900002, 0, {x = -423.159, y = 124.526, z = 4448.45}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73187:OnSubFinish7318707(arg1)
    print("OnSubFinish7318707")
    this:NpcDestroy(npcs.Npc20845Data.alias, 3)
    this:ActorDestroy("Q7318707_ToturialTrigger")
end

function Quest73187:OnSubStart7318740(arg1)
    print("OnSubStart7318740")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7318740, function(arg1)
            actorUtils.FinishQuestID(false, 7318740)
        end, nil, nil, false)
    end)
end

function Quest73187:OnSubFinish7318740(arg1)
    print("OnSubFinish7318740")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:CallDelay(4, function(arg1)
            this:NarratorOnlyTaskByData(datas.s7318740_Rmd)
        end)
    end)
end

function Quest73187:OnSubStart7318708(arg1)
    print("OnSubStart7318708")
    actorMgr:CreateActorWithPos("Q7318708_EnterTrigger", "Actor/Gadget/Q7318708_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318708_guide").pos, sceneData:GetDummyPoint(3, "Q7318708_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318708(arg1)
    print("OnSubFinish7318708")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318709(arg1)
    print("OnSubStart7318709")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20845Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318709(arg1)
    print("OnSubFinish7318709")
    globalActor:ChangeDay24Time(10, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73187:OnSubStart7318710(arg1)
    print("OnSubStart7318710")
end

function Quest73187:OnSubFinish7318710(arg1)
    print("OnSubFinish7318710")
end

function Quest73187:OnSubStart7318711(arg1)
    print("OnSubStart7318711")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7318711, function(arg1)
            actorUtils.FinishQuestID(false, 7318711)
        end, nil, nil, false)

        globalActor:ChangeDay24Time(10, true)
    end)
end

function Quest73187:OnSubFinish7318711(arg1)
    print("OnSubFinish7318711")
    this:TransmitPlayerById(arg1, 1)
end

function Quest73187:OnSubStart7318746(arg1)
    print("OnSubStart7318746")
    actorMgr:CreateActorWithPos("Q7318746_EnterTrigger", "Actor/Gadget/Q7318746_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318746_guide").pos, sceneData:GetDummyPoint(3, "Q7318746_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318746(arg1)
    print("OnSubFinish7318746")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73187:OnSubStart7318745(arg1)
    print("OnSubStart7318745")
end

function Quest73187:OnSubFinish7318745(arg1)
    print("OnSubFinish7318745")
    this:CallDelay(10, function(arg1)
        actorUtils.ShowContext("RobotControl", 133313064, 64002)
        this:CallDelay(3, function(arg1)
            actorUtils.RobotControlShowReminder(1000080050, function(arg1)
                actorUtils.FinishQuestID(false, 7318748)
            end)
        end)

        this:ClearNarratorTask()
    end)
end

function Quest73187:OnSubStart7318748(arg1)
    print("OnSubStart7318748")
end

function Quest73187:OnSubFinish7318748(arg1)
    print("OnSubFinish7318748")
    this:RequestInteraction(npcs.Npc20845Data.alias)
end

function Quest73187:OnSubStart7318742(arg1)
    print("OnSubStart7318742")
    this:CallDelay(3, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318742_rmd1, function(arg1)
            actorUtils.FinishQuestID(false, 7318742)
        end)
    end)

    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73187:OnSubFinish7318742(arg1)
    print("OnSubFinish7318742")
end

function Quest73187:OnSubStart7318712(arg1)
    print("OnSubStart7318712")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73187:OnSubFinish7318712(arg1)
    print("OnSubFinish7318712")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318712_Rmd)
    end)
end

function Quest73187:OnSubStart7318713(arg1)
    print("OnSubStart7318713")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    actorMgr:CreateActorWithPos("Q7318713_RmdTrigger", "Actor/Gadget/Q7318713_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318713_RmdTrigger").pos, sceneData:GetDummyPoint(3, "Q7318713_RmdTrigger").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318713(arg1)
    print("OnSubFinish7318713")
    this:NarratorOnlyTaskByData(datas.s7318713_Rmd)
    this:ActorDestroy("Q7318713_RmdTrigger")
end

function Quest73187:OnSubStart7318714(arg1)
    print("OnSubStart7318714")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73187:OnSubFinish7318714(arg1)
    print("OnSubFinish7318714")
    globalActor:ChangeDay24Time(10, true)
end

function Quest73187:OnSubStart7318715(arg1)
    print("OnSubStart7318715")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7318715, function(arg1)
            actorUtils.FinishQuestID(false, 7318715)
        end, nil, nil, false)

        globalActor:ChangeDay24Time(10, false)
    end)
end

function Quest73187:OnSubFinish7318715(arg1)
    print("OnSubFinish7318715")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318716(arg1)
    print("OnSubStart7318716")
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc20845Data.alias)
    end)
end

function Quest73187:OnSubFinish7318716(arg1)
    print("OnSubFinish7318716")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20845Data.alias)
end

function Quest73187:OnSubStart7318736(arg1)
    print("OnSubStart7318736")
    actorMgr:CreateActorWithPos("Q7318736_EnterTrigger", "Actor/Gadget/Q7318736_EnterTrigger", 70900002, 0, {x = -107.299, y = 182.004, z = 5347.183}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73187:OnSubFinish7318736(arg1)
    print("OnSubFinish7318736")
end

function Quest73187:OnSubStart7318749(arg1)
    print("OnSubStart7318749")
    actorMgr:CreateActorWithPos("Q7318749_EnterTrigger", "Actor/Gadget/Q7318749_EnterTrigger", 70900002, 0, {x = -85.528, y = 185.7, z = 5291.137}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318736_RmdTrigger", "Actor/Gadget/Q7318736_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318736_RmdTrigger").pos, sceneData:GetDummyPoint(3, "Q7318736_RmdTrigger").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318749(arg1)
    print("OnSubFinish7318749")
end

function Quest73187:OnSubStart7318717(arg1)
    print("OnSubStart7318717")
    actorMgr:CreateActorWithPos("Q7318717_EnterTrigger", "Actor/Gadget/Q7318717_EnterTrigger", 70900002, 0, {x = -320.572, y = 52.281, z = 5270.913}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ClearNarratorTask()
end

function Quest73187:OnSubFinish7318717(arg1)
    print("OnSubFinish7318717")
    this:ActorDestroy("Q7318736_RmdTrigger")
end

function Quest73187:OnSubStart7318718(arg1)
    print("OnSubStart7318718")
    actorMgr:CreateActorWithPos("Q7318718_EnterTrigger", "Actor/Gadget/Q7318718_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318718_guide").pos, sceneData:GetDummyPoint(3, "Q7318718_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318718(arg1)
    print("OnSubFinish7318718")
end

function Quest73187:OnSubStart7318719(arg1)
    print("OnSubStart7318719")
end

function Quest73187:OnSubFinish7318719(arg1)
    print("OnSubFinish7318719")
end

function Quest73187:OnSubStart7318741(arg1)
    print("OnSubStart7318741")
    this:ClearNarratorTask()
    this:PlayCutsceneIndex(133313013, function(arg1)
        actorUtils.FinishQuestID(false, 7318741)
    end, nil, nil, false)
end

function Quest73187:OnSubFinish7318741(arg1)
    print("OnSubFinish7318741")
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318719_Rmd)
    end)
end

function Quest73187:OnSubStart7318720(arg1)
    print("OnSubStart7318720")
    actorMgr:CreateActorWithPos("Q7318720_EnterTrigger", "Actor/Gadget/Q7318720_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318720_guide").pos, sceneData:GetDummyPoint(3, "Q7318720_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318720(arg1)
    print("OnSubFinish7318720")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318737(arg1)
    print("OnSubStart7318737")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318737(arg1)
    print("OnSubFinish7318737")
end

function Quest73187:OnSubStart7318721(arg1)
    print("OnSubStart7318721")
    this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
    this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
end

function Quest73187:OnSubFinish7318721(arg1)
    print("OnSubFinish7318721")
    this:NpcDestroyWithDither(npcs.Npc4296Data.alias, 3)
    this:NpcDestroyWithDither(npcs.Npc20845Data.alias, 3)
end

function Quest73187:OnSubStart7318722(arg1)
    print("OnSubStart7318722")
    actorMgr:CreateActorWithPos("Q7318722_EnterTrigger", "Actor/Gadget/Q7318722_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318722_guide").pos, sceneData:GetDummyPoint(3, "Q7318722_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318722_RmdTrigger", "Actor/Gadget/Q7318722_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318722_RmdTrigger").pos, sceneData:GetDummyPoint(3, "Q7318722_RmdTrigger").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318722(arg1)
    print("OnSubFinish7318722")
    this:ActorDestroy("Q7318722_RmdTrigger")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318723(arg1)
    print("OnSubStart7318723")
    this:ClearNarratorTask()
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318723(arg1)
    print("OnSubFinish7318723")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73187:OnSubStart7318738(arg1)
    print("OnSubStart7318738")
end

function Quest73187:OnSubFinish7318738(arg1)
    print("OnSubFinish7318738")
end

function Quest73187:OnSubStart7318747(arg1)
    print("OnSubStart7318747")
    this:PlayCutsceneIndex(7318747, function(arg1)
        actorUtils.FinishQuestID(false, 7318747)
    end, nil, nil, false)
end

function Quest73187:OnSubFinish7318747(arg1)
    print("OnSubFinish7318747")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318747_Rmd)
    end)
end

function Quest73187:OnSubStart7318752(arg1)
    print("OnSubStart7318752")
    actorMgr:CreateActorWithPos("Q7318752_EnterTrigger", "Actor/Gadget/Q7318752_EnterTrigger", 70900002, 0, {x = -469.039, y = -47.082, z = 5556.562}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73187:OnSubFinish7318752(arg1)
    print("OnSubFinish7318752")
end

function Quest73187:OnSubStart7318739(arg1)
    print("OnSubStart7318739")
    actorMgr:CreateActorWithPos("Q7318739_DoorTrigger", "Actor/Gadget/Q7318739_DoorTrigger", 70900002, 0, {x = -471.34, y = -47.041, z = 5555.384}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73187:OnSubFinish7318739(arg1)
    print("OnSubFinish7318739")
    this:NarratorOnlyTaskByData(datas.s7318721_fin, nil, 73187)
    this:ActorDestroy("Q7318739_DoorTrigger")
end

function Quest73187:OnSubStart7318724(arg1)
    print("OnSubStart7318724")
    actorMgr:CreateActorWithPos("Q7318724_EnterTrigger", "Actor/Gadget/Q7318724_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318724_guide").pos, sceneData:GetDummyPoint(3, "Q7318724_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318724(arg1)
    print("OnSubFinish7318724")
end

function Quest73187:OnSubStart7318725(arg1)
    print("OnSubStart7318725")
end

function Quest73187:OnSubFinish7318725(arg1)
    print("OnSubFinish7318725")
end

function Quest73187:OnSubStart7318735(arg1)
    print("OnSubStart7318735")
    this:PlayCutsceneIndex(7318735, function(arg1)
        actorUtils.FinishQuestID(false, 7318735)
    end, nil, nil, false)
end

function Quest73187:OnSubFinish7318735(arg1)
    print("OnSubFinish7318735")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73187:OnSubStart7318726(arg1)
    print("OnSubStart7318726")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc20846Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc20846Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318726(arg1)
    print("OnSubFinish7318726")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20846Data.alias)
    this:CallDelay(4, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318726_fin_Rmd)
    end)
end

function Quest73187:OnSubStart7318753(arg1)
    print("OnSubStart7318753")
end

function Quest73187:OnSubFinish7318753(arg1)
    print("OnSubFinish7318753")
end

function Quest73187:OnSubStart7318727(arg1)
    print("OnSubStart7318727")
    actorMgr:CreateActorWithPos("Q7318727_EnterTrigger", "Actor/Gadget/Q7318727_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318727_guide").pos, sceneData:GetDummyPoint(3, "Q7318727_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7318727_RmdTrigger", "Actor/Gadget/Q7318727_RmdTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318727_RmdTrigger").pos, sceneData:GetDummyPoint(3, "Q7318727_RmdTrigger").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318727(arg1)
    print("OnSubFinish7318727")
    this:ActorDestroy("Q7318727_RmdTrigger")
end

function Quest73187:OnSubStart7318728(arg1)
    print("OnSubStart7318728")
end

function Quest73187:OnSubFinish7318728(arg1)
    print("OnSubFinish7318728")
end

function Quest73187:OnSubStart7318733(arg1)
    print("OnSubStart7318733")
    this:PlayCutsceneIndex(7318733, function(arg1)
        actorUtils.FinishQuestID(false, 7318733)
    end, nil, nil, false)
end

function Quest73187:OnSubFinish7318733(arg1)
    print("OnSubFinish7318733")
    this:NarratorOnlyTaskByData(datas.s7318733_Rmd)
end

function Quest73187:OnSubStart7318734(arg1)
    print("OnSubStart7318734")
end

function Quest73187:OnSubFinish7318734(arg1)
    print("OnSubFinish7318734")
end

function Quest73187:OnSubStart7318729(arg1)
    print("OnSubStart7318729")
end

function Quest73187:OnSubFinish7318729(arg1)
    print("OnSubFinish7318729")
end

function Quest73187:OnSubStart7318730(arg1)
    print("OnSubStart7318730")
    this:PlayCutsceneIndex(7318730, function(arg1)
        this:NarratorOnlyTaskByData(datas.s7318730_Rmd, function(arg1)
            actorUtils.FinishQuestID(false, 7318730)
        end)
    end, nil, nil, false)
end

function Quest73187:OnSubFinish7318730(arg1)
    print("OnSubFinish7318730")
end

function Quest73187:OnSubStart7318744(arg1)
    print("OnSubStart7318744")
    actorMgr:CreateActorWithPos("Q7318744_EnterTrigger", "Actor/Gadget/Q7318744_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318744_guide").pos, sceneData:GetDummyPoint(3, "Q7318744_guide").rot, true, false, 3)
end

function Quest73187:OnSubFinish7318744(arg1)
    print("OnSubFinish7318744")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318731(arg1)
    print("OnSubStart7318731")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:CallDelay(0.5, function(arg1)
            this:RequestInteraction(npcs.Npc4296Data.alias)
        end)
    end)
end

function Quest73187:OnSubFinish7318731(arg1)
    print("OnSubFinish7318731")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73187:OnSubStart7318732(arg1)
    print("OnSubStart7318732")
    actorMgr:CreateActorWithPos("Q7318732_EnterTrigger", "Actor/Gadget/Q7318732_EnterTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7318732_guide").pos, sceneData:GetDummyPoint(3, "Q7318732_guide").rot, true, false, 3)
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 2)
        this:NpcCreate(arg1, npcs.Npc20845Data.id, 1)
    end)
end

function Quest73187:OnSubFinish7318732(arg1)
    print("OnSubFinish7318732")
    this:NpcDestroy(npcs.Npc4296Data.alias, 3)
    this:NpcDestroy(npcs.Npc20845Data.alias, 3)
end

function Quest73187:OnSubStart7318701(arg1)
    print("OnSubStart7318701")
end

function Quest73187:OnSubFinish7318701(arg1)
    print("OnSubFinish7318701")
end

function Quest73187:OnSubStart7318743(arg1)
    print("OnSubStart7318743")
end

function Quest73187:OnSubFinish7318743(arg1)
    print("OnSubFinish7318743")
end

return Quest73187
