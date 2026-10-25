require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21000 = class("Quest21000", QuestActorProxy)
Quest21000.defaultAlias = "Quest21000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest21000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest21000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2100001"] = self.OnSubStart2100001,
        ["2100002"] = self.OnSubStart2100002,
        ["2100003"] = self.OnSubStart2100003,
        ["2100004"] = self.OnSubStart2100004,
        ["2100005"] = self.OnSubStart2100005,
        ["2100006"] = self.OnSubStart2100006,
        ["2100018"] = self.OnSubStart2100018,
        ["2100007"] = self.OnSubStart2100007,
        ["2100010"] = self.OnSubStart2100010,
        ["2100017"] = self.OnSubStart2100017,
        ["2100011"] = self.OnSubStart2100011,
        ["2100012"] = self.OnSubStart2100012,
        ["2100013"] = self.OnSubStart2100013,
        ["2100016"] = self.OnSubStart2100016,
        ["2100014"] = self.OnSubStart2100014,
        ["2100015"] = self.OnSubStart2100015
    }
end

function Quest21000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2100001"] = self.OnSubFinish2100001,
        ["2100002"] = self.OnSubFinish2100002,
        ["2100003"] = self.OnSubFinish2100003,
        ["2100004"] = self.OnSubFinish2100004,
        ["2100005"] = self.OnSubFinish2100005,
        ["2100006"] = self.OnSubFinish2100006,
        ["2100018"] = self.OnSubFinish2100018,
        ["2100007"] = self.OnSubFinish2100007,
        ["2100010"] = self.OnSubFinish2100010,
        ["2100017"] = self.OnSubFinish2100017,
        ["2100011"] = self.OnSubFinish2100011,
        ["2100012"] = self.OnSubFinish2100012,
        ["2100013"] = self.OnSubFinish2100013,
        ["2100016"] = self.OnSubFinish2100016,
        ["2100014"] = self.OnSubFinish2100014,
        ["2100015"] = self.OnSubFinish2100015
    }
end

function Quest21000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21000:Start()
    print("Start")
end

function Quest21000:OnDestroy()
    print("OnDestroy")
end

function Quest21000:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
end

function Quest21000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21000:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    self:ActorDestroy("Q21000Trigger")
    self:ActorDestroy("Q21000Trigger1")
    self:ActorDestroy("Q21000Trigger2")
    self:ActorDestroy("Q21000Trigger3")
    self:LightNotifyTo(npcs.Npc2031Data.alias, 0, true)
end

function Quest21000:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest21000:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest21000:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest21000:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest21000:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21000:MovePause()
    print("OnMovePause")
    self:TryPauseCurAutoNarrator()
    self:Standby()
    self:DisableInteeHeadCtrl(false)
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetPos()
    local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
    local actor = actorMgr:GetActor("21000")
    self:SteerToAutonomyTask(tbl, 1, true, true)
end

function Quest21000:MoveResume()
    print("OnMoveResume")
    self:ClearSteerToAutonomyTask()
    self:TryResumeCurAutoNarrator()
    self:DisableInteeHeadCtrl(true)
    self:ResumeMove()
end

function Quest21000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest2100016")
        actorUtils.FinishQuestID(false, 2100016)
    end
end

function Quest21000:OnSubStart2100001(arg1)
    print("OnSubStart2100001")
    self:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100001(arg1)
    print("OnSubFinish2100001")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    end)
end

function Quest21000:OnSubStart2100002(arg1)
    print("OnSubStart2100002")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q21000Trigger", "Actor/Gadget/Q21000Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2100002_N10000005").pos, sceneData:GetDummyPoint(3, "Q2100002_N10000005").rot, true, false, 3)
        arg1:DailyNpcSafeHideSelf(npcs.Npc2031Data.alias, 1, true)
    end)
end

function Quest21000:OnSubFinish2100002(arg1)
    print("OnSubFinish2100002")
    self:ActorDestroy("Q21000Trigger")
end

function Quest21000:OnSubStart2100003(arg1)
    print("OnSubStart2100003")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2031Data.id, 1, npcs.Npc2031Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100003(arg1)
    print("OnSubFinish2100003")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    end)
