require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72266 = class("Quest72266", QuestActorProxy)
Quest72266.defaultAlias = "Quest72266"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72266:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72266:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226601"] = self.OnSubStart7226601,
        ["7226602"] = self.OnSubStart7226602,
        ["7226603"] = self.OnSubStart7226603,
        ["7226604"] = self.OnSubStart7226604,
        ["7226619"] = self.OnSubStart7226619,
        ["7226620"] = self.OnSubStart7226620,
        ["7226605"] = self.OnSubStart7226605,
        ["7226611"] = self.OnSubStart7226611,
        ["7226612"] = self.OnSubStart7226612,
        ["7226621"] = self.OnSubStart7226621,
        ["7226613"] = self.OnSubStart7226613,
        ["7226623"] = self.OnSubStart7226623,
        ["7226622"] = self.OnSubStart7226622,
        ["7226614"] = self.OnSubStart7226614,
        ["7226615"] = self.OnSubStart7226615,
        ["7226616"] = self.OnSubStart7226616,
        ["7226606"] = self.OnSubStart7226606,
        ["7226607"] = self.OnSubStart7226607,
        ["7226608"] = self.OnSubStart7226608,
        ["7226609"] = self.OnSubStart7226609,
        ["7226610"] = self.OnSubStart7226610,
        ["7226617"] = self.OnSubStart7226617,
        ["7226618"] = self.OnSubStart7226618
    }
end

function Quest72266:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226601"] = self.OnSubFinish7226601,
        ["7226602"] = self.OnSubFinish7226602,
        ["7226603"] = self.OnSubFinish7226603,
        ["7226604"] = self.OnSubFinish7226604,
        ["7226619"] = self.OnSubFinish7226619,
        ["7226620"] = self.OnSubFinish7226620,
        ["7226605"] = self.OnSubFinish7226605,
        ["7226611"] = self.OnSubFinish7226611,
        ["7226612"] = self.OnSubFinish7226612,
        ["7226621"] = self.OnSubFinish7226621,
        ["7226613"] = self.OnSubFinish7226613,
        ["7226623"] = self.OnSubFinish7226623,
        ["7226622"] = self.OnSubFinish7226622,
        ["7226614"] = self.OnSubFinish7226614,
        ["7226615"] = self.OnSubFinish7226615,
        ["7226616"] = self.OnSubFinish7226616,
        ["7226606"] = self.OnSubFinish7226606,
        ["7226607"] = self.OnSubFinish7226607,
        ["7226608"] = self.OnSubFinish7226608,
        ["7226609"] = self.OnSubFinish7226609,
        ["7226610"] = self.OnSubFinish7226610,
        ["7226617"] = self.OnSubFinish7226617,
        ["7226618"] = self.OnSubFinish7226618
    }
end

function Quest72266:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72266:Start()
    print("Start")
end

function Quest72266:OnDestroy()
    print("OnDestroy")
end

function Quest72266:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72266:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72266:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72266:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72266:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7226608 then
        print("Letter72266")
        self:ShowReadingDialog(101672)
    end
end

function Quest72266:OnSubStart7226601(arg1)
    print("OnSubStart7226601")
    actorMgr:CreateActorWithPos("Q7226601Trigger", "Actor/Gadget/Q7226601Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Circle").pos, sceneData:GetDummyPoint(3, "WQ-7226303-xiaoheiwu-Circle").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7226601KaicheTrigger", "Actor/Gadget/Q7226601KaicheTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226315-Xiaoheiwu-Entrance").pos, sceneData:GetDummyPoint(3, "WQ-7226315-Xiaoheiwu-Entrance").rot, true, false, 3)
end

function Quest72266:OnSubFinish7226601(arg1)
    print("OnSubFinish7226601")
end

function Quest72266:OnSubStart7226602(arg1)
    print("OnSubStart7226602")
end

function Quest72266:OnSubFinish7226602(arg1)
    print("OnSubFinish7226602")
end

function Quest72266:OnSubStart7226603(arg1)
    print("OnSubStart7226603")
    self:CreateQuestNpc(arg1, npcs.NPC20519Data.id, 1)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1)
        arg1_2:RequestInteraction(npcs.NPC20519Data.alias)
    end, nil, nil, "", false, true)
end

function Quest72266:OnSubFinish7226603(arg1)
    print("OnSubFinish7226603")
    self:SafeDestroyQuestNpc(npcs.NPC20519Data.alias, 3)
end

function Quest72266:OnSubStart7226604(arg1)
    print("OnSubStart7226604")
    actorMgr:CreateActorWithPos("Q7226604Trigger", "Actor/Gadget/Q7226604Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226619-circle").pos, sceneData:GetDummyPoint(3, "WQ-7226619-circle").rot, true, false, 3)
    self:NarratorOnlyTask(datas.Q7226604KaichePaimon, nil, "")
end

function Quest72266:OnSubFinish7226604(arg1)
    print("OnSubFinish7226604")
end

function Quest72266:OnSubStart7226619(arg1)
    print("OnSubStart7226619")
    actorMgr:CreateActorWithPos("Q7226619Trigger", "Actor/Gadget/Q7226619Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226620-circle").pos, sceneData:GetDummyPoint(3, "WQ-7226620-circle").rot, true, false, 3)
    self:NarratorOnlyTask(datas.Q7226619KaichePaimon, nil, "")
