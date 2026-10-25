require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76124 = class("Quest76124", QuestActorProxy)
Quest76124.defaultAlias = "Quest76124"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76124:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612404"] = self.OnSubStart7612404,
        ["7612409"] = self.OnSubStart7612409,
        ["7612401"] = self.OnSubStart7612401,
        ["7612402"] = self.OnSubStart7612402,
        ["7612405"] = self.OnSubStart7612405,
        ["7612403"] = self.OnSubStart7612403
    }
end

function Quest76124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612404"] = self.OnSubFinish7612404,
        ["7612409"] = self.OnSubFinish7612409,
        ["7612401"] = self.OnSubFinish7612401,
        ["7612402"] = self.OnSubFinish7612402,
        ["7612405"] = self.OnSubFinish7612405,
        ["7612403"] = self.OnSubFinish7612403
    }
end

function Quest76124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76124:Start()
    print("Start")
end

function Quest76124:OnDestroy()
    print("OnDestroy")
end

function Quest76124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76124:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7612409Trigger", nil)
    this:ActorDestroy("Q7612404Trigger", nil)
end

function Quest76124:ActorDestroy(arg1, arg2)
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

function Quest76124:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76124:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76124:OnSubStart7612404(arg1)
    print("OnSubStart7612404")
    actorMgr:CreateActorWithPos("Q7612404Trigger", "Actor/Gadget/Q7612404Trigger", 70900002, 0, points._Q7612404TriggerPoint_.pos, points._Q7612404TriggerPoint_.rot, true, false, 103, nil, 0, 76124)
end

function Quest76124:OnSubFinish7612404(arg1)
    print("OnSubFinish7612404")
end

function Quest76124:OnSubStart7612409(arg1)
    print("OnSubStart7612409")
    this:CreateQuestNpc(arg1, npcs.Npc22412.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22412.alias, 76124):DoFreeStyle(1050, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7612409Trigger", "Actor/Gadget/Q7612409Trigger", 70900002, 0, points._Q7612409TriggerPoint_.pos, points._Q7612409TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76124:OnSubFinish7612409(arg1)
    print("OnSubFinish7612409")
end

function Quest76124:OnSubStart7612401(arg1)
    print("OnSubStart7612401")
end

function Quest76124:OnSubFinish7612401(arg1)
    print("OnSubFinish7612401")
end

function Quest76124:OnSubStart7612402(arg1)
    print("OnSubStart7612402")
    this:CallDelayByQuest("", 3, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(7612402, 0, 30, 0, npcs.Npc22412.id)
    end)
end

function Quest76124:OnSubFinish7612402(arg1)
    print("OnSubFinish7612402")
end

function Quest76124:OnSubStart7612405(arg1)
    print("OnSubStart7612405")
end

function Quest76124:OnSubFinish7612405(arg1)
    print("OnSubFinish7612405")
end

function Quest76124:OnSubStart7612403(arg1)
    print("OnSubStart7612403")
end

function Quest76124:OnSubFinish7612403(arg1)
    print("OnSubFinish7612403")
    this:NpcDestroyImmediately(103, npcs.Npc22412.alias)
end

return Quest76124
