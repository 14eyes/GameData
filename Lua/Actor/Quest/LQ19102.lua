require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19102 = class("Quest19102", QuestActorProxy)
Quest19102.defaultAlias = "Quest19102"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19102:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1910201"] = self.OnSubStart1910201,
        ["1910202"] = self.OnSubStart1910202,
        ["1910203"] = self.OnSubStart1910203,
        ["1910204"] = self.OnSubStart1910204,
        ["1910205"] = self.OnSubStart1910205,
        ["1910206"] = self.OnSubStart1910206,
        ["1910207"] = self.OnSubStart1910207,
        ["1910208"] = self.OnSubStart1910208,
        ["1910209"] = self.OnSubStart1910209,
        ["1910210"] = self.OnSubStart1910210,
        ["1910211"] = self.OnSubStart1910211,
        ["1910212"] = self.OnSubStart1910212,
        ["1910213"] = self.OnSubStart1910213,
        ["1910214"] = self.OnSubStart1910214
    }
end

function Quest19102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1910201"] = self.OnSubFinish1910201,
        ["1910202"] = self.OnSubFinish1910202,
        ["1910203"] = self.OnSubFinish1910203,
        ["1910204"] = self.OnSubFinish1910204,
        ["1910205"] = self.OnSubFinish1910205,
        ["1910206"] = self.OnSubFinish1910206,
        ["1910207"] = self.OnSubFinish1910207,
        ["1910208"] = self.OnSubFinish1910208,
        ["1910209"] = self.OnSubFinish1910209,
        ["1910210"] = self.OnSubFinish1910210,
        ["1910211"] = self.OnSubFinish1910211,
        ["1910212"] = self.OnSubFinish1910212,
        ["1910213"] = self.OnSubFinish1910213,
        ["1910214"] = self.OnSubFinish1910214
    }
end

function Quest19102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1910201"] = self.OnSubFailed1910201,
        ["1910202"] = self.OnSubFailed1910202,
        ["1910203"] = self.OnSubFailed1910203,
        ["1910204"] = self.OnSubFailed1910204,
        ["1910205"] = self.OnSubFailed1910205,
        ["1910206"] = self.OnSubFailed1910206,
        ["1910207"] = self.OnSubFailed1910207,
        ["1910208"] = self.OnSubFailed1910208,
        ["1910209"] = self.OnSubFailed1910209,
        ["1910210"] = self.OnSubFailed1910210,
        ["1910211"] = self.OnSubFailed1910211,
        ["1910212"] = self.OnSubFailed1910212,
        ["1910213"] = self.OnSubFailed1910213,
        ["1910214"] = self.OnSubFailed1910214
    }
end

function Quest19102:Start()
    print("Start")
end

function Quest19102:OnDestroy()
    print("OnDestroy")
end

function Quest19102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19102:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10803Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10804Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10805Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1435Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
    self:ActorDestroy("Q1910206Trigger")
    self:ActorDestroy("Q1910208Trigger")
    self:ActorDestroy("Q1910210Trigger")
    self:ActorDestroy("Q1910212Trigger")
end

function Quest19102:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19102:OnSubStart1910201(arg1)
    print("OnSubStart1910201")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910201)
end

function Quest19102:OnSubFinish1910201(arg1)
    print("OnSubFinish1910201")
end

function Quest19102:OnSubFailed1910201(arg1)
    print("OnSubFailed1910201")
end

function Quest19102:OnSubStart1910202(arg1)
    print("OnSubStart1910202")
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_DionaData.alias, 19102)
    self:NpcRunToRouteTask(questNpcActor, datas.RoutePointsData1910202, function(arg1)
        actorMgr:GetActor("19102"):FinishQuestID(false, 1910202)
    end)
end

function Quest19102:OnSubFinish1910202(arg1)
    print("OnSubFinish1910202")
    self:GetQuestNpcActor(npcs.Coop_DionaData.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP103901Diona03").rot))
end

function Quest19102:OnSubFailed1910202(arg1)
    print("OnSubFailed1910202")
end

function Quest19102:OnSubStart1910203(arg1)
    print("OnSubStart1910203")
    self:CreateQuestNpc(arg1, npcs.Npc1435Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910202)
end

function Quest19102:OnSubFinish1910203(arg1)
    print("OnSubFinish1910203")
    self:SafeDestroyQuestNpc(npcs.Npc1435Data.alias, 3)
end

function Quest19102:OnSubFailed1910203(arg1)
    print("OnSubFailed1910203")
end

function Quest19102:OnSubStart1910204(arg1)
    print("OnSubStart1910204")
    self:NotifyTo(npcs.Npc1463Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1431Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Coop_DionaData.alias, 19102)
    self:NpcRunToRouteTask(questNpcActor, datas.RoutePointsData1910204, function(arg1)
        actorMgr:GetActor("19102"):FinishQuestID(false, 1910204)
    end)
end

function Quest19102:OnSubFinish1910204(arg1)
    print("OnSubFinish1910204")
    self:GetQuestNpcActor(npcs.Coop_DionaData.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "COOP103901Diona04").rot))
