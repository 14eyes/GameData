require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72265 = class("Quest72265", QuestActorProxy)
Quest72265.defaultAlias = "Quest72265"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72265:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72265:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226501"] = self.OnSubStart7226501,
        ["7226502"] = self.OnSubStart7226502,
        ["7226503"] = self.OnSubStart7226503,
        ["7226504"] = self.OnSubStart7226504,
        ["7226505"] = self.OnSubStart7226505,
        ["7226506"] = self.OnSubStart7226506,
        ["7226507"] = self.OnSubStart7226507,
        ["7226508"] = self.OnSubStart7226508,
        ["7226509"] = self.OnSubStart7226509,
        ["7226517"] = self.OnSubStart7226517,
        ["7226513"] = self.OnSubStart7226513,
        ["7226514"] = self.OnSubStart7226514,
        ["7226516"] = self.OnSubStart7226516,
        ["7226515"] = self.OnSubStart7226515,
        ["7226510"] = self.OnSubStart7226510,
        ["7226520"] = self.OnSubStart7226520,
        ["7226519"] = self.OnSubStart7226519,
        ["7226518"] = self.OnSubStart7226518,
        ["7226511"] = self.OnSubStart7226511,
        ["7226512"] = self.OnSubStart7226512
    }
end

function Quest72265:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226501"] = self.OnSubFinish7226501,
        ["7226502"] = self.OnSubFinish7226502,
        ["7226503"] = self.OnSubFinish7226503,
        ["7226504"] = self.OnSubFinish7226504,
        ["7226505"] = self.OnSubFinish7226505,
        ["7226506"] = self.OnSubFinish7226506,
        ["7226507"] = self.OnSubFinish7226507,
        ["7226508"] = self.OnSubFinish7226508,
        ["7226509"] = self.OnSubFinish7226509,
        ["7226517"] = self.OnSubFinish7226517,
        ["7226513"] = self.OnSubFinish7226513,
        ["7226514"] = self.OnSubFinish7226514,
        ["7226516"] = self.OnSubFinish7226516,
        ["7226515"] = self.OnSubFinish7226515,
        ["7226510"] = self.OnSubFinish7226510,
        ["7226520"] = self.OnSubFinish7226520,
        ["7226519"] = self.OnSubFinish7226519,
        ["7226518"] = self.OnSubFinish7226518,
        ["7226511"] = self.OnSubFinish7226511,
        ["7226512"] = self.OnSubFinish7226512
    }
end

function Quest72265:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72265:Start()
    print("Start")
end

function Quest72265:OnDestroy()
    print("OnDestroy")
end

function Quest72265:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72265:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72265:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72265:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72265:OnSubStart7226501(arg1)
    print("OnSubStart7226501")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20482Data.id, 1)
end

function Quest72265:OnSubFinish7226501(arg1)
    print("OnSubFinish7226501")
end

function Quest72265:OnSubStart7226502(arg1)
    print("OnSubStart7226502")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NarratorOnlyTask(datas.Q7226502KaichePaimon, nil, "")
end

function Quest72265:OnSubFinish7226502(arg1)
    print("OnSubFinish7226502")
end

function Quest72265:OnSubStart7226503(arg1)
    print("OnSubStart7226503")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20519Data.id, 1)
    actorMgr:CreateActorWithPos("Q7226503Trigger", "Actor/Gadget/Q7226503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226502-Circle").pos, sceneData:GetDummyPoint(3, "WQ-7226502-Circle").rot, true, false, 3)
end

function Quest72265:OnSubFinish7226503(arg1)
    print("OnSubFinish7226503")
    self:SafeDestroyQuestNpc(npcs.NPC20519Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20223Data.alias, 3)
end

function Quest72265:OnSubStart7226504(arg1)
    print("OnSubStart7226504")
    self:CreateQuestNpc(arg1, npcs.Npc20485Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20486Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3110Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226504Trigger", "Actor/Gadget/Q7226504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226504-Mountain").pos, sceneData:GetDummyPoint(3, "WQ-7226504-Mountain").rot, true, false, 3)
end

function Quest72265:OnSubFinish7226504(arg1)
    print("OnSubFinish7226504")
end

function Quest72265:OnSubStart7226505(arg1)
    print("OnSubStart7226505")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226505Trigger", "Actor/Gadget/Q7226505Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226505-Player").pos, sceneData:GetDummyPoint(3, "WQ-7226505-Player").rot, true, false, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
    end, nil, nil, "", false, true)
end

function Quest72265:OnSubFinish7226505(arg1)
    print("OnSubFinish7226505")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20486Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc3110Data.alias, 3)
