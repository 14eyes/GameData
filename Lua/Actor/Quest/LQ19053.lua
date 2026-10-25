require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19053 = class("Quest19053", QuestActorProxy)
Quest19053.defaultAlias = "Quest19053"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19053:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19053:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1905301"] = self.OnSubStart1905301,
        ["1905302"] = self.OnSubStart1905302,
        ["1905303"] = self.OnSubStart1905303,
        ["1905304"] = self.OnSubStart1905304,
        ["1905305"] = self.OnSubStart1905305,
        ["1905310"] = self.OnSubStart1905310,
        ["1905306"] = self.OnSubStart1905306,
        ["1905307"] = self.OnSubStart1905307,
        ["1905308"] = self.OnSubStart1905308,
        ["1905309"] = self.OnSubStart1905309
    }
end

function Quest19053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1905301"] = self.OnSubFinish1905301,
        ["1905302"] = self.OnSubFinish1905302,
        ["1905303"] = self.OnSubFinish1905303,
        ["1905304"] = self.OnSubFinish1905304,
        ["1905305"] = self.OnSubFinish1905305,
        ["1905310"] = self.OnSubFinish1905310,
        ["1905306"] = self.OnSubFinish1905306,
        ["1905307"] = self.OnSubFinish1905307,
        ["1905308"] = self.OnSubFinish1905308,
        ["1905309"] = self.OnSubFinish1905309
    }
end

function Quest19053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19053:Start()
    print("Start")
end

function Quest19053:OnDestroy()
    print("OnDestroy")
end

function Quest19053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19053:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12219Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12220Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12229Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12288Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12289Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1905301Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905302Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905303Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905304Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905308Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1905310Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q190530201Trigger", 3, false)
end

function Quest19053:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest19053:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowReadingDialog(101616)
    end
end

function Quest19053:OnSubStart1905301(arg1)
    print("OnSubStart1905301")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12219Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12229Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12229Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12288Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12288Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12289Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12289Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Coop_BeidouData.alias):HideSelf()
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905306)
    actorMgr:CreateActorWithPos("Q1905301Trigger", "Actor/Gadget/Q1905301Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101GuiLi01").pos, sceneData:GetDummyPoint(3, "COOP10240101GuiLi01").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1905302Trigger", "Actor/Gadget/Q1905302Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Daobao01").pos, sceneData:GetDummyPoint(3, "COOP10240101Daobao01").rot, true, false, 3)
end

function Quest19053:OnSubFinish1905301(arg1)
    print("OnSubFinish1905301")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:RemoveCoopInteractionData(102401)
end

function Quest19053:OnSubStart1905302(arg1)
    print("OnSubStart1905302")
    self:GetQuestNpcActor(npcs.Npc12229Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12288Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12289Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905301)
    actorMgr:CreateActorWithPos("Q190530201Trigger", "Actor/Gadget/Q190530201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Daobao01").pos, sceneData:GetDummyPoint(3, "COOP10240101Daobao01").rot, true, false, 3)
end

function Quest19053:OnSubFinish1905302(arg1)
    print("OnSubFinish1905302")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12219Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12229Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12288Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12289Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId1905302)
end

function Quest19053:OnSubStart1905303(arg1)
    print("OnSubStart1905303")
    actorMgr:CreateActorWithPos("Q1905303Trigger", "Actor/Gadget/Q1905303Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Seach01").pos, sceneData:GetDummyPoint(3, "COOP10240101Seach01").rot, true, false, 3)
end

function Quest19053:OnSubFinish1905303(arg1)
    print("OnSubFinish1905303")
    self:NarratorOnlyTaskByData(datas.NarratorWithId190530302)
end

function Quest19053:OnSubStart1905304(arg1)
    print("OnSubStart1905304")
    actorMgr:CreateActorWithPos("Q1905304Trigger", "Actor/Gadget/Q1905304Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Seach02").pos, sceneData:GetDummyPoint(3, "COOP10240101Seach02").rot, true, false, 3)
end

function Quest19053:OnSubFinish1905304(arg1)
    print("OnSubFinish1905304")
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905302)
end

function Quest19053:OnSubStart1905305(arg1)
    print("OnSubStart1905305")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_BeidouData.id, 1, npcs.Coop_BeidouData.alias)
end

function Quest19053:OnSubFinish1905305(arg1)
    print("OnSubFinish1905305")
    self:SafeDestroyQuestNpc(npcs.Npc12219Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12229Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12288Data.alias, 3)
end

function Quest19053:OnSubStart1905310(arg1)
    print("OnSubStart1905310")
    self:CreateQuestNpc(arg1, npcs.Coop_BeidouData.id, 1)
    self:GetQuestNpcActor(npcs.Coop_BeidouData.alias):HideSelf()
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905305)
    actorMgr:CreateActorWithPos("Q1905310Trigger", "Actor/Gadget/Q1905310Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou24").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou24").rot, true, false, 3)
end

function Quest19053:OnSubFinish1905310(arg1)
    print("OnSubFinish1905310")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12219Data.alias, 3)
end

function Quest19053:OnSubStart1905306(arg1)
    print("OnSubStart1905306")
end

function Quest19053:OnSubFinish1905306(arg1)
    print("OnSubFinish1905306")
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905303)
end

function Quest19053:OnSubStart1905307(arg1)
    print("OnSubStart1905307")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_BeidouData.id, 1, npcs.Coop_BeidouData.alias)
end

function Quest19053:OnSubFinish1905307(arg1)
    print("OnSubFinish1905307")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12219Data.alias, 3)
end

function Quest19053:OnSubStart1905308(arg1)
    print("OnSubStart1905308")
    self:CreateQuestNpc(arg1, npcs.Npc12220Data.id, 3)
    actorMgr:CreateActorWithPos("Q1905308Trigger", "Actor/Gadget/Q1905308Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP10240101Beidou16").pos, sceneData:GetDummyPoint(3, "COOP10240101Beidou16").rot, true, false, 3)
end

function Quest19053:OnSubFinish1905308(arg1)
    print("OnSubFinish1905308")
    self:RequestCoopInteractionFromSubStartPoint(102401, 1905304)
end

function Quest19053:OnSubStart1905309(arg1)
    print("OnSubStart1905309")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_BeidouData.id, 1, npcs.Coop_BeidouData.alias)
end

function Quest19053:OnSubFinish1905309(arg1)
    print("OnSubFinish1905309")
    self:SafeDestroyQuestNpc(npcs.Coop_BeidouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12219Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12220Data.alias, 3)
end

return Quest19053