end

function Quest72266:OnSubFinish7226619(arg1)
    print("OnSubFinish7226619")
end

function Quest72266:OnSubStart7226620(arg1)
    print("OnSubStart7226620")
    self:NarratorOnlyTask(datas.Q7226620KaichePaimon, nil, "")
end

function Quest72266:OnSubFinish7226620(arg1)
    print("OnSubFinish7226620")
end

function Quest72266:OnSubStart7226605(arg1)
    print("OnSubStart7226605")
    actorMgr:CreateActorWithPos("Q7226605Trigger", "Actor/Gadget/Q7226605Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ-7226604-DichengEntrance").pos, sceneData:GetDummyPoint(3, "WQ-7226604-DichengEntrance").rot, true, false, 3)
end

function Quest72266:OnSubFinish7226605(arg1)
    print("OnSubFinish7226605")
end

function Quest72266:OnSubStart7226611(arg1)
    print("OnSubStart7226611")
end

function Quest72266:OnSubFinish7226611(arg1)
    print("OnSubFinish7226611")
end

function Quest72266:OnSubStart7226612(arg1)
    print("OnSubStart7226612")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20484Data.id, 1)
end

function Quest72266:OnSubFinish7226612(arg1)
    print("OnSubFinish7226612")
end

function Quest72266:OnSubStart7226621(arg1)
    print("OnSubStart7226621")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
end

function Quest72266:OnSubFinish7226621(arg1)
    print("OnSubFinish7226621")
end

function Quest72266:OnSubStart7226613(arg1)
    print("OnSubStart7226613")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
end

function Quest72266:OnSubFinish7226613(arg1)
    print("OnSubFinish7226613")
end

function Quest72266:OnSubStart7226623(arg1)
    print("OnSubStart7226623")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
end

function Quest72266:OnSubFinish7226623(arg1)
    print("OnSubFinish7226623")
    self:NarratorOnlyTask(datas.Q7226623KeyAdvance, nil, "")
end

function Quest72266:OnSubStart7226622(arg1)
    print("OnSubStart7226622")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
end

function Quest72266:OnSubFinish7226622(arg1)
    print("OnSubFinish7226622")
    self:NarratorOnlyTask(datas.Q7226622KeyNormal, nil, "")
end

function Quest72266:OnSubStart7226614(arg1)
    print("OnSubStart7226614")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
end

function Quest72266:OnSubFinish7226614(arg1)
    print("OnSubFinish7226614")
end

function Quest72266:OnSubStart7226615(arg1)
    print("OnSubStart7226615")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
end

function Quest72266:OnSubFinish7226615(arg1)
    print("OnSubFinish7226615")
end

function Quest72266:OnSubStart7226616(arg1)
    print("OnSubStart7226616")
    self:GetQuestNpcActor(npcs.Npc20484Data.alias):DoFreeStyle(4120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20484Data.id, 1)
    self:RequestInteraction(npcs.Npc20484Data.alias)
end

function Quest72266:OnSubFinish7226616(arg1)
    print("OnSubFinish7226616")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 2)
    end, nil, nil, "", false, true)
end

function Quest72266:OnSubStart7226606(arg1)
    print("OnSubStart7226606")
    self:CreateQuestNpc(arg1, npcs.Npc20484Data.id, 1)
end

function Quest72266:OnSubFinish7226606(arg1)
    print("OnSubFinish7226606")
    self:NpcDestroyWithBlackscreen(40050, npcs.Npc20484Data.alias)
end

function Quest72266:OnSubStart7226607(arg1)
    print("OnSubStart7226607")
end

function Quest72266:OnSubFinish7226607(arg1)
    print("OnSubFinish7226607")
end

function Quest72266:OnSubStart7226608(arg1)
    print("OnSubStart7226608")
    self:NotifyTo(npcs.Npc3030Data.alias, 2, true)
    self:CreateQuestNpc(arg1, npcs.Npc3030Data.id, 1)
end

function Quest72266:OnSubFinish7226608(arg1)
    print("OnSubFinish7226608")
end

function Quest72266:OnSubStart7226609(arg1)
    print("OnSubStart7226609")
    self:CreateQuestNpc(arg1, npcs.Npc20484Data.id, 1)
    self:LightNotifyTo(npcs.Npc3030Data.alias, 0, true)
end

function Quest72266:OnSubFinish7226609(arg1)
    print("OnSubFinish7226609")
end

function Quest72266:OnSubStart7226610(arg1)
    print("OnSubStart7226610")
    self:CreateQuestNpc(arg1, npcs.Npc20223Data.id, 1)
    self:HideQuestLikingBar()
end

function Quest72266:OnSubFinish7226610(arg1)
    print("OnSubFinish7226610")
    self:SafeDestroyQuestNpc(npcs.Npc20484Data.alias, 3)
    self:HideQuestLikingBar()
end

function Quest72266:OnSubStart7226617(arg1)
    print("OnSubStart7226617")
end

function Quest72266:OnSubFinish7226617(arg1)
    print("OnSubFinish7226617")
end

function Quest72266:OnSubStart7226618(arg1)
    print("OnSubStart7226618")
    self:RequestInteraction(npcs.Npc20223Data.alias)
end

function Quest72266:OnSubFinish7226618(arg1)
    print("OnSubFinish7226618")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20223Data.alias)
end

return Quest72266
