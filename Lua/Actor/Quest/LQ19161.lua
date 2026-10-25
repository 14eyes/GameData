require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19161 = class("Quest19161", QuestActorProxy)
Quest19161.defaultAlias = "Quest19161"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas
local itemCount = 0
local n = 0
local v = 0

function Quest19161:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19161:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1916101"] = self.OnSubStart1916101,
        ["1916102"] = self.OnSubStart1916102,
        ["1916104"] = self.OnSubStart1916104,
        ["1916115"] = self.OnSubStart1916115,
        ["1916110"] = self.OnSubStart1916110,
        ["1916105"] = self.OnSubStart1916105,
        ["1916135"] = self.OnSubStart1916135,
        ["1916134"] = self.OnSubStart1916134,
        ["1916133"] = self.OnSubStart1916133,
        ["1916132"] = self.OnSubStart1916132,
        ["1916131"] = self.OnSubStart1916131,
        ["1916130"] = self.OnSubStart1916130,
        ["1916129"] = self.OnSubStart1916129,
        ["1916128"] = self.OnSubStart1916128,
        ["1916127"] = self.OnSubStart1916127,
        ["1916126"] = self.OnSubStart1916126,
        ["1916106"] = self.OnSubStart1916106,
        ["1916107"] = self.OnSubStart1916107,
        ["1916124"] = self.OnSubStart1916124,
        ["1916123"] = self.OnSubStart1916123,
        ["1916122"] = self.OnSubStart1916122,
        ["1916121"] = self.OnSubStart1916121,
        ["1916120"] = self.OnSubStart1916120,
        ["1916119"] = self.OnSubStart1916119,
        ["1916118"] = self.OnSubStart1916118,
        ["1916117"] = self.OnSubStart1916117,
        ["1916116"] = self.OnSubStart1916116,
        ["1916125"] = self.OnSubStart1916125,
        ["1916111"] = self.OnSubStart1916111,
        ["1916112"] = self.OnSubStart1916112,
        ["1916108"] = self.OnSubStart1916108
    }
end

function Quest19161:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1916101"] = self.OnSubFinish1916101,
        ["1916102"] = self.OnSubFinish1916102,
        ["1916104"] = self.OnSubFinish1916104,
        ["1916115"] = self.OnSubFinish1916115,
        ["1916110"] = self.OnSubFinish1916110,
        ["1916105"] = self.OnSubFinish1916105,
        ["1916135"] = self.OnSubFinish1916135,
        ["1916134"] = self.OnSubFinish1916134,
        ["1916133"] = self.OnSubFinish1916133,
        ["1916132"] = self.OnSubFinish1916132,
        ["1916131"] = self.OnSubFinish1916131,
        ["1916130"] = self.OnSubFinish1916130,
        ["1916129"] = self.OnSubFinish1916129,
        ["1916128"] = self.OnSubFinish1916128,
        ["1916127"] = self.OnSubFinish1916127,
        ["1916126"] = self.OnSubFinish1916126,
        ["1916106"] = self.OnSubFinish1916106,
        ["1916107"] = self.OnSubFinish1916107,
        ["1916124"] = self.OnSubFinish1916124,
        ["1916123"] = self.OnSubFinish1916123,
        ["1916122"] = self.OnSubFinish1916122,
        ["1916121"] = self.OnSubFinish1916121,
        ["1916120"] = self.OnSubFinish1916120,
        ["1916119"] = self.OnSubFinish1916119,
        ["1916118"] = self.OnSubFinish1916118,
        ["1916117"] = self.OnSubFinish1916117,
        ["1916116"] = self.OnSubFinish1916116,
        ["1916125"] = self.OnSubFinish1916125,
        ["1916111"] = self.OnSubFinish1916111,
        ["1916112"] = self.OnSubFinish1916112,
        ["1916108"] = self.OnSubFinish1916108
    }
end

function Quest19161:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1916104"] = self.OnSubFailed1916104}
end

function Quest19161:Start()
    print("Start")
end

function Quest19161:OnDestroy()
    print("OnDestroy")
end

function Quest19161:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19161:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19161:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    actorMgr:DestroyEntityActor("Q19161Trigger", 3, false)
end

function Quest19161:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19161:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest19161:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19161:MovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("19161")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest19161:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest19161:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        itemCount = actorUtils.GetItemCount(120223)
        n = actorUtils.GetItemCount(120224)
        v = actorUtils.GetItemCount(120225)
    end
end

function Quest19161:OnSubStart1916101(arg1)
    print("OnSubStart1916101")
    actorMgr:CreateActorWithPos("Q19161Trigger", "Actor/Gadget/Q19161Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1916101_N10000005").pos, sceneData:GetDummyPoint(3, "Q1916101_N10000005").rot, true, false, 3)
    this:ClearNarratorTask()
