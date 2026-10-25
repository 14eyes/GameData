require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73018 = class("Quest73018", QuestActorProxy)
Quest73018.defaultAlias = "Quest73018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301801"] = self.OnSubStart7301801,
        ["7301802"] = self.OnSubStart7301802,
        ["7301806"] = self.OnSubStart7301806,
        ["7301807"] = self.OnSubStart7301807,
        ["7301828"] = self.OnSubStart7301828,
        ["7301808"] = self.OnSubStart7301808,
        ["7301823"] = self.OnSubStart7301823,
        ["7301809"] = self.OnSubStart7301809,
        ["7301810"] = self.OnSubStart7301810,
        ["7301811"] = self.OnSubStart7301811,
        ["7301813"] = self.OnSubStart7301813,
        ["7301814"] = self.OnSubStart7301814,
        ["7301816"] = self.OnSubStart7301816,
        ["7301817"] = self.OnSubStart7301817,
        ["7301819"] = self.OnSubStart7301819,
        ["7301820"] = self.OnSubStart7301820,
        ["7301821"] = self.OnSubStart7301821,
        ["7301827"] = self.OnSubStart7301827,
        ["7301822"] = self.OnSubStart7301822,
        ["7301826"] = self.OnSubStart7301826,
        ["7301825"] = self.OnSubStart7301825,
        ["7301824"] = self.OnSubStart7301824,
        ["7301818"] = self.OnSubStart7301818,
        ["7301815"] = self.OnSubStart7301815,
        ["7301812"] = self.OnSubStart7301812,
        ["7301805"] = self.OnSubStart7301805,
        ["7301804"] = self.OnSubStart7301804,
        ["7301803"] = self.OnSubStart7301803
    }
end

function Quest73018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301801"] = self.OnSubFinish7301801,
        ["7301802"] = self.OnSubFinish7301802,
        ["7301806"] = self.OnSubFinish7301806,
        ["7301807"] = self.OnSubFinish7301807,
        ["7301828"] = self.OnSubFinish7301828,
        ["7301808"] = self.OnSubFinish7301808,
        ["7301823"] = self.OnSubFinish7301823,
        ["7301809"] = self.OnSubFinish7301809,
        ["7301810"] = self.OnSubFinish7301810,
        ["7301811"] = self.OnSubFinish7301811,
        ["7301813"] = self.OnSubFinish7301813,
        ["7301814"] = self.OnSubFinish7301814,
        ["7301816"] = self.OnSubFinish7301816,
        ["7301817"] = self.OnSubFinish7301817,
        ["7301819"] = self.OnSubFinish7301819,
        ["7301820"] = self.OnSubFinish7301820,
        ["7301821"] = self.OnSubFinish7301821,
        ["7301827"] = self.OnSubFinish7301827,
        ["7301822"] = self.OnSubFinish7301822,
        ["7301826"] = self.OnSubFinish7301826,
        ["7301825"] = self.OnSubFinish7301825,
        ["7301824"] = self.OnSubFinish7301824,
        ["7301818"] = self.OnSubFinish7301818,
        ["7301815"] = self.OnSubFinish7301815,
        ["7301812"] = self.OnSubFinish7301812,
        ["7301805"] = self.OnSubFinish7301805,
        ["7301804"] = self.OnSubFinish7301804,
        ["7301803"] = self.OnSubFinish7301803
    }
end

function Quest73018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73018:Start()
    print("Start")
end

function Quest73018:OnDestroy()
    print("OnDestroy")
end

function Quest73018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73018:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73018:OnSubStart7301801(arg1)
    print("OnSubStart7301801")
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 4)
        actorMgr:CreateActorWithPos("Q73018Trigger", "Actor/Gadget/Q73018Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301801").pos, sceneData:GetDummyPoint(3, "guide_Q7301801").rot, true, false, 3)
        arg1_2:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end)
end

function Quest73018:OnSubFinish7301801(arg1)
    print("OnSubFinish7301801")
end

function Quest73018:OnSubStart7301802(arg1)
    print("OnSubStart7301802")
end

