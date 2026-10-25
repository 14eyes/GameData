require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12045 = class("Quest12045", QuestActorProxy)
Quest12045.defaultAlias = "Quest12045"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest12045:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest12045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204501"] = self.OnSubStart1204501,
        ["1204502"] = self.OnSubStart1204502,
        ["1204507"] = self.OnSubStart1204507,
        ["1204508"] = self.OnSubStart1204508,
        ["1204509"] = self.OnSubStart1204509,
        ["1204510"] = self.OnSubStart1204510,
        ["1204503"] = self.OnSubStart1204503,
        ["1204504"] = self.OnSubStart1204504,
        ["1204505"] = self.OnSubStart1204505,
        ["1204515"] = self.OnSubStart1204515,
        ["1204513"] = self.OnSubStart1204513,
        ["1204514"] = self.OnSubStart1204514,
        ["1204506"] = self.OnSubStart1204506,
        ["1204511"] = self.OnSubStart1204511,
        ["1204512"] = self.OnSubStart1204512
    }
end

function Quest12045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204501"] = self.OnSubFinish1204501,
        ["1204502"] = self.OnSubFinish1204502,
        ["1204507"] = self.OnSubFinish1204507,
        ["1204508"] = self.OnSubFinish1204508,
        ["1204509"] = self.OnSubFinish1204509,
        ["1204510"] = self.OnSubFinish1204510,
        ["1204503"] = self.OnSubFinish1204503,
        ["1204504"] = self.OnSubFinish1204504,
        ["1204505"] = self.OnSubFinish1204505,
        ["1204515"] = self.OnSubFinish1204515,
        ["1204513"] = self.OnSubFinish1204513,
        ["1204514"] = self.OnSubFinish1204514,
        ["1204506"] = self.OnSubFinish1204506,
        ["1204511"] = self.OnSubFinish1204511,
        ["1204512"] = self.OnSubFinish1204512
    }
end

function Quest12045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1204513"] = self.OnSubFailed1204513}
end

function Quest12045:Start()
    print("Start")
end

function Quest12045:OnDestroy()
    print("OnDestroy")
end

function Quest12045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12045:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1204513Tigger")
    this:ActorDestroy("Q1204505Tigger")
    this:ActorDestroy("Q1204515Tigger")
    this:ActorDestroy("Q1204508Trigger")
end

function Quest12045:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest12045:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest12045:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest12045:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest12045:CheckSitFunction()
    print("CheckSitPos")
    local tbl = {x = 9.742, y = 2.036, z = -11.644}
    local avatarPos = actorUtils.GetAvatarPos()
    if math.abs(tbl.x - avatarPos.x) < 20 then
        if math.abs(tbl.z - avatarPos.z) < 15 then
            if math.abs(tbl.y - avatarPos.y) < 20 then
                actorUtils.FinishQuestID(false, 1204507)
            end
        end
    else
        if this:GetSubQuestState(1204507) == 2 then
            this:CallOnAvatarStand(this.RepeatCheckSit)
        end
    end
end

function Quest12045:RepeatCheckSit()
    print("RepeatCheckSit")
    this:CallOnAvatarSit(this.CheckSitFunction)
end

function Quest12045:OnSubStart1204501(arg1)
    print("OnSubStart1204501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204501, 0, 15, 1.5, npcs.Npc3038.id)
end

function Quest12045:OnSubFinish1204501(arg1)
    print("OnSubFinish1204501")
end

function Quest12045:OnSubStart1204502(arg1)
    print("OnSubStart1204502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204502, 0, 20, 1.5, npcs.Npc1097.id)
end

function Quest12045:OnSubFinish1204502(arg1)
    print("OnSubFinish1204502")
    this:SafeDestroyQuestNpc(npcs.Npc3038.alias, 3)
end

function Quest12045:OnSubStart1204507(arg1)
    print("OnSubStart1204507")
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:RepeatCheckSit()
end

function Quest12045:OnSubFinish1204507(arg1)
    print("OnSubFinish1204507")
end

function Quest12045:OnSubStart1204508(arg1)
    print("OnSubStart1204508")
    actorMgr:CreateActorWithPos("Q1204508Trigger", "Actor/Gadget/Q1204508Trigger", 70900002, 0, points._Q1204508TriggerPoint_.pos, points._Q1204508TriggerPoint_.rot, true, false, 1202)
end

function Quest12045:OnSubFinish1204508(arg1)
    print("OnSubFinish1204508")
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData01, nil, nil, nil)
end

function Quest12045:OnSubStart1204509(arg1)
    print("OnSubStart1204509")
    this:NpcCreateWithNpcTrigger(npcs.Npc1097.id, 0, 50, 1204509)
end

function Quest12045:OnSubFinish1204509(arg1)
    print("OnSubFinish1204509")
    this:TransmitPlayerByData(arg1, 6, datas.TransmitData01, nil, nil, nil)
end

function Quest12045:OnSubStart1204510(arg1)
    print("OnSubStart1204510")
    this:NpcCreateWithNpcTrigger(npcs.Npc1097.id, 0, 10, 1204510)
end

function Quest12045:OnSubFinish1204510(arg1)
    print("OnSubFinish1204510")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 1202)
