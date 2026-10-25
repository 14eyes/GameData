require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76681 = class("Quest76681", QuestActorProxy)
Quest76681.defaultAlias = "Quest76681"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76681:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76681:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7668101"] = self.OnSubStart7668101,
        ["7668103"] = self.OnSubStart7668103,
        ["7668104"] = self.OnSubStart7668104,
        ["7668105"] = self.OnSubStart7668105,
        ["7668106"] = self.OnSubStart7668106,
        ["7668107"] = self.OnSubStart7668107
    }
end

function Quest76681:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7668101"] = self.OnSubFinish7668101,
        ["7668103"] = self.OnSubFinish7668103,
        ["7668104"] = self.OnSubFinish7668104,
        ["7668105"] = self.OnSubFinish7668105,
        ["7668106"] = self.OnSubFinish7668106,
        ["7668107"] = self.OnSubFinish7668107
    }
end

function Quest76681:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76681:Start()
    print("Start")
end

function Quest76681:OnDestroy()
    print("OnDestroy")
end

function Quest76681:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76681:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76681:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76681:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7668101Trigger", 0)
    this:ActorDestroy("Q7668103Trigger", 0)
end

function Quest76681:ActorDestroy(arg1, arg2)
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

function Quest76681:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76681:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76681:OnSubStart7668101(arg1)
    print("OnSubStart7668101")
    actorMgr:CreateActorWithPos("Q7668101Trigger", "Actor/Gadget/Q7668101Trigger", 70900002, 0, points._Q7668101TriggerPoint_.pos, points._Q7668101TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76681:OnSubFinish7668101(arg1)
    print("OnSubFinish7668101")
    this:SetNavigationByMainId(76681, true)
end

function Quest76681:OnSubStart7668103(arg1)
    print("OnSubStart7668103")
    actorMgr:CreateActorWithPos("Q7668103Trigger", "Actor/Gadget/Q7668103Trigger", 70900002, 0, points._Q7668103TriggerPoint_.pos, points._Q7668103TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76681:OnSubFinish7668103(arg1)
    print("OnSubFinish7668103")
end

function Quest76681:OnSubStart7668104(arg1)
    print("OnSubStart7668104")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22406.id, 0, 7668104, 60, true)
end

function Quest76681:OnSubFinish7668104(arg1)
    print("OnSubFinish7668104")
    this:NpcDestroyImmediately(102, npcs.Npc22406.alias)
end

function Quest76681:OnSubStart7668105(arg1)
    print("OnSubStart7668105")
end

function Quest76681:OnSubFinish7668105(arg1)
    print("OnSubFinish7668105")
end

function Quest76681:OnSubStart7668106(arg1)
    print("OnSubStart7668106")
end

function Quest76681:OnSubFinish7668106(arg1)
    print("OnSubFinish7668106")
end

function Quest76681:OnSubStart7668107(arg1)
    print("OnSubStart7668107")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22406.id, 0, 7668107, 40, true)
end

function Quest76681:OnSubFinish7668107(arg1)
    print("OnSubFinish7668107")
    this:NpcDestroyImmediately(102, npcs.Npc22406.alias)
end

return Quest76681
