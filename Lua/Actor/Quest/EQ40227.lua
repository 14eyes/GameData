require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40227 = class("Quest40227", QuestActorProxy)
Quest40227.defaultAlias = "Quest40227"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40227:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40227:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4022701"] = self.OnSubStart4022701, ["4022702"] = self.OnSubStart4022702}
end

function Quest40227:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4022701"] = self.OnSubFinish4022701, ["4022702"] = self.OnSubFinish4022702}
end

function Quest40227:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40227:Start()
    print("Start")
end

function Quest40227:OnDestroy()
    print("OnDestroy")
end

function Quest40227:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40227:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40227:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4022701N1313Trigger")
    this:DestroyNpcTrigger("Q4022702N16350Trigger")
    this:ActorDestroy("Q4022702Trigger", 40227)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 1151)
    this:SafeDestroyQuestNpc(npcs.Npc16350.alias, 3)
    this:RecycleAllRes()
end

function Quest40227:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q4022702Trigger", 40227)
end

function Quest40227:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest40227:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40227:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40227:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40227:OnSubStart4022701(arg1)
    print("OnSubStart4022701")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022701, 0, 20, 2, npcs.Npc1313.id)
end

function Quest40227:OnSubFinish4022701(arg1)
    print("OnSubFinish4022701")
    this:NpcDestroyImmediately(1151, npcs.Npc1313.alias)
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData_BlackScreen, nil, nil, nil)
end

function Quest40227:OnSubStart4022702(arg1)
    print("OnSubStart4022702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc16350.id, 0, 4022702, 20, true)
    actorMgr:CreateActorWithPos("Q4022702Trigger", "Actor/Gadget/Q4022702Trigger", 70900002, 0, points._Q4022702TriggerPoint_.pos, points._Q4022702TriggerPoint_.rot, true, false, 1151, nil, 0, 40227)
end

function Quest40227:OnSubFinish4022702(arg1)
    print("OnSubFinish4022702")
    this:NpcDestroyImmediately(3, npcs.Npc16350.alias)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(2619, nil)
        this:ActorDestroy("Q4022702Trigger", 40227)
    end)
end

return Quest40227
