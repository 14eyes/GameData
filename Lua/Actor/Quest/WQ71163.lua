require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71163 = class("Quest71163", QuestActorProxy)
Quest71163.defaultAlias = "Quest71163"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest71163:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71163:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7116301"] = self.OnSubStart7116301,
        ["7116302"] = self.OnSubStart7116302,
        ["7116304"] = self.OnSubStart7116304,
        ["7116303"] = self.OnSubStart7116303
    }
end

function Quest71163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7116301"] = self.OnSubFinish7116301,
        ["7116302"] = self.OnSubFinish7116302,
        ["7116304"] = self.OnSubFinish7116304,
        ["7116303"] = self.OnSubFinish7116303
    }
end

function Quest71163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7116304"] = self.OnSubFailed7116304}
end

function Quest71163:Start()
    print("Start")
end

function Quest71163:OnDestroy()
    print("OnDestroy")
end

function Quest71163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71163:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71163:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7116303Trigger", 0)
    this:BanCrowdNpc(3107, 4, datas.InstanceIDList, false, true)
    this:ActorDestroy("Q7116303Trigger", nil)
    this:UnCallDelayByQuest("1")
end

function Quest71163:ActorDestroy(arg1, arg2)
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

function Quest71163:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest71163:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest71163:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest71163:OnSubStart7116301(arg1)
    print("OnSubStart7116301")
    if this:GetQuestVar(7116301, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId7116301, function(arg1)
            this:SetQuestVarByMainId(0, 1)
        end)
    end
end

function Quest71163:OnSubFinish7116301(arg1)
    print("OnSubFinish7116301")
    this:SetNavigationByMainId(71163, true)
end

function Quest71163:OnSubStart7116302(arg1)
    print("OnSubStart7116302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7116302, 0, 10, 0.5, npcs.Npc1323.id)
    this:BanCrowdNpc(3107, 4, datas.InstanceIDList, true, true)
end

function Quest71163:OnSubFinish7116302(arg1)
    print("OnSubFinish7116302")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
    if this:GetSubQuestState(7110201) == 3 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData01, nil, nil, nil)
    else
        this:TransmitPlayerByData(arg1, 2, datas.TransmitData02, nil, nil, nil)
    end

    this:BanCrowdNpc(3107, 4, datas.InstanceIDList, false, true)
end

function Quest71163:OnSubStart7116304(arg1)
    print("OnSubStart7116304")
    actorMgr:CreateActorWithPos("Q7116303Trigger", "Actor/Gadget/Q7116303Trigger", 70900002, 0, points._Q7116303TriggerPoint_.pos, points._Q7116303TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:CallDelayByQuest("1", 15, function(arg1)
        actorUtils.FinishQuestID(false, 7116304)
    end)
end

function Quest71163:OnSubFinish7116304(arg1)
    print("OnSubFinish7116304")
    this:ActorDestroy("Q7116303Trigger", nil)
    this:UnCallDelayByQuest("1")
end

function Quest71163:OnSubFailed7116304(arg1)
    print("OnSubFailed7116304")
    this:ActorDestroy("Q7116303Trigger", nil)
    this:UnCallDelayByQuest("1")
end

function Quest71163:OnSubStart7116303(arg1)
    print("OnSubStart7116303")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc1323.id, 0, 7116303, 15, true)
end

function Quest71163:OnSubFinish7116303(arg1)
    print("OnSubFinish7116303")
    this:NpcDestroyImmediately(3, npcs.Npc1323.alias)
end

return Quest71163