function Quest73018:OnSubFinish7301802(arg1)
    print("OnSubFinish7301802")
    self:SafeDestroyQuestNpc(npcs.Npc20605Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20606Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
end

function Quest73018:OnSubStart7301806(arg1)
    print("OnSubStart7301806")
    actorMgr:CreateActorWithPos("Q73018TriggerQ06", "Actor/Gadget/Q73018TriggerQ06", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301806").pos, sceneData:GetDummyPoint(3, "guide_Q7301806").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301806(arg1)
    print("OnSubFinish7301806")
end

function Quest73018:OnSubStart7301807(arg1)
    print("OnSubStart7301807")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 4)
    self:RequestInteraction(npcs.Npc20605Data.alias)
end

function Quest73018:OnSubFinish7301807(arg1)
    print("OnSubFinish7301807")
end

function Quest73018:OnSubStart7301828(arg1)
    print("OnSubStart7301828")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7301804, function(arg1)
            actorUtils.FinishQuestID(false, 7301828)
        end, nil, nil, false)
    end)
end

function Quest73018:OnSubFinish7301828(arg1)
    print("OnSubFinish7301828")
end

function Quest73018:OnSubStart7301808(arg1)
    print("OnSubStart7301808")
end

function Quest73018:OnSubFinish7301808(arg1)
    print("OnSubFinish7301808")
    self:SafeDestroyQuestNpc(npcs.Npc20605Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20606Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20608Data.alias, 3)
    self:RequestInteraction(npcs.Npc20605Data.alias)
end

function Quest73018:OnSubStart7301823(arg1)
    print("OnSubStart7301823")
    actorMgr:CreateActorWithPos("Q73018TriggerQ23", "Actor/Gadget/Q73018TriggerQ23", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301823").pos, sceneData:GetDummyPoint(3, "guide_Q7301823").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301823(arg1)
    print("OnSubFinish7301823")
end

function Quest73018:OnSubStart7301809(arg1)
    print("OnSubStart7301809")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 4)
    actorMgr:CreateActorWithPos("Q73018TriggerQ09", "Actor/Gadget/Q73018TriggerQ09", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301809").pos, sceneData:GetDummyPoint(3, "guide_Q7301809").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73018TriggerQ09Reminder", "Actor/Gadget/Q73018TriggerQ09Reminder", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301809_reminder").pos, sceneData:GetDummyPoint(3, "guide_Q7301809_reminder").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301809(arg1)
    print("OnSubFinish7301809")
end

function Quest73018:OnSubStart7301810(arg1)
    print("OnSubStart7301810")
end

function Quest73018:OnSubFinish7301810(arg1)
    print("OnSubFinish7301810")
    self:GetQuestNpcActor(npcs.Npc20605Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc20606Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.Npc20608Data.alias):DestroyWithDisappear(false)
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest73018:OnSubStart7301811(arg1)
    print("OnSubStart7301811")
end

function Quest73018:OnSubFinish7301811(arg1)
    print("OnSubFinish7301811")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7301811, function(arg1)
            arg1:NarratorOnlyTask(datas.NarratorTable2, nil, "")
        end, nil, nil, false)
    end)
end

