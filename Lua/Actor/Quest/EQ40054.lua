require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40054 = class("Quest40054", QuestActorProxy)
Quest40054.defaultAlias = "Quest40054"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40054:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4005401"] = self.OnSubStart4005401,
        ["4005402"] = self.OnSubStart4005402,
        ["4005403"] = self.OnSubStart4005403,
        ["4005404"] = self.OnSubStart4005404
    }
end

function Quest40054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4005401"] = self.OnSubFinish4005401,
        ["4005402"] = self.OnSubFinish4005402,
        ["4005403"] = self.OnSubFinish4005403,
        ["4005404"] = self.OnSubFinish4005404
    }
end

function Quest40054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40054:Start()
    print("Start")
end

function Quest40054:OnDestroy()
    print("OnDestroy")
end

function Quest40054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40054:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3004Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3074Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3032Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3033Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3074Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4005402Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4005403Trigger", 3, false)
end

function Quest40054:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40054:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40054:OnSubStart4005401(arg1)
    print("OnSubStart4005401")
end

function Quest40054:OnSubFinish4005401(arg1)
    print("OnSubFinish4005401")
    self:SafeDestroyQuestNpc(npcs.Npc3004Data.alias, 3)
end

function Quest40054:OnSubStart4005402(arg1)
    print("OnSubStart4005402")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3000Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3190Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3030Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc30139Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc3029Data.id, 6)
    self:DailyNpcSafeHideSelf(npcs.Npc3032Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3033Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005402Trigger", "Actor/Gadget/Q4005402Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005402_N1034").pos, sceneData:GetDummyPoint(3, "Q4005402_N1034").rot, true, false, 3)
end

function Quest40054:OnSubFinish4005402(arg1)
    print("OnSubFinish4005402")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3000Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3190Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3029Data.alias, 3)
end

function Quest40054:OnSubStart4005403(arg1)
    print("OnSubStart4005403")
    self:DailyNpcSafeHideSelf(npcs.Npc3032Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3033Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3074Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005403Trigger", "Actor/Gadget/Q4005403Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").pos, sceneData:GetDummyPoint(3, "Q4005403_guide_WuGeXianGuangChang").rot, true, false, 3)
end

function Quest40054:OnSubFinish4005403(arg1)
    print("OnSubFinish4005403")
end

function Quest40054:OnSubStart4005404(arg1)
    print("OnSubStart4005404")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1034Data.id, 1, npcs.Npc1034Data.alias)
    self:LightNotifyTo(npcs.Npc3032Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3033Data.alias, 0, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3074Data.alias, 1, true)
end

function Quest40054:OnSubFinish4005404(arg1)
    print("OnSubFinish4005404")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId4005404)
    self:LightNotifyTo(npcs.Npc3074Data.alias, 0, true)
end

return Quest40054
