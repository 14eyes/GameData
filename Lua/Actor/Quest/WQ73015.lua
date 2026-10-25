require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73015 = class("Quest73015", QuestActorProxy)
Quest73015.defaultAlias = "Quest73015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301501"] = self.OnSubStart7301501,
        ["7301502"] = self.OnSubStart7301502,
        ["7301503"] = self.OnSubStart7301503,
        ["7301523"] = self.OnSubStart7301523,
        ["7301504"] = self.OnSubStart7301504,
        ["7301521"] = self.OnSubStart7301521,
        ["7301515"] = self.OnSubStart7301515,
        ["7301505"] = self.OnSubStart7301505,
        ["7301518"] = self.OnSubStart7301518,
        ["7301506"] = self.OnSubStart7301506,
        ["7301519"] = self.OnSubStart7301519,
        ["7301507"] = self.OnSubStart7301507,
        ["7301520"] = self.OnSubStart7301520,
        ["7301508"] = self.OnSubStart7301508,
        ["7301509"] = self.OnSubStart7301509,
        ["7301510"] = self.OnSubStart7301510,
        ["7301522"] = self.OnSubStart7301522,
        ["7301511"] = self.OnSubStart7301511,
        ["7301512"] = self.OnSubStart7301512,
        ["7301513"] = self.OnSubStart7301513,
        ["7301514"] = self.OnSubStart7301514,
        ["7301516"] = self.OnSubStart7301516,
        ["7301517"] = self.OnSubStart7301517
    }
end

function Quest73015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301501"] = self.OnSubFinish7301501,
        ["7301502"] = self.OnSubFinish7301502,
        ["7301503"] = self.OnSubFinish7301503,
        ["7301523"] = self.OnSubFinish7301523,
        ["7301504"] = self.OnSubFinish7301504,
        ["7301521"] = self.OnSubFinish7301521,
        ["7301515"] = self.OnSubFinish7301515,
        ["7301505"] = self.OnSubFinish7301505,
        ["7301518"] = self.OnSubFinish7301518,
        ["7301506"] = self.OnSubFinish7301506,
        ["7301519"] = self.OnSubFinish7301519,
        ["7301507"] = self.OnSubFinish7301507,
        ["7301520"] = self.OnSubFinish7301520,
        ["7301508"] = self.OnSubFinish7301508,
        ["7301509"] = self.OnSubFinish7301509,
        ["7301510"] = self.OnSubFinish7301510,
        ["7301522"] = self.OnSubFinish7301522,
        ["7301511"] = self.OnSubFinish7301511,
        ["7301512"] = self.OnSubFinish7301512,
        ["7301513"] = self.OnSubFinish7301513,
        ["7301514"] = self.OnSubFinish7301514,
        ["7301516"] = self.OnSubFinish7301516,
        ["7301517"] = self.OnSubFinish7301517
    }
end

function Quest73015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7301504"] = self.OnSubFailed7301504,
        ["7301505"] = self.OnSubFailed7301505,
        ["7301506"] = self.OnSubFailed7301506,
        ["7301507"] = self.OnSubFailed7301507
    }
end

function Quest73015:Start()
    print("Start")
end

function Quest73015:OnDestroy()
    print("OnDestroy")
end

function Quest73015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73015:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73015:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7301516)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(true, 7301516)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7301522)
    end
end