function Quest73018:OnSubStart7301813(arg1)
    print("OnSubStart7301813")
    actorMgr:CreateActorWithPos("Q73018TriggerQ13", "Actor/Gadget/Q73018TriggerQ13", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301813").pos, sceneData:GetDummyPoint(3, "guide_Q7301813").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301813(arg1)
    print("OnSubFinish7301813")
end

function Quest73018:OnSubStart7301814(arg1)
    print("OnSubStart7301814")
    actorMgr:CreateActorWithPos("Q73018TriggerQ14leaveP2", "Actor/Gadget/Q73018TriggerQ14leaveP2", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301814").pos, sceneData:GetDummyPoint(3, "guide_Q7301814").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301814(arg1)
    print("OnSubFinish7301814")
    self:ShowBlackScreen(0.2, 0.5, 0.2, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable3, nil, "")
    end, nil, "", false, true)
end

function Quest73018:OnSubStart7301816(arg1)
    print("OnSubStart7301816")
    actorMgr:CreateActorWithPos("Q73018TriggerQ16", "Actor/Gadget/Q73018TriggerQ16", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301816").pos, sceneData:GetDummyPoint(3, "guide_Q7301816").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301816(arg1)
    print("OnSubFinish7301816")
end

function Quest73018:OnSubStart7301817(arg1)
    print("OnSubStart7301817")
    actorMgr:CreateActorWithPos("Q73018TriggerQ17leaveP3", "Actor/Gadget/Q73018TriggerQ17leaveP3", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301817").pos, sceneData:GetDummyPoint(3, "guide_Q7301817").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301817(arg1)
    print("OnSubFinish7301817")
    self:ShowBlackScreen(0.2, 0.5, 0.2, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable4, nil, "")
    end, nil, "", false, true)
end

function Quest73018:OnSubStart7301819(arg1)
    print("OnSubStart7301819")
    actorMgr:CreateActorWithPos("Q73018TriggerQ19", "Actor/Gadget/Q73018TriggerQ19", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301819").pos, sceneData:GetDummyPoint(3, "guide_Q7301819").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301819(arg1)
    print("OnSubFinish7301819")
    self:NarratorOnlyTask(datas.NarratorTable5, nil, "")
end

function Quest73018:OnSubStart7301820(arg1)
    print("OnSubStart7301820")
    actorMgr:CreateActorWithPos("Q73018TriggerQ20leaveP4", "Actor/Gadget/Q73018TriggerQ20leaveP4", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301820").pos, sceneData:GetDummyPoint(3, "guide_Q7301820").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301820(arg1)
    print("OnSubFinish7301820")
    self:NarratorOnlyTask(datas.NarratorTable6, nil, "")
end

function Quest73018:OnSubStart7301821(arg1)
    print("OnSubStart7301821")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 4)
end

function Quest73018:OnSubFinish7301821(arg1)
    print("OnSubFinish7301821")
end

function Quest73018:OnSubStart7301827(arg1)
    print("OnSubStart7301827")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(7301821, function(arg1)
            actorUtils.FinishQuestID(false, 7301827)
        end, nil, nil, false)
    end)
end

function Quest73018:OnSubFinish7301827(arg1)
    print("OnSubFinish7301827")
end

function Quest73018:OnSubStart7301822(arg1)
    print("OnSubStart7301822")
end

function Quest73018:OnSubFinish7301822(arg1)
    print("OnSubFinish7301822")
end

function Quest73018:OnSubStart7301826(arg1)
    print("OnSubStart7301826")
end

function Quest73018:OnSubFinish7301826(arg1)
    print("OnSubFinish7301826")
end

function Quest73018:OnSubStart7301825(arg1)
    print("OnSubStart7301825")
end

function Quest73018:OnSubFinish7301825(arg1)
    print("OnSubFinish7301825")
end

function Quest73018:OnSubStart7301824(arg1)
    print("OnSubStart7301824")
end

function Quest73018:OnSubFinish7301824(arg1)
    print("OnSubFinish7301824")
end

function Quest73018:OnSubStart7301818(arg1)
    print("OnSubStart7301818")
end

function Quest73018:OnSubFinish7301818(arg1)
    print("OnSubFinish7301818")
end

function Quest73018:OnSubStart7301815(arg1)
    print("OnSubStart7301815")
end

function Quest73018:OnSubFinish7301815(arg1)
    print("OnSubFinish7301815")
    self:ShowBlackScreen(0.5, 5, 0.5, nil, nil, nil, "QUEST_Message_Q2017091", false, true)
end

function Quest73018:OnSubStart7301812(arg1)
    print("OnSubStart7301812")
end

function Quest73018:OnSubFinish7301812(arg1)
    print("OnSubFinish7301812")
end

function Quest73018:OnSubStart7301805(arg1)
    print("OnSubStart7301805")
end

function Quest73018:OnSubFinish7301805(arg1)
    print("OnSubFinish7301805")
end

function Quest73018:OnSubStart7301804(arg1)
    print("OnSubStart7301804")
end

function Quest73018:OnSubFinish7301804(arg1)
    print("OnSubFinish7301804")
end

function Quest73018:OnSubStart7301803(arg1)
    print("OnSubStart7301803")
    actorMgr:CreateActorWithPos("Q73018TriggerQ03", "Actor/Gadget/Q73018TriggerQ03", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301803").pos, sceneData:GetDummyPoint(3, "guide_Q7301803").rot, true, false, 3)
end

function Quest73018:OnSubFinish7301803(arg1)
    print("OnSubFinish7301803")
end

return Quest73018