end

function Quest19161:OnSubFinish1916101(arg1)
    print("OnSubFinish1916101")
    this:ActorDestroy("Q19161Trigger")
end

function Quest19161:OnSubStart1916102(arg1)
    print("OnSubStart1916102")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Coop_LaylaData.id, 1, npcs.Coop_LaylaData.alias)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916102)
end

function Quest19161:OnSubFinish1916102(arg1)
    print("OnSubFinish1916102")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest19161:OnSubStart1916104(arg1)
    print("OnSubStart1916104")
    this:CreateQuestNpc(arg1, npcs.Coop_LaylaData.id, 1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_LaylaData.alias, 19161)
    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 5, 3, -1, function(arg1)
        this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Coop_LaylaData.alias, 19161)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_01, 5, 3, -1, function(arg1)
                this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
                this:NarratorOnlyTaskByData(datas.NarratorWithId_02, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Coop_LaylaData.alias, 19161)
                    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_02, 5, 3, -1, function(arg1)
                        print("FinishSubQuest1916104")
                        arg1:SyncPos(2)
                        if arg1.BeFollowState == BeFollowState.FAILED then
                            return
                        end

                        arg1:Standby()
                        this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):SteerToTask(M.Euler2DirXZ({y = 90}), 1, true, true)
                        actorUtils.FinishQuestID(false, 1916104)
                        local questNpcActor = this:GetQuestNpcActor(npcs.Coop_LaylaData.alias, 19161)
                        this:NpcResetForceAvatarWalk(questNpcActor)
                    end, nil, nil, arg1.MovePause, arg1.MoveResume, nil, true)

                    this:NarratorOnlyTaskByData(datas.NarratorWithId_03)
                end)
            end, nil, nil, arg1.MovePause, arg1.MoveResume, nil, true)
        end)
    end, nil, nil, self.MovePause, self.MoveResume, nil, true)

    local v = this:GetQuestNpcActor(npcs.Coop_LaylaData.alias)
    v:DisableInteeHeadCtrl(true)
    v:SetWalkSpeedRatio(1)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Coop_LaylaData.alias, 19161)
    this:NpcForceAvatarWalkByDist(questNpcActor2, 2.5, 4.5)
end

function Quest19161:OnSubFinish1916104(arg1)
    print("OnSubFinish1916104")
end

function Quest19161:OnSubFailed1916104(arg1)
    print("OnSubFailed1916104")
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    this:ClearNarratorTask()
end

function Quest19161:OnSubStart1916115(arg1)
    print("OnSubStart1916115")
end

function Quest19161:OnSubFinish1916115(arg1)
    print("OnSubFinish1916115")
end

function Quest19161:OnSubStart1916110(arg1)
    print("OnSubStart1916110")
end

function Quest19161:OnSubFinish1916110(arg1)
    print("OnSubFinish1916110")
end

function Quest19161:OnSubStart1916105(arg1)
    print("OnSubStart1916105")
end

function Quest19161:OnSubFinish1916105(arg1)
    print("OnSubFinish1916105")
end

function Quest19161:OnSubStart1916135(arg1)
    print("OnSubStart1916135")
end

function Quest19161:OnSubFinish1916135(arg1)
    print("OnSubFinish1916135")
end

function Quest19161:OnSubStart1916134(arg1)
    print("OnSubStart1916134")
end

function Quest19161:OnSubFinish1916134(arg1)
    print("OnSubFinish1916134")
end

function Quest19161:OnSubStart1916133(arg1)
    print("OnSubStart1916133")
end

function Quest19161:OnSubFinish1916133(arg1)
    print("OnSubFinish1916133")
end

function Quest19161:OnSubStart1916132(arg1)
    print("OnSubStart1916132")
end

function Quest19161:OnSubFinish1916132(arg1)
    print("OnSubFinish1916132")
end

function Quest19161:OnSubStart1916131(arg1)
    print("OnSubStart1916131")
end

function Quest19161:OnSubFinish1916131(arg1)
    print("OnSubFinish1916131")
end

function Quest19161:OnSubStart1916130(arg1)
    print("OnSubStart1916130")
end

function Quest19161:OnSubFinish1916130(arg1)
    print("OnSubFinish1916130")
end

function Quest19161:OnSubStart1916129(arg1)
    print("OnSubStart1916129")
end

function Quest19161:OnSubFinish1916129(arg1)
    print("OnSubFinish1916129")
end

function Quest19161:OnSubStart1916128(arg1)
    print("OnSubStart1916128")
end

function Quest19161:OnSubFinish1916128(arg1)
    print("OnSubFinish1916128")
end

function Quest19161:OnSubStart1916127(arg1)
    print("OnSubStart1916127")
end

function Quest19161:OnSubFinish1916127(arg1)
    print("OnSubFinish1916127")
