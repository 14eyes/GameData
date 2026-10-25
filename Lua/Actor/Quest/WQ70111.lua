require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70111 = class("Quest70111", QuestActorProxy)
Quest70111.defaultAlias = "Quest70111"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70111:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7011101"] = self.OnSubStart7011101,
        ["7011102"] = self.OnSubStart7011102,
        ["7011104"] = self.OnSubStart7011104,
        ["7011103"] = self.OnSubStart7011103
    }
end

function Quest70111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7011101"] = self.OnSubFinish7011101,
        ["7011102"] = self.OnSubFinish7011102,
        ["7011104"] = self.OnSubFinish7011104,
        ["7011103"] = self.OnSubFinish7011103
    }
end

function Quest70111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7011104"] = self.OnSubFailed7011104}
end

function Quest70111:Start()
    print("Start")
end

function Quest70111:OnDestroy()
    print("OnDestroy")
end

function Quest70111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70111:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70111:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7011101Trigger", 70111)
end

function Quest70111:ActorDestroy(arg1, arg2)
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

function Quest70111:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70111:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70111:OnSubStart7011101(arg1)
    print("OnSubStart7011101")
    this:CreateQuestNpc(arg1, npcs.Npc1826.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7011101Trigger", "Actor/Gadget/Q7011101Trigger", 70900002, 0, points._Q7011101TriggerPoint_.pos, points._Q7011101TriggerPoint_.rot, true, false, 103, nil, 0, 70111)
end

function Quest70111:OnSubFinish7011101(arg1)
    print("OnSubFinish7011101")
end

function Quest70111:OnSubStart7011102(arg1)
    print("OnSubStart7011102")
    this:NpcCreateWithNpcTrigger(npcs.Npc1826.id, 0, 10, 7011102)
end

function Quest70111:OnSubFinish7011102(arg1)
    print("OnSubFinish7011102")
end

function Quest70111:OnSubStart7011104(arg1)
    print("OnSubStart7011104")
end

function Quest70111:OnSubFinish7011104(arg1)
    print("OnSubFinish7011104")
end

function Quest70111:OnSubFailed7011104(arg1)
    print("OnSubFailed7011104")
    this:RecycleAllRes()
end

function Quest70111:OnSubStart7011103(arg1)
    print("OnSubStart7011103")
    this:NpcCreateWithNpcTrigger(npcs.Npc1826.id, 0, 20, 7011103)
end

function Quest70111:OnSubFinish7011103(arg1)
    print("OnSubFinish7011103")
    this:NpcDestroyImmediately(103, npcs.Npc1826.alias)
end

return Quest70111