end

function Quest12045:OnSubStart1204503(arg1)
    print("OnSubStart1204503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204503, 0, 8, 0, npcs.Npc1034.id)
end

function Quest12045:OnSubFinish1204503(arg1)
    print("OnSubFinish1204503")
    this:SafeDestroyQuestNpc(npcs.Npc1034.alias, 1202)
end

function Quest12045:OnSubStart1204504(arg1)
    print("OnSubStart1204504")
    this:NpcCreateWithNpcTrigger(npcs.Npc15033.id, 0, 10, 1204504)
    this:CreateQuestNpc(arg1, npcs.Npc15037.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15037.alias, 12045):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15038.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15038.alias, 12045):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc3038.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc15037.alias, 12045):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15038.alias, 12045):DisableInteeHeadCtrl(true)
end

function Quest12045:OnSubFinish1204504(arg1)
    print("OnSubFinish1204504")
end

function Quest12045:OnSubStart1204505(arg1)
    print("OnSubStart1204505")
    this:GetQuestNpcActor(npcs.Npc15037.alias, 12045):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15038.alias, 12045):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:LightNotifyTo(npcs.Npc3038.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1204505Tigger", "Actor/Gadget/Q1204505Tigger", 70900002, 0, points._Q1204505TiggerPoint_.pos, points._Q1204505TiggerPoint_.rot, true, false, 3)
end

function Quest12045:OnSubFinish1204505(arg1)
    print("OnSubFinish1204505")
    this:SafeDestroyQuestNpc(npcs.Npc15037.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15038.alias, 3)
    this:ActorDestroy("Q1204513Tigger")
    this:ActorDestroy("Q1204505Tigger")
end

function Quest12045:OnSubStart1204515(arg1)
    print("OnSubStart1204515")
    actorMgr:CreateActorWithPos("Q1204515Tigger", "Actor/Gadget/Q1204515Tigger", 70900002, 0, points._Q1204515TiggerPoint_.pos, points._Q1204515TiggerPoint_.rot, true, false, 3)
end

function Quest12045:OnSubFinish1204515(arg1)
    print("OnSubFinish1204515")
    this:ActorDestroy("Q1204515Tigger")
end

function Quest12045:OnSubStart1204513(arg1)
    print("OnSubStart1204513")
    this:NpcCreateWithNpcTrigger(npcs.Npc15029.id, 0, 50, 1204513)
end

function Quest12045:OnSubFinish1204513(arg1)
    print("OnSubFinish1204513")
end

function Quest12045:OnSubFailed1204513(arg1)
    print("OnSubFailed1204513")
    actorMgr:CreateActorWithPos("Q1204513Tigger", "Actor/Gadget/Q1204513Tigger", 70900002, 0, points._Q1204513TiggerPoint_.pos, points._Q1204513TiggerPoint_.rot, true, false, 3)
    this:DestroyNpcTrigger("Q1204513N15029Trigger")
    this:DestroyQuestNpcActor(npcs.Npc15029.alias, 20251)
end

function Quest12045:OnSubStart1204514(arg1)
    print("OnSubStart1204514")
    this:NpcCreateWithNpcTrigger(npcs.Npc15029.id, 0, 50, 1204514)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20251 then
                this:TransmitPlayerById(arg1, 2, nil, nil, datas.TransmitData01)
            end
        end)
    end)
end

function Quest12045:OnSubFinish1204514(arg1)
    print("OnSubFinish1204514")
    this:SafeDestroyQuestNpc(npcs.Npc15029.alias, 3)
end

function Quest12045:OnSubStart1204506(arg1)
    print("OnSubStart1204506")
    this:CreateQuestNpc(arg1, npcs.Npc15033.id, 0, false, 0)
end

function Quest12045:OnSubFinish1204506(arg1)
    print("OnSubFinish1204506")
end

function Quest12045:OnSubStart1204511(arg1)
    print("OnSubStart1204511")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204511, 0, 20, 1.5, npcs.Npc3210.id)
    this:DailyNpcSafeHideSelf(npcs.Npc3038.alias, true, 1)
end

function Quest12045:OnSubFinish1204511(arg1)
    print("OnSubFinish1204511")
    this:SafeDestroyQuestNpc(npcs.Npc3210.alias, 1202)
    this:SafeDestroyQuestNpc(npcs.Npc15033.alias, 3)
end

function Quest12045:OnSubStart1204512(arg1)
    print("OnSubStart1204512")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1204512, 0, 20, 1.5, npcs.Npc1097.id)
    this:NotifyTo(npcs.Npc3038.alias, 1, true)
end

function Quest12045:OnSubFinish1204512(arg1)
    print("OnSubFinish1204512")
    this:SafeDestroyQuestNpc(npcs.Npc1097.alias, 3)
    this:LightNotifyTo(npcs.Npc3038.alias, 0, true)
end

return Quest12045