end

function Quest19161:OnSubStart1916126(arg1)
    print("OnSubStart1916126")
end

function Quest19161:OnSubFinish1916126(arg1)
    print("OnSubFinish1916126")
end

function Quest19161:OnSubStart1916106(arg1)
    print("OnSubStart1916106")
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916106)
    local itemCount2 = actorUtils.GetItemCount(120223)
    local itemCount3 = actorUtils.GetItemCount(120224)
    local itemCount4 = actorUtils.GetItemCount(120225)
    local n2 = itemCount - itemCount2
    local n3 = n - itemCount3
    local n4 = v - itemCount4
    if n2 == 3 then
        actorUtils.FinishQuestID(false, 1916130)
    elseif n2 == 2 and n3 == 1 then
        actorUtils.FinishQuestID(false, 1916134)
    elseif n2 == 2 and n4 == 1 then
        actorUtils.FinishQuestID(false, 1916133)
    elseif n2 == 1 and n3 == 2 then
        actorUtils.FinishQuestID(false, 1916132)
    elseif n2 == 1 and n4 == 2 then
        actorUtils.FinishQuestID(false, 1916131)
    elseif n3 == 2 and n4 == 1 then
        actorUtils.FinishQuestID(false, 1916128)
    elseif n3 == 1 and n4 == 2 then
        actorUtils.FinishQuestID(false, 1916127)
    elseif n3 == 3 then
        actorUtils.FinishQuestID(false, 1916129)
    elseif n4 == 3 then
        actorUtils.FinishQuestID(false, 1916126)
    elseif n2 == 1 and n3 == 1 and n4 == 1 then
        actorUtils.FinishQuestID(false, 1916135)
    end
end

function Quest19161:OnSubFinish1916106(arg1)
    print("OnSubFinish1916106")
end

function Quest19161:OnSubStart1916107(arg1)
    print("OnSubStart1916107")
    this:CreateQuestNpc(arg1, npcs.Coop_LaylaData.id, 1)
    this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest19161:OnSubFinish1916107(arg1)
    print("OnSubFinish1916107")
end

function Quest19161:OnSubStart1916124(arg1)
    print("OnSubStart1916124")
end

function Quest19161:OnSubFinish1916124(arg1)
    print("OnSubFinish1916124")
end

function Quest19161:OnSubStart1916123(arg1)
    print("OnSubStart1916123")
end

function Quest19161:OnSubFinish1916123(arg1)
    print("OnSubFinish1916123")
end

function Quest19161:OnSubStart1916122(arg1)
    print("OnSubStart1916122")
end

function Quest19161:OnSubFinish1916122(arg1)
    print("OnSubFinish1916122")
end

function Quest19161:OnSubStart1916121(arg1)
    print("OnSubStart1916121")
end

function Quest19161:OnSubFinish1916121(arg1)
    print("OnSubFinish1916121")
end

function Quest19161:OnSubStart1916120(arg1)
    print("OnSubStart1916120")
end

function Quest19161:OnSubFinish1916120(arg1)
    print("OnSubFinish1916120")
end

function Quest19161:OnSubStart1916119(arg1)
    print("OnSubStart1916119")
end

function Quest19161:OnSubFinish1916119(arg1)
    print("OnSubFinish1916119")
end

function Quest19161:OnSubStart1916118(arg1)
    print("OnSubStart1916118")
end

function Quest19161:OnSubFinish1916118(arg1)
    print("OnSubFinish1916118")
end

function Quest19161:OnSubStart1916117(arg1)
    print("OnSubStart1916117")
end

function Quest19161:OnSubFinish1916117(arg1)
    print("OnSubFinish1916117")
end

function Quest19161:OnSubStart1916116(arg1)
    print("OnSubStart1916116")
end

function Quest19161:OnSubFinish1916116(arg1)
    print("OnSubFinish1916116")
end

function Quest19161:OnSubStart1916125(arg1)
    print("OnSubStart1916125")
end

function Quest19161:OnSubFinish1916125(arg1)
    print("OnSubFinish1916125")
end

function Quest19161:OnSubStart1916111(arg1)
    print("OnSubStart1916111")
    this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest19161:OnSubFinish1916111(arg1)
    print("OnSubFinish1916111")
end

function Quest19161:OnSubStart1916112(arg1)
    print("OnSubStart1916112")
    this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest19161:OnSubFinish1916112(arg1)
    print("OnSubFinish1916112")
end

function Quest19161:OnSubStart1916108(arg1)
    print("OnSubStart1916108")
    this:GetQuestNpcActor(npcs.Coop_LaylaData.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:RequestCoopInteractionFromSubStartPoint(107401, 1916108)
end

function Quest19161:OnSubFinish1916108(arg1)
    print("OnSubFinish1916108")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

return Quest19161
