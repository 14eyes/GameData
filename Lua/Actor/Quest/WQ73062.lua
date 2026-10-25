require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73062 = class("Quest73062", QuestActorProxy)
Quest73062.defaultAlias = "Quest73062"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73062:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306201"] = self.OnSubStart7306201,
        ["7306202"] = self.OnSubStart7306202,
        ["7306203"] = self.OnSubStart7306203,
        ["7306208"] = self.OnSubStart7306208,
        ["7306209"] = self.OnSubStart7306209,
        ["7306210"] = self.OnSubStart7306210,
        ["7306211"] = self.OnSubStart7306211,
        ["7306212"] = self.OnSubStart7306212,
        ["7306213"] = self.OnSubStart7306213,
        ["7306214"] = self.OnSubStart7306214,
        ["7306205"] = self.OnSubStart7306205,
        ["7306215"] = self.OnSubStart7306215,
        ["7306216"] = self.OnSubStart7306216,
        ["7306217"] = self.OnSubStart7306217,
        ["7306206"] = self.OnSubStart7306206,
        ["7306219"] = self.OnSubStart7306219,
        ["7306220"] = self.OnSubStart7306220,
        ["7306221"] = self.OnSubStart7306221,
        ["7306223"] = self.OnSubStart7306223,
        ["7306224"] = self.OnSubStart7306224,
        ["7306225"] = self.OnSubStart7306225,
        ["7306226"] = self.OnSubStart7306226,
        ["7306204"] = self.OnSubStart7306204,
        ["7306227"] = self.OnSubStart7306227,
        ["7306228"] = self.OnSubStart7306228,
        ["7306229"] = self.OnSubStart7306229,
        ["7306207"] = self.OnSubStart7306207,
        ["7306222"] = self.OnSubStart7306222,
        ["7306218"] = self.OnSubStart7306218
    }
end

function Quest73062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306201"] = self.OnSubFinish7306201,
        ["7306202"] = self.OnSubFinish7306202,
        ["7306203"] = self.OnSubFinish7306203,
        ["7306208"] = self.OnSubFinish7306208,
        ["7306209"] = self.OnSubFinish7306209,
        ["7306210"] = self.OnSubFinish7306210,
        ["7306211"] = self.OnSubFinish7306211,
        ["7306212"] = self.OnSubFinish7306212,
        ["7306213"] = self.OnSubFinish7306213,
        ["7306214"] = self.OnSubFinish7306214,
        ["7306205"] = self.OnSubFinish7306205,
        ["7306215"] = self.OnSubFinish7306215,
        ["7306216"] = self.OnSubFinish7306216,
        ["7306217"] = self.OnSubFinish7306217,
        ["7306206"] = self.OnSubFinish7306206,
        ["7306219"] = self.OnSubFinish7306219,
        ["7306220"] = self.OnSubFinish7306220,
        ["7306221"] = self.OnSubFinish7306221,
        ["7306223"] = self.OnSubFinish7306223,
        ["7306224"] = self.OnSubFinish7306224,
        ["7306225"] = self.OnSubFinish7306225,
        ["7306226"] = self.OnSubFinish7306226,
        ["7306204"] = self.OnSubFinish7306204,
        ["7306227"] = self.OnSubFinish7306227,
        ["7306228"] = self.OnSubFinish7306228,
        ["7306229"] = self.OnSubFinish7306229,
        ["7306207"] = self.OnSubFinish7306207,
        ["7306222"] = self.OnSubFinish7306222,
        ["7306218"] = self.OnSubFinish7306218
    }
end

function Quest73062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73062:Start()
    print("Start")
end

function Quest73062:OnDestroy()
    print("OnDestroy")
end

function Quest73062:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73062:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73062:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(nil, 3)
    self:SafeDestroyQuestNpc(nil, 3)
    self:LightNotifyTo(nil, 0, true)
    self:LightNotifyTo(nil, 0, true)
    actorMgr:DestroyEntityActor("Q7306202Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7306203Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7306210Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7306212Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7306213Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7306219Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7306226Trigger", 3, false)
