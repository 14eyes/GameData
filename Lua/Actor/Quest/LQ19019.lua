require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19019 = class("Quest19019", QuestActorProxy)
Quest19019.defaultAlias = "Quest19019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901901"] = self.OnSubStart1901901,
        ["1901902"] = self.OnSubStart1901902,
        ["1901908"] = self.OnSubStart1901908,
        ["1901903"] = self.OnSubStart1901903,
        ["1901904"] = self.OnSubStart1901904,
        ["1901914"] = self.OnSubStart1901914,
        ["1901905"] = self.OnSubStart1901905,
        ["1901906"] = self.OnSubStart1901906,
        ["1901909"] = self.OnSubStart1901909,
        ["1901910"] = self.OnSubStart1901910,
        ["1901911"] = self.OnSubStart1901911,
        ["1901912"] = self.OnSubStart1901912,
        ["1901907"] = self.OnSubStart1901907,
        ["1901915"] = self.OnSubStart1901915,
        ["1901916"] = self.OnSubStart1901916,
        ["1901913"] = self.OnSubStart1901913
    }
end

function Quest19019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901901"] = self.OnSubFinish1901901,
        ["1901902"] = self.OnSubFinish1901902,
        ["1901908"] = self.OnSubFinish1901908,
        ["1901903"] = self.OnSubFinish1901903,
        ["1901904"] = self.OnSubFinish1901904,
        ["1901914"] = self.OnSubFinish1901914,
        ["1901905"] = self.OnSubFinish1901905,
        ["1901906"] = self.OnSubFinish1901906,
        ["1901909"] = self.OnSubFinish1901909,
        ["1901910"] = self.OnSubFinish1901910,
        ["1901911"] = self.OnSubFinish1901911,
        ["1901912"] = self.OnSubFinish1901912,
        ["1901907"] = self.OnSubFinish1901907,
        ["1901915"] = self.OnSubFinish1901915,
        ["1901916"] = self.OnSubFinish1901916,
        ["1901913"] = self.OnSubFinish1901913
    }
end

function Quest19019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901901"] = self.OnSubFailed1901901,
        ["1901902"] = self.OnSubFailed1901902,
        ["1901908"] = self.OnSubFailed1901908,
        ["1901903"] = self.OnSubFailed1901903,
        ["1901904"] = self.OnSubFailed1901904,
        ["1901914"] = self.OnSubFailed1901914,
        ["1901905"] = self.OnSubFailed1901905,
        ["1901906"] = self.OnSubFailed1901906,
        ["1901909"] = self.OnSubFailed1901909,
        ["1901910"] = self.OnSubFailed1901910,
        ["1901911"] = self.OnSubFailed1901911,
        ["1901912"] = self.OnSubFailed1901912,
        ["1901907"] = self.OnSubFailed1901907,
        ["1901913"] = self.OnSubFailed1901913
    }
end

function Quest19019:Start()
    print("Start")
end

function Quest19019:OnDestroy()
    print("OnDestroy")
end

function Quest19019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19019:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_GorouData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12323Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12324Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3109Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3108Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3108Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19019Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19019Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19019Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q19019Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q19019Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q19019Trigger5", 3, false)
end

function Quest19019:MovePause()
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19019:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19019:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1901911 then
        actorUtils.FinishQuestID(false, 1901911)
    elseif arg1 == 1901912 then
        actorUtils.FinishQuestID(false, 1901912)
    elseif arg1 == 1901907 then
        actorUtils.FinishQuestID(false, 1901907)
    elseif arg1 == 1901915 then
        actorUtils.FinishQuestID(false, 1901915)
    end
end

function Quest19019:OnSubStart1901901(arg1)
    print("OnSubStart1901901")
    actorMgr:CreateActorWithPos("Q19019Trigger", "Actor/Gadget/Q19019Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q19019_Wulang1").pos, sceneData:GetDummyPoint(3, "Q19019_Wulang1").rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12323Data.id, 2)
end

function Quest19019:OnSubFinish1901901(arg1)
    print("OnSubFinish1901901")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1901902, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1901901)
end

function Quest19019:OnSubFailed1901901(arg1)
    print("OnSubFailed1901901")
end

function Quest19019:OnSubStart1901902(arg1)
    print("OnSubStart1901902")
end

function Quest19019:OnSubFinish1901902(arg1)
    print("OnSubFinish1901902")
end

function Quest19019:OnSubFailed1901902(arg1)
    print("OnSubFailed1901902")
end

function Quest19019:OnSubStart1901908(arg1)
    print("OnSubStart1901908")
    self:CreateQuestNpc(arg1, npcs.Npc12324Data.id, 2)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias, 19019)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actorUtils.FinishQuestID(false, 1901908)
        end, nil, nil, arg1_2.MovePause, arg1_2.MoveResume, nil, false)

        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DisableInteeHeadCtrl(true)
        arg1_2:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.GorouKaiche1, nil, 19019)
        end)
    end)
end

function Quest19019:OnSubFinish1901908(arg1)
    print("OnSubFinish1901908")
    self:GetQuestNpcActor(npcs.Coop_GorouData.alias):EnableHeadCtrl(false)
end

function Quest19019:OnSubFailed1901908(arg1)
    print("OnSubFailed1901908")
end