function Quest73015:OnSubStart7301501(arg1)
    print("OnSubStart7301501")
    actorMgr:CreateActorWithPos("Q73015TriggerQ01", "Actor/Gadget/Q73015TriggerQ01", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301501").pos, sceneData:GetDummyPoint(3, "guide_Q7301501").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301501(arg1)
    print("OnSubFinish7301501")
end

function Quest73015:OnSubStart7301502(arg1)
    print("OnSubStart7301502")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    actorMgr:CreateActorWithPos("Q73015TriggerQ02", "Actor/Gadget/Q73015TriggerQ02", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301502").pos, sceneData:GetDummyPoint(3, "guide_Q7301502").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):DoFreeStyle(1010, true, nil, true, true, false, false)
end

function Quest73015:OnSubFinish7301502(arg1)
    print("OnSubFinish7301502")
end

function Quest73015:OnSubStart7301503(arg1)
    print("OnSubStart7301503")
    self:RequestInteraction(npcs.Npc20607Data.alias)
end

function Quest73015:OnSubFinish7301503(arg1)
    print("OnSubFinish7301503")
end

function Quest73015:OnSubStart7301523(arg1)
    print("OnSubStart7301523")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    actorMgr:CreateActorWithPos("Q73015TriggerQ23", "Actor/Gadget/Q73015TriggerQ23", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301502").pos, sceneData:GetDummyPoint(3, "guide_Q7301502").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301523(arg1)
    print("OnSubFinish7301523")
end

function Quest73015:OnSubStart7301504(arg1)
    print("OnSubStart7301504")
    actorMgr:CreateActorWithPos("Q73015Trigger1Q04", "Actor/Gadget/Q73015Trigger1Q04", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301504").pos, sceneData:GetDummyPoint(3, "guide_Q7301504").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73015TriggerQ4fail", "Actor/Gadget/Q73015TriggerQ4fail", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301504_leaveregion").pos, sceneData:GetDummyPoint(3, "guide_Q7301504_leaveregion").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):AdvNpcFollowTaskWithParams(0, nil, nil, nil, "", true, 0.5, 2, 1, 20, 25, 30, 3, 5, false, 25, true, 1, 1, 1.5, 2, 1, 5, 2)
end

function Quest73015:OnSubFinish7301504(arg1)
    print("OnSubFinish7301504")
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73015:OnSubFailed7301504(arg1)
    print("OnSubFailed7301504")
    self:NarratorOnlyTask(datas.NarratorTable6, nil, "")
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ClearFollowTask()
end

function Quest73015:OnSubStart7301521(arg1)
    print("OnSubStart7301521")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
end

function Quest73015:OnSubFinish7301521(arg1)
    print("OnSubFinish7301521")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73015:OnSubStart7301515(arg1)
    print("OnSubStart7301515")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    actorMgr:CreateActorWithPos("Q73015Trigger1Q04", "Actor/Gadget/Q73015Trigger1Q04", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301504").pos, sceneData:GetDummyPoint(3, "guide_Q7301504").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301515(arg1)
    print("OnSubFinish7301515")
end

function Quest73015:OnSubStart7301505(arg1)
    print("OnSubStart7301505")
    actorMgr:CreateActorWithPos("Q73015Trigger2Q05", "Actor/Gadget/Q73015Trigger2Q05", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301505").pos, sceneData:GetDummyPoint(3, "guide_Q7301505").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73015TriggerQ5fail", "Actor/Gadget/Q73015TriggerQ5fail", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301505_leaveregion").pos, sceneData:GetDummyPoint(3, "guide_Q7301505_leaveregion").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):AdvNpcFollowTaskWithParams(0, nil, nil, nil, "", true, 0.5, 2, 1, 20, 25, 30, 3, 5, false, 25, true, 1, 1, 1.5, 2, 1, 5, 2)
end

function Quest73015:OnSubFinish7301505(arg1)
    print("OnSubFinish7301505")
    self:ShowBlackScreen(0, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable3, nil, "")
    end, nil, "", false, true)
end

function Quest73015:OnSubFailed7301505(arg1)
    print("OnSubFailed7301505")
    self:NarratorOnlyTask(datas.NarratorTable7, nil, "")
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ClearFollowTask()
end

function Quest73015:OnSubStart7301518(arg1)
    print("OnSubStart7301518")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    actorMgr:CreateActorWithPos("Q73015Trigger2Q05", "Actor/Gadget/Q73015Trigger2Q05", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301505").pos, sceneData:GetDummyPoint(3, "guide_Q7301505").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301518(arg1)
    print("OnSubFinish7301518")
end

function Quest73015:OnSubStart7301506(arg1)
    print("OnSubStart7301506")
    actorMgr:CreateActorWithPos("Q73015Trigger3Q06", "Actor/Gadget/Q73015Trigger3Q06", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301506").pos, sceneData:GetDummyPoint(3, "guide_Q7301506").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73015TriggerQ6fail", "Actor/Gadget/Q73015TriggerQ6fail", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301506_leaveregion").pos, sceneData:GetDummyPoint(3, "guide_Q7301506_leaveregion").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):AdvNpcFollowTaskWithParams(0, nil, nil, nil, "", true, 0.5, 2, 1, 20, 25, 30, 3, 5, false, 25, true, 1, 1, 1.5, 2, 1, 5, 2)
end

function Quest73015:OnSubFinish7301506(arg1)
    print("OnSubFinish7301506")
    self:ShowBlackScreen(0, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable4, nil, "")
    end, nil, "", false, true)
end

function Quest73015:OnSubFailed7301506(arg1)
    print("OnSubFailed7301506")
    self:NarratorOnlyTask(datas.NarratorTable8, nil, "")
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ClearFollowTask()
end

function Quest73015:OnSubStart7301519(arg1)
    print("OnSubStart7301519")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    actorMgr:CreateActorWithPos("Q73015Trigger3Q06", "Actor/Gadget/Q73015Trigger3Q06", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301506").pos, sceneData:GetDummyPoint(3, "guide_Q7301506").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301519(arg1)
    print("OnSubFinish7301519")
end

function Quest73015:OnSubStart7301507(arg1)
    print("OnSubStart7301507")
    actorMgr:CreateActorWithPos("Q73015Trigger4Q07", "Actor/Gadget/Q73015Trigger4Q07", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301507").pos, sceneData:GetDummyPoint(3, "guide_Q7301507").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73015TriggerQ7fail", "Actor/Gadget/Q73015TriggerQ7fail", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301507_leaveregion").pos, sceneData:GetDummyPoint(3, "guide_Q7301507_leaveregion").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):AdvNpcFollowTaskWithParams(0, nil, nil, nil, "", true, 0.5, 2, 1, 20, 25, 30, 3, 5, false, 25, true, 1, 1, 1.5, 2, 1, 5, 2)
end

function Quest73015:OnSubFinish7301507(arg1)
    print("OnSubFinish7301507")
    self:ShowBlackScreen(0, 1, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable5, nil, "")
    end, nil, "", false, true)
end

function Quest73015:OnSubFailed7301507(arg1)
    print("OnSubFailed7301507")
    self:NarratorOnlyTask(datas.NarratorTable9, nil, "")
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ClearFollowTask()
end

function Quest73015:OnSubStart7301520(arg1)
    print("OnSubStart7301520")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    actorMgr:CreateActorWithPos("Q73015Trigger4Q07", "Actor/Gadget/Q73015Trigger4Q07", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301507").pos, sceneData:GetDummyPoint(3, "guide_Q7301507").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301520(arg1)
    print("OnSubFinish7301520")
end

function Quest73015:OnSubStart7301508(arg1)
    print("OnSubStart7301508")
    actorMgr:CreateActorWithPos("Q73015Trigger5Q08", "Actor/Gadget/Q73015Trigger5Q08", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301508").pos, sceneData:GetDummyPoint(3, "guide_Q7301508").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73015TriggerQ8fail", "Actor/Gadget/Q73015TriggerQ8fail", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301508_leaveregion").pos, sceneData:GetDummyPoint(3, "guide_Q7301508_leaveregion").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):AdvNpcFollowTaskWithParams(0, nil, nil, nil, "", true, 0.5, 2, 1, 20, 25, 30, 3, 5, false, 25, true, 1, 1, 1.5, 2, 1, 5, 2)
end

function Quest73015:OnSubFinish7301508(arg1)
    print("OnSubFinish7301508")
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ClearNpcFollowTask()
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc20607Data.alias, 3)
end

function Quest73015:OnSubStart7301509(arg1)
    print("OnSubStart7301509")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20607Data.alias):ClearFollowTask()
    self:RequestInteraction(npcs.Npc20607Data.alias)
end

function Quest73015:OnSubFinish7301509(arg1)
    print("OnSubFinish7301509")
end

function Quest73015:OnSubStart7301510(arg1)
    print("OnSubStart7301510")
end

function Quest73015:OnSubFinish7301510(arg1)
    print("OnSubFinish7301510")
end

function Quest73015:OnSubStart7301522(arg1)
    print("OnSubStart7301522")
end

function Quest73015:OnSubFinish7301522(arg1)
    print("OnSubFinish7301522")
end

function Quest73015:OnSubStart7301511(arg1)
    print("OnSubStart7301511")
    self:RequestInteraction(npcs.Npc20607Data.alias)
end

function Quest73015:OnSubFinish7301511(arg1)
    print("OnSubFinish7301511")
    self:NpcDestroy(npcs.Npc20607Data.alias, 3)
end

function Quest73015:OnSubStart7301512(arg1)
    print("OnSubStart7301512")
    actorMgr:CreateActorWithPos("Q73015Trigger6Q12", "Actor/Gadget/Q73015Trigger6Q12", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301512_paimon").pos, sceneData:GetDummyPoint(3, "guide_Q7301512_paimon").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301512(arg1)
    print("OnSubFinish7301512")
end

function Quest73015:OnSubStart7301513(arg1)
    print("OnSubStart7301513")
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 1)
    self:RequestInteraction(npcs.Npc20607Data.alias)
end

function Quest73015:OnSubFinish7301513(arg1)
    print("OnSubFinish7301513")
end

function Quest73015:OnSubStart7301514(arg1)
    print("OnSubStart7301514")
end

function Quest73015:OnSubFinish7301514(arg1)
    print("OnSubFinish7301514")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73015:OnSubStart7301516(arg1)
    print("OnSubStart7301516")
end

function Quest73015:OnSubFinish7301516(arg1)
    print("OnSubFinish7301516")
    self:TransmitPlayerWithTextByQuestId(7301516, 1, datas.TextmapId, 2)
    self:NpcDestroy(npcs.Npc20607Data.alias, 3)
end

function Quest73015:OnSubStart7301517(arg1)
    print("OnSubStart7301517")
    actorMgr:CreateActorWithPos("Q73015TriggerQ17", "Actor/Gadget/Q73015TriggerQ17", 70900002, 0, sceneData:GetDummyPoint(3, "Q7301516_player").pos, sceneData:GetDummyPoint(3, "Q7301516_player").rot, true, false, 3)
end

function Quest73015:OnSubFinish7301517(arg1)
    print("OnSubFinish7301517")
end

return Quest73015
