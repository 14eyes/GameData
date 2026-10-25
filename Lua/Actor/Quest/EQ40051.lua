require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40051 = class("Quest40051", QuestActorProxy)
Quest40051.defaultAlias = "Quest40051"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40051:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40051:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005101"] = self.OnSubStart4005101,
        ["4005102"] = self.OnSubStart4005102,
        ["4005103"] = self.OnSubStart4005103,
        ["4005104"] = self.OnSubStart4005104,
        ["4005105"] = self.OnSubStart4005105,
        ["4005117"] = self.OnSubStart4005117,
        ["4005106"] = self.OnSubStart4005106,
        ["4005107"] = self.OnSubStart4005107,
        ["4005108"] = self.OnSubStart4005108,
        ["4005120"] = self.OnSubStart4005120,
        ["4005109"] = self.OnSubStart4005109,
        ["4005110"] = self.OnSubStart4005110,
        ["4005111"] = self.OnSubStart4005111,
        ["4005118"] = self.OnSubStart4005118,
        ["4005112"] = self.OnSubStart4005112,
        ["4005113"] = self.OnSubStart4005113,
        ["4005119"] = self.OnSubStart4005119,
        ["4005114"] = self.OnSubStart4005114,
        ["4005115"] = self.OnSubStart4005115,
        ["4005116"] = self.OnSubStart4005116
    }
end

function Quest40051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005101"] = self.OnSubFinish4005101,
        ["4005102"] = self.OnSubFinish4005102,
        ["4005103"] = self.OnSubFinish4005103,
        ["4005104"] = self.OnSubFinish4005104,
        ["4005105"] = self.OnSubFinish4005105,
        ["4005117"] = self.OnSubFinish4005117,
        ["4005106"] = self.OnSubFinish4005106,
        ["4005107"] = self.OnSubFinish4005107,
        ["4005108"] = self.OnSubFinish4005108,
        ["4005120"] = self.OnSubFinish4005120,
        ["4005109"] = self.OnSubFinish4005109,
        ["4005110"] = self.OnSubFinish4005110,
        ["4005111"] = self.OnSubFinish4005111,
        ["4005118"] = self.OnSubFinish4005118,
        ["4005112"] = self.OnSubFinish4005112,
        ["4005113"] = self.OnSubFinish4005113,
        ["4005119"] = self.OnSubFinish4005119,
        ["4005114"] = self.OnSubFinish4005114,
        ["4005115"] = self.OnSubFinish4005115,
        ["4005116"] = self.OnSubFinish4005116
    }
end

function Quest40051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4005113"] = self.OnSubFailed4005113}
end

function Quest40051:Start()
    print("Start")
end

function Quest40051:OnDestroy()
    print("OnDestroy")
end

function Quest40051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40051:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30000Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 7)
    self:SafeDestroyQuestNpc(npcs.NPC20518Data.alias, 7)
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4005103Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005106Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005107Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005108Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005112Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005113Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005114Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005118Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q400511101Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q400511102Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q400511103Trigger", 3, false)
end

function Quest40051:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40051:FuncCreate4005119NPC()
    print("FuncCreate4005119NPC")
    self:CreateQuestNpcWithTriggerBlack("4005119Trigger", 4005119, 1005, 1, 31, 1)
end

function Quest40051:OnSubStart4005101(arg1)
    print("OnSubStart4005101")
    self:CreateQuestNpc(arg1, npcs.Npc30000Data.id, 1)
end

function Quest40051:OnSubFinish4005101(arg1)
    print("OnSubFinish4005101")
    self:SafeDestroyQuestNpc(npcs.Npc30000Data.alias, 7)
end

function Quest40051:OnSubStart4005102(arg1)
    print("OnSubStart4005102")
    self:CreateQuestNpcWithTriggerBlack("Q4005102Trigger", 4005102, 30000, 1, 8, 1)
end

function Quest40051:OnSubFinish4005102(arg1)
    print("OnSubFinish4005102")
    self:SafeDestroyQuestNpc(npcs.Npc30000Data.alias, 7)
