require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40223 = class("Quest40223", QuestActorProxy)
Quest40223.defaultAlias = "Quest40223"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40223:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40223:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4022301"] = self.OnSubStart4022301,
        ["4022302"] = self.OnSubStart4022302,
        ["4022303"] = self.OnSubStart4022303,
        ["4022304"] = self.OnSubStart4022304,
        ["4022305"] = self.OnSubStart4022305,
        ["4022306"] = self.OnSubStart4022306,
        ["4022316"] = self.OnSubStart4022316,
        ["4022307"] = self.OnSubStart4022307,
        ["4022313"] = self.OnSubStart4022313,
        ["4022309"] = self.OnSubStart4022309,
        ["4022308"] = self.OnSubStart4022308,
        ["4022314"] = self.OnSubStart4022314,
        ["4022315"] = self.OnSubStart4022315
    }
end

function Quest40223:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4022301"] = self.OnSubFinish4022301,
        ["4022302"] = self.OnSubFinish4022302,
        ["4022303"] = self.OnSubFinish4022303,
        ["4022304"] = self.OnSubFinish4022304,
        ["4022305"] = self.OnSubFinish4022305,
        ["4022306"] = self.OnSubFinish4022306,
        ["4022316"] = self.OnSubFinish4022316,
        ["4022307"] = self.OnSubFinish4022307,
        ["4022313"] = self.OnSubFinish4022313,
        ["4022309"] = self.OnSubFinish4022309,
        ["4022308"] = self.OnSubFinish4022308,
        ["4022314"] = self.OnSubFinish4022314,
        ["4022315"] = self.OnSubFinish4022315
    }
end

function Quest40223:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4022307"] = self.OnSubFailed4022307}
end

function Quest40223:Start()
    print("Start")
end

function Quest40223:OnDestroy()
    print("OnDestroy")
end

function Quest40223:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40223:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40223:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1068.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30926.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30927.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Xiao.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10284.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15952.alias, 20314)
    this:LightNotifyTo(npcs.Npc2093.alias, 0, true)
    this:ActorDestroy("Q4022316Trigger", nil)
    this:ActorDestroy("Q4022308Trigger", nil)
    this:ActorDestroy("Q4022309Trigger", nil)
    this:DestroyNpcTrigger("Q4022302N1068Trigger")
    this:DestroyNpcTrigger("Q4022303N1048Trigger")
    this:DestroyNpcTrigger("Q4022304N1084Trigger")
    this:DestroyNpcTrigger("Q4022305N1083Trigger")
    this:DestroyNpcTrigger("Q4022306N10284Trigger")
    this:DestroyNpcTrigger("Q4022313N15952Trigger")
    this:DestroyNpcTrigger("Q4022315N1083Trigger")
end

function Quest40223:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4022316Trigger", nil)
    this:ActorDestroy("Q4022308Trigger", nil)
    this:ActorDestroy("Q4022309Trigger", nil)
end

function Quest40223:ActorDestroy(arg1, arg2)
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

function Quest40223:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40223:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40223:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40223:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40223:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40223:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest40223:OnSubStart4022301(arg1)
    print("OnSubStart4022301")
end

function Quest40223:OnSubFinish4022301(arg1)
    print("OnSubFinish4022301")
    this:QuestNarratorTask(datas.NarratorWithId4022301, nil)
end

function Quest40223:OnSubStart4022302(arg1)
    print("OnSubStart4022302")
    this:NpcCreateWithNpcTrigger(npcs.Npc1068.id, 0, 10, 4022302)
    this:CreateQuestNpc(arg1, npcs.Npc1048.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30926.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30927.id, 0, false, 0)
end

function Quest40223:OnSubFinish4022302(arg1)
    print("OnSubFinish4022302")
    this:NpcDestroyImmediately(3, npcs.Npc1048.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30926.alias)
    this:NpcDestroyImmediately(3, npcs.Npc30927.alias)
    this:ClearNarratorTask()
end

function Quest40223:OnSubStart4022303(arg1)
    print("OnSubStart4022303")
    this:CreateQuestNpc(arg1, npcs.Npc1068.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 40223):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 40223):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4022303, 0, 10, 0, npcs.Npc1048.id)
end

function Quest40223:OnSubFinish4022303(arg1)
    print("OnSubFinish4022303")
    this:NpcDestroyImmediately(3, npcs.Npc1068.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1048.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData4022210, nil, nil, nil)
end

function Quest40223:OnSubStart4022304(arg1)
    print("OnSubStart4022304")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1084.id, 0, 4022304, 40, true)
end

function Quest40223:OnSubFinish4022304(arg1)
    print("OnSubFinish4022304")
    this:NpcDestroyImmediately(3, npcs.Npc1084.alias)
