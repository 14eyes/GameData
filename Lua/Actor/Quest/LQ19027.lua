require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19027 = class("Quest19027", QuestActorProxy)
Quest19027.defaultAlias = "Quest19027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902702"] = self.OnSubStart1902702,
        ["1902703"] = self.OnSubStart1902703,
        ["1902704"] = self.OnSubStart1902704,
        ["1902705"] = self.OnSubStart1902705,
        ["1902706"] = self.OnSubStart1902706,
        ["1902707"] = self.OnSubStart1902707,
        ["1902708"] = self.OnSubStart1902708,
        ["1902701"] = self.OnSubStart1902701
    }
end

function Quest19027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902702"] = self.OnSubFinish1902702,
        ["1902703"] = self.OnSubFinish1902703,
        ["1902704"] = self.OnSubFinish1902704,
        ["1902705"] = self.OnSubFinish1902705,
        ["1902706"] = self.OnSubFinish1902706,
        ["1902707"] = self.OnSubFinish1902707,
        ["1902708"] = self.OnSubFinish1902708,
        ["1902701"] = self.OnSubFinish1902701
    }
end

function Quest19027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902702"] = self.OnSubFailed1902702,
        ["1902703"] = self.OnSubFailed1902703,
        ["1902704"] = self.OnSubFailed1902704,
        ["1902705"] = self.OnSubFailed1902705,
        ["1902706"] = self.OnSubFailed1902706,
        ["1902707"] = self.OnSubFailed1902707,
        ["1902708"] = self.OnSubFailed1902708,
        ["1902701"] = self.OnSubFailed1902701
    }
end

function Quest19027:Start()
    print("Start")
end

function Quest19027:OnDestroy()
    print("OnDestroy")
end

function Quest19027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12097Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12325Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12095Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19027Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19027Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19027Trigger2", 3, false)
    self:ClearNarratorTask()
    self:ActorDestroy("Q19027Trigger4")
    self:ActorDestroy("Q19027Trigger3")
end

function Quest19027:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19027:MovePause()
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19027:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19027:OnSubStart1902702(arg1)
    print("OnSubStart1902702")
    actorMgr:CreateActorWithPos("Q19027Trigger", "Actor/Gadget/Q19027Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q19027_Wulang2").pos, sceneData:GetDummyPoint(3, "Q19027_Wulang2").rot, true, false, 3)
end

function Quest19027:OnSubFinish1902702(arg1)
    print("OnSubFinish1902702")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902703, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902701)
end

function Quest19027:OnSubFailed1902702(arg1)
    print("OnSubFailed1902702")
end

function Quest19027:OnSubStart1902703(arg1)
    print("OnSubStart1902703")
end

function Quest19027:OnSubFinish1902703(arg1)
    print("OnSubFinish1902703")
end

function Quest19027:OnSubFailed1902703(arg1)
    print("OnSubFailed1902703")
end

function Quest19027:OnSubStart1902704(arg1)
    print("OnSubStart1902704")
    self:CreateQuestNpc(arg1, npcs.Npc12097Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12204Data.id, 0)
    actorMgr:CreateActorWithPos("Q19027Trigger1", "Actor/Gadget/Q19027Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q19027_Wulang3").pos, sceneData:GetDummyPoint(3, "Q19027_Wulang3").rot, true, false, 3)
end

function Quest19027:OnSubFinish1902704(arg1)
    print("OnSubFinish1902704")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1902705, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902702)
end

function Quest19027:OnSubFailed1902704(arg1)
    print("OnSubFailed1902704")
end

function Quest19027:OnSubStart1902705(arg1)
    print("OnSubStart1902705")
end

function Quest19027:OnSubFinish1902705(arg1)
    print("OnSubFinish1902705")
end

function Quest19027:OnSubFailed1902705(arg1)
    print("OnSubFailed1902705")
end

function Quest19027:OnSubStart1902706(arg1)
    print("OnSubStart1902706")
    self:CreateQuestNpc(arg1, npcs.Npc12325Data.id, 2)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias, 19027)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actorUtils.FinishQuestID(false, 1902706)
        end, nil, nil, arg1_2.MovePause, arg1_2.MoveResume, nil, false)

        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DisableInteeHeadCtrl(true)
        arg1_2:CallDelay(3, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.RunKaiche, nil, 19027)
        end)
    end)
end

function Quest19027:OnSubFinish1902706(arg1)
    print("OnSubFinish1902706")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1902703)
end

function Quest19027:OnSubFailed1902706(arg1)
    print("OnSubFailed1902706")
end

function Quest19027:OnSubStart1902707(arg1)
    print("OnSubStart1902707")
    self:RequestCoopInteractionFromSubStartPoint(105501, 1902703)
    actorMgr:CreateActorWithPos("Q19027Trigger4", "Actor/Gadget/Q19027Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "C1902703_N12061_321000175").pos, sceneData:GetDummyPoint(3, "C1902703_N12061_321000175").rot, true, false, 3)
end

function Quest19027:OnSubFinish1902707(arg1)
    print("OnSubFinish1902707")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:RequestCoopInteractionFromSubStartPoint(105501, 1902704)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, {"QUEST_Message_Q1902703"}, 3)
    end)

    actorMgr:CreateActorWithPos("Q19027Trigger3", "Actor/Gadget/Q19027Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "C1902704_N505").pos, sceneData:GetDummyPoint(3, "C1902704_N505").rot, true, false, 3)
end

function Quest19027:OnSubFailed1902707(arg1)
    print("OnSubFailed1902707")
end

function Quest19027:OnSubStart1902708(arg1)
    print("OnSubStart1902708")
end

function Quest19027:OnSubFinish1902708(arg1)
    print("OnSubFinish1902708")
end

function Quest19027:OnSubFailed1902708(arg1)
    print("OnSubFailed1902708")
end

function Quest19027:OnSubStart1902701(arg1)
    print("OnSubStart1902701")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        arg1_2:RequestCoopInteractionFromSubStartPoint(105501, 1902701)
    end)
end

function Quest19027:OnSubFinish1902701(arg1)
    print("OnSubFinish1902701")
end

function Quest19027:OnSubFailed1902701(arg1)
    print("OnSubFailed1902701")
end

return Quest19027
