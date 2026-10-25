require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77003 = class("Quest77003", QuestActorProxy)
Quest77003.defaultAlias = "Quest77003"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7700301"] = self.OnSubStart7700301,
        ["7700303"] = self.OnSubStart7700303,
        ["7700302"] = self.OnSubStart7700302,
        ["7700304"] = self.OnSubStart7700304
    }
end

function Quest77003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7700301"] = self.OnSubFinish7700301,
        ["7700303"] = self.OnSubFinish7700303,
        ["7700302"] = self.OnSubFinish7700302,
        ["7700304"] = self.OnSubFinish7700304
    }
end

function Quest77003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7700303"] = self.OnSubFailed7700303}
end

function Quest77003:Start()
    print("Start")
end

function Quest77003:OnDestroy()
    print("OnDestroy")
end

function Quest77003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77003:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7700301Trigger", 77003)
end

function Quest77003:ActorDestroy(arg1, arg2)
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

function Quest77003:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77003:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77003:OnSubStart7700301(arg1)
    print("OnSubStart7700301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700301, 15, true)
    actorMgr:CreateActorWithPos("Q7700301Trigger", "Actor/Gadget/Q7700301Trigger", 70900002, 0, points._Q7700301TriggerPoint_.pos, points._Q7700301TriggerPoint_.rot, true, false, 1159, nil, 0, 77003)
end

function Quest77003:OnSubFinish7700301(arg1)
    print("OnSubFinish7700301")
    this:NpcDestroyImmediately(3, npcs.Npc17094.alias)
    this:ActorDestroy("Q7700301Trigger", 77003)
end

function Quest77003:OnSubStart7700303(arg1)
    print("OnSubStart7700303")
end

function Quest77003:OnSubFinish7700303(arg1)
    print("OnSubFinish7700303")
    this:QuestNarratorTask(datas.NarratorWithId_7700301, nil)
end

function Quest77003:OnSubFailed7700303(arg1)
    print("OnSubFailed7700303")
    this:RecycleAllRes()
end

function Quest77003:OnSubStart7700302(arg1)
    print("OnSubStart7700302")
    this:CallDelayByQuest("7700302", 2, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7700302})
    end)
end

function Quest77003:OnSubFinish7700302(arg1)
    print("OnSubFinish7700302")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_5, nil, nil, nil)
end

function Quest77003:OnSubStart7700304(arg1)
    print("OnSubStart7700304")
    actorUtils.FinishQuestWithParam({false}, {7700304})
end

function Quest77003:OnSubFinish7700304(arg1)
    print("OnSubFinish7700304")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77003