end

function Quest40223:OnSubStart4022305(arg1)
    print("OnSubStart4022305")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083.id, 0, 10, 4022305)
    this:CreateQuestNpc(arg1, npcs.Npc2093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Xiao.id, 0, false, 0)
end

function Quest40223:OnSubFinish4022305(arg1)
    print("OnSubFinish4022305")
    this:NpcDestroyImmediately(3, npcs.Npc1083.alias)
    this:NpcDestroyImmediately(3, npcs.Npc2093.alias)
    this:NpcDestroyImmediately(3, npcs.Xiao.alias)
end

function Quest40223:OnSubStart4022306(arg1)
    print("OnSubStart4022306")
    this:DailyNpcSafeHideSelf(npcs.Npc2093.alias, true, 1)
    this:NpcCreateWithNpcTrigger(npcs.Npc10284.id, 0, 60, 4022306)
end

function Quest40223:OnSubFinish4022306(arg1)
    print("OnSubFinish4022306")
    this:NpcDestroyImmediately(3, npcs.Npc10284.alias)
end

function Quest40223:OnSubStart4022316(arg1)
    print("OnSubStart4022316")
    this:DailyNpcSafeHideSelf(npcs.Npc2093.alias, true, 1)
    actorMgr:CreateActorWithPos("Q4022316Trigger", "Actor/Gadget/Q4022316Trigger", 70900002, 0, points._Q4022316TriggerPoint_.pos, points._Q4022316TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest40223:OnSubFinish4022316(arg1)
    print("OnSubFinish4022316")
    this:ActorDestroy("Q4022316Trigger", nil)
end

function Quest40223:OnSubStart4022307(arg1)
    print("OnSubStart4022307")
    this:DailyNpcSafeHideSelf(npcs.Npc2093.alias, true, 1)
end

function Quest40223:OnSubFinish4022307(arg1)
    print("OnSubFinish4022307")
end

function Quest40223:OnSubFailed4022307(arg1)
    print("OnSubFailed4022307")
    this:ClearNpcTriggerByQuestId(4022314)
    this:ActorDestroy("Q4022308Trigger", nil)
    this:ActorDestroy("Q4022309Trigger", nil)
    this:NpcDestroyImmediately(20314, npcs.Npc15952.alias)
end

function Quest40223:OnSubStart4022313(arg1)
    print("OnSubStart4022313")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15952.id, 0, 4022313, 40, true)
end

function Quest40223:OnSubFinish4022313(arg1)
    print("OnSubFinish4022313")
    this:NpcDestroyImmediately(20314, npcs.Npc15952.alias)
end

function Quest40223:OnSubStart4022309(arg1)
    print("OnSubStart4022309")
    actorMgr:CreateActorWithPos("Q4022309Trigger", "Actor/Gadget/Q4022309Trigger", 70900002, 0, points._Q4022309TriggerPoint_.pos, points._Q4022309TriggerPoint_.rot, true, false, 20314, nil, 0, 0)
end

function Quest40223:OnSubFinish4022309(arg1)
    print("OnSubFinish4022309")
end

function Quest40223:OnSubStart4022308(arg1)
    print("OnSubStart4022308")
    actorMgr:CreateActorWithPos("Q4022308Trigger", "Actor/Gadget/Q4022308Trigger", 70900002, 0, points._Q4022308TriggerPoint_.pos, points._Q4022308TriggerPoint_.rot, true, false, 20314, nil, 0, 0)
end

function Quest40223:OnSubFinish4022308(arg1)
    print("OnSubFinish4022308")
end

function Quest40223:OnSubStart4022314(arg1)
    print("OnSubStart4022314")
    this:NpcCreateWithNoBlackData(4022314, 1, npcs.Npc15952.id, 0, 5, 4022314, datas.NoBlackData)
    this:GetQuestNpcActor(npcs.Npc15952.alias, 40223):DisableInteeHeadCtrl(true)
end

function Quest40223:OnSubFinish4022314(arg1)
    print("OnSubFinish4022314")
    this:NpcDestroyImmediately(20314, npcs.Npc15952.alias)
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData4022210, nil, nil, nil)
end

function Quest40223:OnSubStart4022315(arg1)
    print("OnSubStart4022315")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1083.id, 0, 4022315, 10, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2093.alias, true, 1)
end

function Quest40223:OnSubFinish4022315(arg1)
    print("OnSubFinish4022315")
    this:NpcDestroyImmediately(3, npcs.Npc1083.alias)
    this:LightNotifyTo(npcs.Npc2093.alias, 0, true)
end

return Quest40223