end

function Quest21000:OnSubStart2100004(arg1)
    print("OnSubStart2100004")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q21000Trigger2", "Actor/Gadget/Q21000Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q2100004_N2031").pos, sceneData:GetDummyPoint(3, "Q2100004_N2031").rot, true, false, 3)
        arg1:DailyNpcSafeHideSelf(npcs.Npc2031Data.alias, 1, true)
    end)
end

function Quest21000:OnSubFinish2100004(arg1)
    print("OnSubFinish2100004")
    self:ActorDestroy("Q21000Trigger2")
end

function Quest21000:OnSubStart2100005(arg1)
    print("OnSubStart2100005")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2031Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100005(arg1)
    print("OnSubFinish2100005")
end

function Quest21000:OnSubStart2100006(arg1)
    print("OnSubStart2100006")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2031Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100006(arg1)
    print("OnSubFinish2100006")
end

function Quest21000:OnSubStart2100018(arg1)
    print("OnSubStart2100018")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2031Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q21000Trigger3", "Actor/Gadget/Q21000Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q2100004_N2031").pos, sceneData:GetDummyPoint(3, "Q2100004_N2031").rot, true, false, 3)
end

function Quest21000:OnSubFinish2100018(arg1)
    print("OnSubFinish2100018")
    self:ActorDestroy("Q21000Trigger3")
end

function Quest21000:OnSubStart2100007(arg1)
    print("OnSubStart2100007")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2031Data.id, 1, npcs.Npc2031Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100007(arg1)
    print("OnSubFinish2100007")
end

function Quest21000:OnSubStart2100010(arg1)
    print("OnSubStart2100010")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100010(arg1)
    print("OnSubFinish2100010")
end

function Quest21000:OnSubStart2100017(arg1)
    print("OnSubStart2100017")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100017(arg1)
    print("OnSubFinish2100017")
end

function Quest21000:OnSubStart2100011(arg1)
    print("OnSubStart2100011")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100011(arg1)
    print("OnSubFinish2100011")
end

function Quest21000:OnSubStart2100012(arg1)
    print("OnSubStart2100012")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2031Data.alias, 21000)
    self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 5, 3, -1, function(arg1)
        print("FinishSubQuest2100012")
        arg1:SyncPos(2)
        if arg1.BeFollowState == BeFollowState.FAILED then
            return
        end

        arg1:Standby()
        actorUtils.FinishQuestID(false, 2100012)
    end, nil, nil, self.MovePause, self.MoveResume, nil, false)

    local v = self:GetQuestNpcActor(npcs.Npc2031Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:SetWalkSpeedRatio(1)
end

function Quest21000:OnSubFinish2100012(arg1)
    print("OnSubFinish2100012")
    self:GetQuestNpcActor(npcs.Npc2031Data.alias):EnableHeadCtrl(true)
end

function Quest21000:OnSubStart2100013(arg1)
    print("OnSubStart2100013")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2031Data.id, 1, npcs.Npc2031Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100013(arg1)
    print("OnSubFinish2100013")
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    end)
end

function Quest21000:OnSubStart2100016(arg1)
    print("OnSubStart2100016")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100016(arg1)
    print("OnSubFinish2100016")
end

function Quest21000:OnSubStart2100014(arg1)
    print("OnSubStart2100014")
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q21000Trigger1", "Actor/Gadget/Q21000Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q2100007_N2031").pos, sceneData:GetDummyPoint(3, "Q2100007_N2031").rot, true, false, 3)
        arg1:DailyNpcSafeHideSelf(npcs.Npc2031Data.alias, 1, true)
    end)
end

function Quest21000:OnSubFinish2100014(arg1)
    print("OnSubFinish2100014")
    self:ActorDestroy("Q21000Trigger1")
end

function Quest21000:OnSubStart2100015(arg1)
    print("OnSubStart2100015")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc2031Data.id, 1, npcs.Npc2031Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
end

function Quest21000:OnSubFinish2100015(arg1)
    print("OnSubFinish2100015")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
end

return Quest21000
