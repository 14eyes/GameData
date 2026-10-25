require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73057 = class("Quest73057", QuestActorProxy)
Quest73057.defaultAlias = "Quest73057"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73057:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73057:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305701"] = self.OnSubStart7305701,
        ["7305708"] = self.OnSubStart7305708,
        ["7305702"] = self.OnSubStart7305702,
        ["7305707"] = self.OnSubStart7305707,
        ["7305716"] = self.OnSubStart7305716,
        ["7305703"] = self.OnSubStart7305703,
        ["7305704"] = self.OnSubStart7305704,
        ["7305710"] = self.OnSubStart7305710,
        ["7305712"] = self.OnSubStart7305712,
        ["7305711"] = self.OnSubStart7305711,
        ["7305713"] = self.OnSubStart7305713,
        ["7305715"] = self.OnSubStart7305715,
        ["7305714"] = self.OnSubStart7305714,
        ["7305705"] = self.OnSubStart7305705,
        ["7305706"] = self.OnSubStart7305706,
        ["7305709"] = self.OnSubStart7305709
    }
end

function Quest73057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305701"] = self.OnSubFinish7305701,
        ["7305708"] = self.OnSubFinish7305708,
        ["7305702"] = self.OnSubFinish7305702,
        ["7305707"] = self.OnSubFinish7305707,
        ["7305716"] = self.OnSubFinish7305716,
        ["7305703"] = self.OnSubFinish7305703,
        ["7305704"] = self.OnSubFinish7305704,
        ["7305710"] = self.OnSubFinish7305710,
        ["7305712"] = self.OnSubFinish7305712,
        ["7305711"] = self.OnSubFinish7305711,
        ["7305713"] = self.OnSubFinish7305713,
        ["7305715"] = self.OnSubFinish7305715,
        ["7305714"] = self.OnSubFinish7305714,
        ["7305705"] = self.OnSubFinish7305705,
        ["7305706"] = self.OnSubFinish7305706,
        ["7305709"] = self.OnSubFinish7305709
    }
end

function Quest73057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73057:Start()
    print("Start")
end

function Quest73057:OnDestroy()
    print("OnDestroy")
end

function Quest73057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73057:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73057:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73057:OnSubStart7305701(arg1)
    print("OnSubStart7305701")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20576Data.alias):DoFreeStyle(1040, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7305701Trigger", "Actor/Gadget/Q7305701Trigger", 70900002, 0, {x = 88.407, y = 270.96, z = 2992.628}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73057:OnSubFinish7305701(arg1)
    print("OnSubFinish7305701")
    self:GetQuestNpcActor(npcs.Npc20576Data.alias):DestroyWithDisappear(false)
end

function Quest73057:OnSubStart7305708(arg1)
    print("OnSubStart7305708")
    self:NpcCreateWithTriggerBlack(npcs.PaimonData.id, 7305708, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest73057:OnSubFinish7305708(arg1)
    print("OnSubFinish7305708")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73057:OnSubStart7305702(arg1)
    print("OnSubStart7305702")
end

function Quest73057:OnSubFinish7305702(arg1)
    print("OnSubFinish7305702")
end

function Quest73057:OnSubStart7305707(arg1)
    print("OnSubStart7305707")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:RequestInteraction(npcs.Npc20576Data.alias)
end

function Quest73057:OnSubFinish7305707(arg1)
    print("OnSubFinish7305707")
    self:TransmitPlayerByQuestId(7305716, 1)
end

function Quest73057:OnSubStart7305716(arg1)
    print("OnSubStart7305716")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    actorMgr:CreateActorWithPos("Q7305716Trigger", "Actor/Gadget/Q7305716Trigger", 70900002, 0, {x = 127.406, y = 246.695, z = 2977.24}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73057:OnSubFinish7305716(arg1)
    print("OnSubFinish7305716")
end

function Quest73057:OnSubStart7305703(arg1)
    print("OnSubStart7305703")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20576Data.alias, 73057)
    self:AdvNpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 1, true, 5, 2, -1, function(arg1)
        actorUtils.FinishQuestID(false, 7305703)
    end, nil, nil, nil, nil, nil, true)

    self:CallDelay(4, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end)
end

function Quest73057:OnSubFinish7305703(arg1)
    print("OnSubFinish7305703")
end

function Quest73057:OnSubStart7305704(arg1)
    print("OnSubStart7305704")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
end

function Quest73057:OnSubFinish7305704(arg1)
    print("OnSubFinish7305704")
end

function Quest73057:OnSubStart7305710(arg1)
    print("OnSubStart7305710")
end

function Quest73057:OnSubFinish7305710(arg1)
    print("OnSubFinish7305710")
end

function Quest73057:OnSubStart7305712(arg1)
    print("OnSubStart7305712")
    self:RequestInteraction(npcs.Npc20576Data.alias)
end

function Quest73057:OnSubFinish7305712(arg1)
    print("OnSubFinish7305712")
end

function Quest73057:OnSubStart7305711(arg1)
    print("OnSubStart7305711")
end

function Quest73057:OnSubFinish7305711(arg1)
    print("OnSubFinish7305711")
end

function Quest73057:OnSubStart7305713(arg1)
    print("OnSubStart7305713")
    self:RequestInteraction(npcs.Npc20576Data.alias)
end

function Quest73057:OnSubFinish7305713(arg1)
    print("OnSubFinish7305713")
end

function Quest73057:OnSubStart7305715(arg1)
    print("OnSubStart7305715")
end

function Quest73057:OnSubFinish7305715(arg1)
    print("OnSubFinish7305715")
end

function Quest73057:OnSubStart7305714(arg1)
    print("OnSubStart7305714")
end

function Quest73057:OnSubFinish7305714(arg1)
    print("OnSubFinish7305714")
end

function Quest73057:OnSubStart7305705(arg1)
    print("OnSubStart7305705")
    self:CreateQuestNpc(arg1, npcs.Npc20765Data.id, 1)
end

function Quest73057:OnSubFinish7305705(arg1)
    print("OnSubFinish7305705")
    self:SafeDestroyQuestNpc(npcs.Npc20765Data.alias, 3)
end

function Quest73057:OnSubStart7305706(arg1)
    print("OnSubStart7305706")
end

function Quest73057:OnSubFinish7305706(arg1)
    print("OnSubFinish7305706")
    self:GetQuestNpcActor(npcs.Npc20576Data.alias):DestroyWithDisappear(false)
end

function Quest73057:OnSubStart7305709(arg1)
    print("OnSubStart7305709")
end

function Quest73057:OnSubFinish7305709(arg1)
    print("OnSubFinish7305709")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest73057
