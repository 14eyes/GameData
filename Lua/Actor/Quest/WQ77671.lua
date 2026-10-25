require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77671 = class("Quest77671", QuestActorProxy)
Quest77671.defaultAlias = "Quest77671"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77671:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77671:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7767101"] = self.OnSubStart7767101,
        ["7767102"] = self.OnSubStart7767102,
        ["7767103"] = self.OnSubStart7767103
    }
end

function Quest77671:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7767101"] = self.OnSubFinish7767101,
        ["7767102"] = self.OnSubFinish7767102,
        ["7767103"] = self.OnSubFinish7767103
    }
end

function Quest77671:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77671:Start()
    print("Start")
end

function Quest77671:OnDestroy()
    print("OnDestroy")
end

function Quest77671:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77671:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77671:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77671:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7767101Trigger", 77671)
end

function Quest77671:ActorDestroy(arg1, arg2)
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

function Quest77671:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77671:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77671:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77671:OnSubStart7767101(arg1)
    print("OnSubStart7767101")
    actorMgr:CreateActorWithPos("Q7767101Trigger", "Actor/Gadget/Q7767101Trigger", 70900002, 0, points._Q7767101TriggerPoint_.pos, points._Q7767101TriggerPoint_.rot, true, false, 3, nil, 0, 77671)
end

function Quest77671:OnSubFinish7767101(arg1)
    print("OnSubFinish7767101")
    this:ActorDestroy("Q7767101Trigger", 77671)
end

function Quest77671:OnSubStart7767102(arg1)
    print("OnSubStart7767102")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7767102, 0, 30, 1, npcs.Npc17094.id)
end

function Quest77671:OnSubFinish7767102(arg1)
    print("OnSubFinish7767102")
    this:NpcDestroyImmediately(3, npcs.Npc17094.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Black, nil, nil, nil)
end

function Quest77671:OnSubStart7767103(arg1)
    print("OnSubStart7767103")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7767103, 40, true)
end

function Quest77671:OnSubFinish7767103(arg1)
    print("OnSubFinish7767103")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
end

return Quest77671