end

function Quest40051:OnSubStart4005103(arg1)
    print("OnSubStart4005103")
    self:CreateQuestNpcWithTrigger("Q4005103NPCTrigger", 4005103, 20518, 1, 8)
    actorMgr:CreateActorWithPos("Q4005103Trigger", "Actor/Gadget/Q4005103Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005103_guide").pos, sceneData:GetDummyPoint(7, "Q4005103_guide").rot, true, false, 7)
end

function Quest40051:OnSubFinish4005103(arg1)
    print("OnSubFinish4005103")
    self:SafeDestroyQuestNpc(npcs.NPC20518Data.alias, 7)
end

function Quest40051:OnSubStart4005104(arg1)
    print("OnSubStart4005104")
end

function Quest40051:OnSubFinish4005104(arg1)
    print("OnSubFinish4005104")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest40051:OnSubStart4005105(arg1)
    print("OnSubStart4005105")
    self:CallDelay(0.5, function(arg1)
        arg1:CreateQuestNpcWithTrigger("Q4005105Trigger", 4005105, 20518, 1, 20)
    end)
end

function Quest40051:OnSubFinish4005105(arg1)
    print("OnSubFinish4005105")
    self:SafeDestroyQuestNpc(npcs.NPC20518Data.alias, 7)
end

function Quest40051:OnSubStart4005117(arg1)
    print("OnSubStart4005117")
    self:CreateQuestNpcWithTriggerBlack("4005117Trigger", 4005117, 1005, 1, 10, 1)
end

function Quest40051:OnSubFinish4005117(arg1)
    print("OnSubFinish4005117")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest40051:OnSubStart4005106(arg1)
    print("OnSubStart4005106")
end

function Quest40051:OnSubFinish4005106(arg1)
    print("OnSubFinish4005106")
end

function Quest40051:OnSubStart4005107(arg1)
    print("OnSubStart4005107")
end

function Quest40051:OnSubFinish4005107(arg1)
    print("OnSubFinish4005107")
end

function Quest40051:OnSubStart4005108(arg1)
    print("OnSubStart4005108")
end

function Quest40051:OnSubFinish4005108(arg1)
    print("OnSubFinish4005108")
end

function Quest40051:OnSubStart4005120(arg1)
    print("OnSubStart4005120")
end

function Quest40051:OnSubFinish4005120(arg1)
    print("OnSubFinish4005120")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005110, nil, 40051)
end

function Quest40051:OnSubStart4005109(arg1)
    print("OnSubStart4005109")
end

function Quest40051:OnSubFinish4005109(arg1)
    print("OnSubFinish4005109")
end

function Quest40051:OnSubStart4005110(arg1)
    print("OnSubStart4005110")
    if self:GetSubQuestState(4005106) == 2 then
        actorMgr:CreateActorWithPos("Q4005106Trigger", "Actor/Gadget/Q4005106Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005106_guide").pos, sceneData:GetDummyPoint(7, "Q4005106_guide").rot, true, false, 7)
    end

    if self:GetSubQuestState(4005107) == 2 then
        actorMgr:CreateActorWithPos("Q4005107Trigger", "Actor/Gadget/Q4005107Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005107_guide").pos, sceneData:GetDummyPoint(7, "Q4005107_guide").rot, true, false, 7)
    end

    if self:GetSubQuestState(4005108) == 2 then
        actorMgr:CreateActorWithPos("Q4005108Trigger", "Actor/Gadget/Q4005108Trigger", 70900002, 0, {x = -168.0441, y = 254.1494, z = 279.9664}, {x = 0, y = 0, z = 0}, true, false, 7)
    end
end

function Quest40051:OnSubFinish4005110(arg1)
    print("OnSubFinish4005110")
end

