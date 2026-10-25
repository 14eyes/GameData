require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72813 = class("Quest72813", QuestActorProxy)
Quest72813.defaultAlias = "Quest72813"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72813:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72813:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7281301"] = self.OnSubStart7281301,
        ["7281302"] = self.OnSubStart7281302,
        ["7281303"] = self.OnSubStart7281303,
        ["7281304"] = self.OnSubStart7281304,
        ["7281305"] = self.OnSubStart7281305,
        ["7281306"] = self.OnSubStart7281306,
        ["7281307"] = self.OnSubStart7281307,
        ["7281308"] = self.OnSubStart7281308,
        ["7281309"] = self.OnSubStart7281309,
        ["7281310"] = self.OnSubStart7281310
    }
end

function Quest72813:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7281301"] = self.OnSubFinish7281301,
        ["7281302"] = self.OnSubFinish7281302,
        ["7281303"] = self.OnSubFinish7281303,
        ["7281304"] = self.OnSubFinish7281304,
        ["7281305"] = self.OnSubFinish7281305,
        ["7281306"] = self.OnSubFinish7281306,
        ["7281307"] = self.OnSubFinish7281307,
        ["7281308"] = self.OnSubFinish7281308,
        ["7281309"] = self.OnSubFinish7281309,
        ["7281310"] = self.OnSubFinish7281310
    }
end

function Quest72813:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7281301"] = self.OnSubFailed7281301,
        ["7281302"] = self.OnSubFailed7281302,
        ["7281303"] = self.OnSubFailed7281303,
        ["7281304"] = self.OnSubFailed7281304,
        ["7281305"] = self.OnSubFailed7281305,
        ["7281306"] = self.OnSubFailed7281306,
        ["7281307"] = self.OnSubFailed7281307,
        ["7281308"] = self.OnSubFailed7281308,
        ["7281309"] = self.OnSubFailed7281309,
        ["7281310"] = self.OnSubFailed7281310
    }
end

function Quest72813:Start()
    print("Start")
end

function Quest72813:OnDestroy()
    print("OnDestroy")
end

function Quest72813:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72813:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72813:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72813:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72813:NpcCreateWithBlackscreenByID(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(0, arg2, arg3)
    end)
end

function Quest72813:OnSubStart7281301(arg1)
    print("OnSubStart7281301")
end

function Quest72813:OnSubFinish7281301(arg1)
    print("OnSubFinish7281301")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
            arg1:CreateQuestNpcById(7281302, npcs.Npc3133Data.id, 1)
        end, nil, nil, "", false, true)
    end)
end

function Quest72813:OnSubFailed7281301(arg1)
    print("OnSubFailed7281301")
end

function Quest72813:OnSubStart7281302(arg1)
    print("OnSubStart7281302")
end

function Quest72813:OnSubFinish7281302(arg1)
    print("OnSubFinish7281302")
end

function Quest72813:OnSubFailed7281302(arg1)
    print("OnSubFailed7281302")
end

function Quest72813:OnSubStart7281303(arg1)
    print("OnSubStart7281303")
    actorMgr:CreateActorWithPos("Q72813Trigger1", "Actor/Gadget/Q72813Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q72813Yantian1").pos, sceneData:GetDummyPoint(3, "Q72813Yantian1").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc3133Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
end

function Quest72813:OnSubFinish7281303(arg1)
    print("OnSubFinish7281303")
    self:NarratorOnlyTask(datas.Narrator03, nil, "")
end

function Quest72813:OnSubFailed7281303(arg1)
    print("OnSubFailed7281303")
end

function Quest72813:OnSubStart7281304(arg1)
    print("OnSubStart7281304")
end

function Quest72813:OnSubFinish7281304(arg1)
    print("OnSubFinish7281304")
end

function Quest72813:OnSubFailed7281304(arg1)
    print("OnSubFailed7281304")
end

function Quest72813:OnSubStart7281305(arg1)
    print("OnSubStart7281305")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3133Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:Standby()
end

function Quest72813:OnSubFinish7281305(arg1)
    print("OnSubFinish7281305")
    self:SafeDestroyQuestNpc(npcs.Npc3133Data.alias, 3)
end

function Quest72813:OnSubFailed7281305(arg1)
    print("OnSubFailed7281305")
end

function Quest72813:OnSubStart7281306(arg1)
    print("OnSubStart7281306")
    actorMgr:CreateActorWithPos("Q72813Trigger2", "Actor/Gadget/Q72813Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q72813Ailani").pos, sceneData:GetDummyPoint(3, "Q72813Ailani").rot, true, false, 3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.NPC20088Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.NPC20088Data.alias):DoFreeStyle(1070, true, nil, true, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3133Data.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3146Data.id, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3139Data.id, 4)
    end)
end

function Quest72813:OnSubFinish7281306(arg1)
    print("OnSubFinish7281306")
end

function Quest72813:OnSubFailed7281306(arg1)
    print("OnSubFailed7281306")
end

function Quest72813:OnSubStart7281307(arg1)
    print("OnSubStart7281307")
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3137Data.id, 2)
    actorMgr:CreateActorWithPos("Q72813Trigger3", "Actor/Gadget/Q72813Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q72813Kaoshike").pos, sceneData:GetDummyPoint(3, "Q72813Kaoshike").rot, true, false, 3)
end

function Quest72813:OnSubFinish7281307(arg1)
    print("OnSubFinish7281307")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q72813Kaoshike").pos, 1.5, 2, false, true)
end

function Quest72813:OnSubFailed7281307(arg1)
    print("OnSubFailed7281307")
end

function Quest72813:OnSubStart7281308(arg1)
    print("OnSubStart7281308")
end

function Quest72813:OnSubFinish7281308(arg1)
    print("OnSubFinish7281308")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
            arg1:DestroyQuestNpcActor(npcs.Npc3137Data.alias, 3)
            arg1:NotifyTo(npcs.Npc3137Data.alias, 1, true)
        end, nil, nil, "", false, true)
    end)
end

function Quest72813:OnSubFailed7281308(arg1)
    print("OnSubFailed7281308")
end

function Quest72813:OnSubStart7281309(arg1)
    print("OnSubStart7281309")
    self:NotifyTo(npcs.Npc3137Data.alias, 1, true)
end

function Quest72813:OnSubFinish7281309(arg1)
    print("OnSubFinish7281309")
    self:SafeDestroyQuestNpc(npcs.NPC20088Data.alias, 3)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc1039Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3137Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3146Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3139Data.alias)
end

function Quest72813:OnSubFailed7281309(arg1)
    print("OnSubFailed7281309")
end

function Quest72813:OnSubStart7281310(arg1)
    print("OnSubStart7281310")
    self:LightNotifyTo(npcs.Npc3137Data.alias, 0, true)
end

function Quest72813:OnSubFinish7281310(arg1)
    print("OnSubFinish7281310")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3133Data.alias)
    actorUtils.ForceRefreshDaily("Npc3132")
end

function Quest72813:OnSubFailed7281310(arg1)
    print("OnSubFailed7281310")
end

return Quest72813