end

function Quest72265:OnSubStart7226506(arg1)
    print("OnSubStart7226506")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72265:OnSubFinish7226506(arg1)
    print("OnSubFinish7226506")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20485Data.alias)
end

function Quest72265:OnSubStart7226507(arg1)
    print("OnSubStart7226507")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NarratorOnlyTask(datas.Q7226507KaicheBattle, nil, "")
end

function Quest72265:OnSubFinish7226507(arg1)
    print("OnSubFinish7226507")
end

function Quest72265:OnSubStart7226508(arg1)
    print("OnSubStart7226508")
    self:GetQuestNpcActor(npcs.Npc20485Data.alias):DoFreeStyle(1060, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20485Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc20485Data.alias)
end

function Quest72265:OnSubFinish7226508(arg1)
    print("OnSubFinish7226508")
    self:SafeDestroyQuestNpc(npcs.Npc20485Data.alias, 3)
end

function Quest72265:OnSubStart7226509(arg1)
    print("OnSubStart7226509")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20482Data.id, 1)
end

function Quest72265:OnSubFinish7226509(arg1)
    print("OnSubFinish7226509")
end

function Quest72265:OnSubStart7226517(arg1)
    print("OnSubStart7226517")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226517TriggerTalkGiving", "Actor/Gadget/Q7226517TriggerTalkGiving", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Baida").pos, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Baida").rot, true, false, 3)
end

function Quest72265:OnSubFinish7226517(arg1)
    print("OnSubFinish7226517")
end

function Quest72265:OnSubStart7226513(arg1)
    print("OnSubStart7226513")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72265:OnSubFinish7226513(arg1)
    print("OnSubFinish7226513")
end

function Quest72265:OnSubStart7226514(arg1)
    print("OnSubStart7226514")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72265:OnSubFinish7226514(arg1)
    print("OnSubFinish7226514")
end

function Quest72265:OnSubStart7226516(arg1)
    print("OnSubStart7226516")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.NPC20519Data.id, 1)
end

function Quest72265:OnSubFinish7226516(arg1)
    print("OnSubFinish7226516")
    self:SafeDestroyQuestNpc(npcs.NPC20519Data.alias, 3)
end

function Quest72265:OnSubStart7226515(arg1)
    print("OnSubStart7226515")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72265:OnSubFinish7226515(arg1)
    print("OnSubFinish7226515")
end

function Quest72265:OnSubStart7226510(arg1)
    print("OnSubStart7226510")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest72265:OnSubFinish7226510(arg1)
    print("OnSubFinish7226510")
end

function Quest72265:OnSubStart7226520(arg1)
    print("OnSubStart7226520")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc20482Data.alias)
end

function Quest72265:OnSubFinish7226520(arg1)
    print("OnSubFinish7226520")
end

function Quest72265:OnSubStart7226519(arg1)
    print("OnSubStart7226519")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestInteraction(npcs.Npc20482Data.alias)
end

function Quest72265:OnSubFinish7226519(arg1)
    print("OnSubFinish7226519")
end

function Quest72265:OnSubStart7226518(arg1)
    print("OnSubStart7226518")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226518TriggerTalkGiving", "Actor/Gadget/Q7226518TriggerTalkGiving", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Baida").pos, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Baida").rot, true, false, 3)
end

function Quest72265:OnSubFinish7226518(arg1)
    print("OnSubFinish7226518")
end

function Quest72265:OnSubStart7226511(arg1)
    print("OnSubStart7226511")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226511Trigger", "Actor/Gadget/Q7226511Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226511-xiaoheiwu-Leave").pos, sceneData:GetDummyPoint(3, "WQ-7226511-xiaoheiwu-Leave").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7226510TalkFinishTrigger", "Actor/Gadget/Q7226510TalkFinishTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Baida").pos, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Baida").rot, true, false, 3)
end

function Quest72265:OnSubFinish7226511(arg1)
    print("OnSubFinish7226511")
end

function Quest72265:OnSubStart7226512(arg1)
    print("OnSubStart7226512")
    self:GetQuestNpcActor(npcs.Npc20482Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q7226512Trigger", "Actor/Gadget/Q7226512Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226511-xiaoheiwu-Leave").pos, sceneData:GetDummyPoint(3, "WQ-7226511-xiaoheiwu-Leave").rot, true, false, 3)
end

function Quest72265:OnSubFinish7226512(arg1)
    print("OnSubFinish7226512")
    self:SafeDestroyQuestNpc(npcs.Npc20482Data.alias, 3)
end

return Quest72265