end

function Quest19102:OnSubFailed1910204(arg1)
    print("OnSubFailed1910204")
end

function Quest19102:OnSubStart1910205(arg1)
    print("OnSubStart1910205")
    self:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 1)
    self:NotifyTo(npcs.Npc1463Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1431Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910203)
end

function Quest19102:OnSubFinish1910205(arg1)
    print("OnSubFinish1910205")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1419Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1463Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
end

function Quest19102:OnSubFailed1910205(arg1)
    print("OnSubFailed1910205")
end

function Quest19102:OnSubStart1910206(arg1)
    print("OnSubStart1910206")
    self:CreateQuestNpc(arg1, npcs.Npc10803Data.id, 2)
    actorMgr:CreateActorWithPos("Q1910206Trigger", "Actor/Gadget/Q1910206Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona05_01").pos, sceneData:GetDummyPoint(3, "COOP103901Diona05_01").rot, true, false, 3)
end

function Quest19102:OnSubFinish1910206(arg1)
    print("OnSubFinish1910206")
end

function Quest19102:OnSubFailed1910206(arg1)
    print("OnSubFailed1910206")
end

function Quest19102:OnSubStart1910207(arg1)
    print("OnSubStart1910207")
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910204)
    self:RequestInteraction(npcs.Npc10803Data.alias)
end

function Quest19102:OnSubFinish1910207(arg1)
    print("OnSubFinish1910207")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10803Data.alias, 3)
end

function Quest19102:OnSubFailed1910207(arg1)
    print("OnSubFailed1910207")
end

function Quest19102:OnSubStart1910208(arg1)
    print("OnSubStart1910208")
    self:CreateQuestNpc(arg1, npcs.Npc10804Data.id, 2)
    actorMgr:CreateActorWithPos("Q1910208Trigger", "Actor/Gadget/Q1910208Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona06_01").pos, sceneData:GetDummyPoint(3, "COOP103901Diona06_01").rot, true, false)
end

function Quest19102:OnSubFinish1910208(arg1)
    print("OnSubFinish1910208")
end

function Quest19102:OnSubFailed1910208(arg1)
    print("OnSubFailed1910208")
end

function Quest19102:OnSubStart1910209(arg1)
    print("OnSubStart1910209")
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910205)
    self:RequestInteraction(npcs.Npc10804Data.alias)
end

function Quest19102:OnSubFinish1910209(arg1)
    print("OnSubFinish1910209")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10804Data.alias, 3)
end

function Quest19102:OnSubFailed1910209(arg1)
    print("OnSubFailed1910209")
end

function Quest19102:OnSubStart1910210(arg1)
    print("OnSubStart1910210")
    self:CreateQuestNpc(arg1, npcs.Npc10805Data.id, 2)
    actorMgr:CreateActorWithPos("Q1910210Trigger", "Actor/Gadget/Q1910210Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona07_01").pos, sceneData:GetDummyPoint(3, "COOP103901Diona07_01").rot, true, false, 3)
end

function Quest19102:OnSubFinish1910210(arg1)
    print("OnSubFinish1910210")
end

function Quest19102:OnSubFailed1910210(arg1)
    print("OnSubFailed1910210")
end

function Quest19102:OnSubStart1910211(arg1)
    print("OnSubStart1910211")
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910206)
    self:RequestInteraction(npcs.Npc10805Data.alias)
end

function Quest19102:OnSubFinish1910211(arg1)
    print("OnSubFinish1910211")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10805Data.alias, 3)
end

function Quest19102:OnSubFailed1910211(arg1)
    print("OnSubFailed1910211")
end

function Quest19102:OnSubStart1910212(arg1)
    print("OnSubStart1910212")
    self:NotifyTo(npcs.Npc1431Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1910212Trigger", "Actor/Gadget/Q1910212Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "COOP103901Diona01_01").pos, sceneData:GetDummyPoint(3, "COOP103901Diona01_01").rot, true, false)
end

function Quest19102:OnSubFinish1910212(arg1)
    print("OnSubFinish1910212")
end

function Quest19102:OnSubFailed1910212(arg1)
    print("OnSubFailed1910212")
end

function Quest19102:OnSubStart1910213(arg1)
    print("OnSubStart1910213")
    self:NotifyTo(npcs.Npc1431Data.alias, 1, true)
    self:ShowBlackScreen(0.2, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(103901, 1910207)
        arg1_2:RequestInteraction(npcs.Coop_DionaData.alias)
    end, nil, nil, "")
end

function Quest19102:OnSubFinish1910213(arg1)
    print("OnSubFinish1910213")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:LightNotifyTo(npcs.Npc1431Data.alias, 0, true)
end

function Quest19102:OnSubFailed1910213(arg1)
    print("OnSubFailed1910213")
end

function Quest19102:OnSubStart1910214(arg1)
    print("OnSubStart1910214")
end

function Quest19102:OnSubFinish1910214(arg1)
    print("OnSubFinish1910214")
end

function Quest19102:OnSubFailed1910214(arg1)
    print("OnSubFailed1910214")
end

return Quest19102