function Quest19019:OnSubStart1901903(arg1)
    print("OnSubStart1901903")
    self:RequestCoopInteractionFromSubStartPoint(105501, 1901902)
    self:RequestInteraction(npcs.Coop_GorouData.alias)
end

function Quest19019:OnSubFinish1901903(arg1)
    print("OnSubFinish1901903")
end

function Quest19019:OnSubFailed1901903(arg1)
    print("OnSubFailed1901903")
end

function Quest19019:OnSubStart1901904(arg1)
    print("OnSubStart1901904")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_GorouData.id, 0)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias, 19019)
        arg1_2:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 6, 4, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            actorUtils.FinishQuestID(false, 1901904)
        end, nil, nil, arg1_2.MovePause, arg1_2.MoveResume, nil, false)

        arg1_2:GetQuestNpcActor(npcs.Coop_GorouData.alias):DisableInteeHeadCtrl(true)
        arg1_2:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.GorouKaiche2, nil, 19019)
        end)
    end)
end

function Quest19019:OnSubFinish1901904(arg1)
    print("OnSubFinish1901904")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1901914, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1901903)
end

function Quest19019:OnSubFailed1901904(arg1)
    print("OnSubFailed1901904")
end

function Quest19019:OnSubStart1901914(arg1)
    print("OnSubStart1901914")
end

function Quest19019:OnSubFinish1901914(arg1)
    print("OnSubFinish1901914")
    self:SafeDestroyQuestNpc(npcs.Npc12323Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12324Data.alias, 3)
end

function Quest19019:OnSubFailed1901914(arg1)
    print("OnSubFailed1901914")
end

function Quest19019:OnSubStart1901905(arg1)
    print("OnSubStart1901905")
    actorMgr:CreateActorWithPos("Q19019Trigger3", "Actor/Gadget/Q19019Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q19019_Wulang4").pos, sceneData:GetDummyPoint(3, "Q19019_Wulang4").rot, true, false, 3)
end

function Quest19019:OnSubFinish1901905(arg1)
    print("OnSubFinish1901905")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1901906, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1901904)
end

function Quest19019:OnSubFailed1901905(arg1)
    print("OnSubFailed1901905")
end

function Quest19019:OnSubStart1901906(arg1)
    print("OnSubStart1901906")
end

function Quest19019:OnSubFinish1901906(arg1)
    print("OnSubFinish1901906")
end

function Quest19019:OnSubFailed1901906(arg1)
    print("OnSubFailed1901906")
end

function Quest19019:OnSubStart1901909(arg1)
    print("OnSubStart1901909")
    actorMgr:CreateActorWithPos("Q19019Trigger4", "Actor/Gadget/Q19019Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q19019_Wulang6").pos, sceneData:GetDummyPoint(3, "Q19019_Wulang6").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3108Data.alias, 1, true)
end

function Quest19019:OnSubFinish1901909(arg1)
    print("OnSubFinish1901909")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(1901910, npcs.Coop_GorouData.id, 0)
        arg1:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:RequestCoopInteractionFromSubStartPoint(105501, 1901905)
end

function Quest19019:OnSubFailed1901909(arg1)
    print("OnSubFailed1901909")
end

function Quest19019:OnSubStart1901910(arg1)
    print("OnSubStart1901910")
end

function Quest19019:OnSubFinish1901910(arg1)
    print("OnSubFinish1901910")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3108Data.alias, 0, true)
    end)
end

function Quest19019:OnSubFailed1901910(arg1)
    print("OnSubFailed1901910")
end

function Quest19019:OnSubStart1901911(arg1)
    print("OnSubStart1901911")
end

function Quest19019:OnSubFinish1901911(arg1)
    print("OnSubFinish1901911")
end

function Quest19019:OnSubFailed1901911(arg1)
    print("OnSubFailed1901911")
end

function Quest19019:OnSubStart1901912(arg1)
    print("OnSubStart1901912")
end

function Quest19019:OnSubFinish1901912(arg1)
    print("OnSubFinish1901912")
end

function Quest19019:OnSubFailed1901912(arg1)
    print("OnSubFailed1901912")
end

function Quest19019:OnSubStart1901907(arg1)
    print("OnSubStart1901907")
end

function Quest19019:OnSubFinish1901907(arg1)
    print("OnSubFinish1901907")
end

function Quest19019:OnSubFailed1901907(arg1)
    print("OnSubFailed1901907")
end

function Quest19019:OnSubStart1901915(arg1)
    print("OnSubStart1901915")
end

function Quest19019:OnSubFinish1901915(arg1)
    print("OnSubFinish1901915")
end

function Quest19019:OnSubStart1901916(arg1)
    print("OnSubStart1901916")
end

function Quest19019:OnSubFinish1901916(arg1)
    print("OnSubFinish1901916")
end

function Quest19019:OnSubStart1901913(arg1)
    print("OnSubStart1901913")
    self:RequestCoopInteractionFromSubStartPoint(105501, 1901906)
    actorMgr:CreateActorWithPos("Q19019Trigger5", "Actor/Gadget/Q19019Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q19019_Wulang8").pos, sceneData:GetDummyPoint(3, "Q19019_Wulang8").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3109Data.alias, 1, true)
end

function Quest19019:OnSubFinish1901913(arg1)
    print("OnSubFinish1901913")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    end)
end

function Quest19019:OnSubFailed1901913(arg1)
    print("OnSubFailed1901913")
end

return Quest19019