end

function Quest73062:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73062:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73062:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73062:OnSubStart7306201(arg1)
    print("OnSubStart7306201")
end

function Quest73062:OnSubFinish7306201(arg1)
    print("OnSubFinish7306201")
end

function Quest73062:OnSubStart7306202(arg1)
    print("OnSubStart7306202")
end

function Quest73062:OnSubFinish7306202(arg1)
    print("OnSubFinish7306202")
    self:NarratorOnlyTask(datas.NarratorTable7306203, nil, "")
end

function Quest73062:OnSubStart7306203(arg1)
    print("OnSubStart7306203")
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 1)
end

function Quest73062:OnSubFinish7306203(arg1)
    print("OnSubFinish7306203")
end

function Quest73062:OnSubStart7306208(arg1)
    print("OnSubStart7306208")
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 1)
end

function Quest73062:OnSubFinish7306208(arg1)
    print("OnSubFinish7306208")
    actorMgr:CreateActorWithPos("Q7306209Trigger", "Actor/Gadget/Q7306209Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "wq7306209_trigger").pos, sceneData:GetDummyPoint(3, "wq7306209_trigger").rot, true, false, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4185Data.alias)
end

function Quest73062:OnSubStart7306209(arg1)
    print("OnSubStart7306209")
end

function Quest73062:OnSubFinish7306209(arg1)
    print("OnSubFinish7306209")
    self:NarratorOnlyTask(datas.NarratorTable730620902, nil, "")
end

function Quest73062:OnSubStart7306210(arg1)
    print("OnSubStart7306210")
end

function Quest73062:OnSubFinish7306210(arg1)
    print("OnSubFinish7306210")
    self:NarratorOnlyTask(datas.NarratorTable7306211, nil, "")
end

function Quest73062:OnSubStart7306211(arg1)
    print("OnSubStart7306211")
end

function Quest73062:OnSubFinish7306211(arg1)
    print("OnSubFinish7306211")
end

function Quest73062:OnSubStart7306212(arg1)
    print("OnSubStart7306212")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7306212, npcs.Npc4185Data.id, 1)
        arg1:RequestInteraction(npcs.Npc4185Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73062:OnSubFinish7306212(arg1)
    print("OnSubFinish7306212")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4185Data.alias)
end

function Quest73062:OnSubStart7306213(arg1)
    print("OnSubStart7306213")
end

function Quest73062:OnSubFinish7306213(arg1)
    print("OnSubFinish7306213")
    self:NarratorOnlyTask(datas.NarratorTable7306213, nil, "")
end

function Quest73062:OnSubStart7306214(arg1)
    print("OnSubStart7306214")
end

function Quest73062:OnSubFinish7306214(arg1)
    print("OnSubFinish7306214")
end

function Quest73062:OnSubStart7306205(arg1)
    print("OnSubStart7306205")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7306205, npcs.Npc4185Data.id, 1)
        arg1:RequestInteraction(npcs.Npc4185Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73062:OnSubFinish7306205(arg1)
    print("OnSubFinish7306205")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4185Data.alias)
end

function Quest73062:OnSubStart7306215(arg1)
    print("OnSubStart7306215")
end

function Quest73062:OnSubFinish7306215(arg1)
    print("OnSubFinish7306215")
end

function Quest73062:OnSubStart7306216(arg1)
    print("OnSubStart7306216")
end

function Quest73062:OnSubFinish7306216(arg1)
    print("OnSubFinish7306216")
end

function Quest73062:OnSubStart7306217(arg1)
    print("OnSubStart7306217")
end

function Quest73062:OnSubFinish7306217(arg1)
    print("OnSubFinish7306217")
end

function Quest73062:OnSubStart7306206(arg1)
    print("OnSubStart7306206")
end

function Quest73062:OnSubFinish7306206(arg1)
    print("OnSubFinish7306206")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_730629908, nil, 73062)
    end)
end

function Quest73062:OnSubStart7306219(arg1)
    print("OnSubStart7306219")
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 1)
end