function Quest40051:OnSubStart4005111(arg1)
    print("OnSubStart4005111")
    actorMgr:CreateActorWithPos("Q400511101Trigger", "Actor/Gadget/Q400511101Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005106_N1005").pos, sceneData:GetDummyPoint(7, "Q4005106_N1005").rot, true, false, 7)
    actorMgr:CreateActorWithPos("Q400511102Trigger", "Actor/Gadget/Q400511102Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005107_N1005").pos, sceneData:GetDummyPoint(7, "Q4005107_N1005").rot, true, false, 7)
    actorMgr:CreateActorWithPos("Q400511103Trigger", "Actor/Gadget/Q400511103Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005108_N1005").pos, sceneData:GetDummyPoint(7, "Q4005108_N1005").rot, true, false, 7)
end

function Quest40051:OnSubFinish4005111(arg1)
    print("OnSubFinish4005111")
    self:ActorDestroy("Q400511101Trigger")
    self:ActorDestroy("Q400511102Trigger")
    self:ActorDestroy("Q400511103Trigger")
end

function Quest40051:OnSubStart4005118(arg1)
    print("OnSubStart4005118")
    actorMgr:CreateActorWithPos("Q4005118Trigger", "Actor/Gadget/Q4005118Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005118_guide").pos, sceneData:GetDummyPoint(7, "Q4005118_guide").rot, true, false, 7)
end

function Quest40051:OnSubFinish4005118(arg1)
    print("OnSubFinish4005118")
end

function Quest40051:OnSubStart4005112(arg1)
    print("OnSubStart4005112")
    actorMgr:CreateActorWithPos("Q4005112Trigger", "Actor/Gadget/Q4005112Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005113_guide").pos, sceneData:GetDummyPoint(7, "Q4005113_guide").rot, true, false, 7)
end

function Quest40051:OnSubFinish4005112(arg1)
    print("OnSubFinish4005112")
    actorMgr:GetActor("40051"):NarratorOnlyTaskByData(datas.NarratorWithId4005107, nil, 40051)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4005112_T4005112").pos, 0, 3, false, true)
end

function Quest40051:OnSubStart4005113(arg1)
    print("OnSubStart4005113")
end

function Quest40051:OnSubFinish4005113(arg1)
    print("OnSubFinish4005113")
end

function Quest40051:OnSubFailed4005113(arg1)
    print("OnSubFailed4005113")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest40051:OnSubStart4005119(arg1)
    print("OnSubStart4005119")
    self:CallDelay(2, self.FuncCreate4005119NPC)
end

function Quest40051:OnSubFinish4005119(arg1)
    print("OnSubFinish4005119")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 2)
end

function Quest40051:OnSubStart4005114(arg1)
    print("OnSubStart4005114")
    self:CreateQuestNpc(arg1, npcs.Npc30000Data.id, 1)
    actorMgr:CreateActorWithPos("Q4005114Trigger", "Actor/Gadget/Q4005114Trigger", 70900002, 0, sceneData:GetDummyPoint(7, "Q4005114_guide").pos, sceneData:GetDummyPoint(7, "Q4005114_guide").rot, true, false, 7)
    self:GetQuestNpcActor(npcs.Npc30000Data.alias):LookAt(sceneData:GetDummyPoint(7, "Q4005114_guide_LOOKAT").pos)
end

function Quest40051:OnSubFinish4005114(arg1)
    print("OnSubFinish4005114")
end

function Quest40051:OnSubStart4005115(arg1)
    print("OnSubStart4005115")
    self:CreateQuestNpcWithTriggerBlack("Q4005115Trigger", 4005115, 30000, 1, 30, 1)
end

function Quest40051:OnSubFinish4005115(arg1)
    print("OnSubFinish4005115")
    self:SafeDestroyQuestNpc(npcs.Npc30000Data.alias, 7)
end

function Quest40051:OnSubStart4005116(arg1)
    print("OnSubStart4005116")
    self:CreateQuestNpcWithTrigger("Q4005116Trigger", 4005116, 1037, 1, 20)
end

function Quest40051:OnSubFinish4005116(arg1)
    print("OnSubFinish4005116")
    self:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
end

return Quest40051