function Quest73062:OnSubFinish7306219(arg1)
    print("OnSubFinish7306219")
end

function Quest73062:OnSubStart7306220(arg1)
    print("OnSubStart7306220")
end

function Quest73062:OnSubFinish7306220(arg1)
    print("OnSubFinish7306220")
    self:TransmitPlayerByQuestId(7306220, 1, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable7306220, nil, "")
    end)

    self:SafeDestroyQuestNpc(npcs.Npc4185Data.alias, 3)
end

function Quest73062:OnSubStart7306221(arg1)
    print("OnSubStart7306221")
end

function Quest73062:OnSubFinish7306221(arg1)
    print("OnSubFinish7306221")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_730629914, nil, 73062)
    end)
end

function Quest73062:OnSubStart7306223(arg1)
    print("OnSubStart7306223")
end

function Quest73062:OnSubFinish7306223(arg1)
    print("OnSubFinish7306223")
end

function Quest73062:OnSubStart7306224(arg1)
    print("OnSubStart7306224")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7306224, npcs.Npc4185Data.id, 1)
        arg1:RequestInteraction(npcs.Npc4185Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73062:OnSubFinish7306224(arg1)
    print("OnSubFinish7306224")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4185Data.alias)
end

function Quest73062:OnSubStart7306225(arg1)
    print("OnSubStart7306225")
    self:CreateQuestNpc(arg1, npcs.Npc4259Data.id, 1)
end

function Quest73062:OnSubFinish7306225(arg1)
    print("OnSubFinish7306225")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4259Data.alias)
end

function Quest73062:OnSubStart7306226(arg1)
    print("OnSubStart7306226")
    self:DailyNpcSafeHideSelf(npcs.Npc4259Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7306226Trigger", "Actor/Gadget/Q7306226Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL2_ABYSSEXITENT").pos, sceneData:GetDummyPoint(3, "WQL2_ABYSSEXITENT").rot, true, false, 3)
end

function Quest73062:OnSubFinish7306226(arg1)
    print("OnSubFinish7306226")
end

function Quest73062:OnSubStart7306204(arg1)
    print("OnSubStart7306204")
    self:DailyNpcSafeHideSelf(npcs.Npc4259Data.alias, 1, true)
end

function Quest73062:OnSubFinish7306204(arg1)
    print("OnSubFinish7306204")
end

function Quest73062:OnSubStart7306227(arg1)
    print("OnSubStart7306227")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7306227, npcs.Npc4259Data.id, 1)
        arg1:RequestInteraction(npcs.Npc4259Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73062:OnSubFinish7306227(arg1)
    print("OnSubFinish7306227")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "QUEST_Black_Q7306228", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc4259Data.alias, 3)
end

function Quest73062:OnSubStart7306228(arg1)
    print("OnSubStart7306228")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4259Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc4259Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    end)
end

function Quest73062:OnSubFinish7306228(arg1)
    print("OnSubFinish7306228")
    self:GetQuestNpcActor(npcs.Npc4259Data.alias):DoFreeStateTrigger()
end

function Quest73062:OnSubStart7306229(arg1)
    print("OnSubStart7306229")
    self:CreateQuestNpc(arg1, npcs.Npc4259Data.id, 1)
end

function Quest73062:OnSubFinish7306229(arg1)
    print("OnSubFinish7306229")
    self:SafeDestroyQuestNpc(npcs.Npc4259Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4185Data.alias)
end

function Quest73062:OnSubStart7306207(arg1)
    print("OnSubStart7306207")
end

function Quest73062:OnSubFinish7306207(arg1)
    print("OnSubFinish7306207")
end

function Quest73062:OnSubStart7306222(arg1)
    print("OnSubStart7306222")
end

function Quest73062:OnSubFinish7306222(arg1)
    print("OnSubFinish7306222")
end

function Quest73062:OnSubStart7306218(arg1)
    print("OnSubStart7306218")
end

function Quest73062:OnSubFinish7306218(arg1)
    print("OnSubFinish7306218")
end

return Quest73062
