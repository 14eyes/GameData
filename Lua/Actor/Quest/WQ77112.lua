require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77112 = class("Quest77112", QuestActorProxy)
Quest77112.defaultAlias = "Quest77112"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77112:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7711201"] = self.OnSubStart7711201,
        ["7711202"] = self.OnSubStart7711202,
        ["7711203"] = self.OnSubStart7711203,
        ["7711204"] = self.OnSubStart7711204,
        ["7711205"] = self.OnSubStart7711205,
        ["7711206"] = self.OnSubStart7711206
    }
end

function Quest77112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7711201"] = self.OnSubFinish7711201,
        ["7711202"] = self.OnSubFinish7711202,
        ["7711203"] = self.OnSubFinish7711203,
        ["7711204"] = self.OnSubFinish7711204,
        ["7711205"] = self.OnSubFinish7711205,
        ["7711206"] = self.OnSubFinish7711206
    }
end

function Quest77112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77112:Start()
    print("Start")
end

function Quest77112:OnDestroy()
    print("OnDestroy")
end

function Quest77112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77112:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7711202N22308Trigger")
    this:DestroyNpcTrigger("Q7711204N12404Trigger")
    this:ActorDestroy("Q7711201Trigger", 0)
    this:ActorDestroy("Q7711205Trigger", 0)
    this:SafeDestroyQuestNpc(npcs.Npc22308.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22413.alias, 3)
    this:RecycleAllRes()
end

function Quest77112:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7711201Trigger", 0)
    this:ActorDestroy("Q7711205Trigger", 0)
end

function Quest77112:ActorDestroy(arg1, arg2)
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

function Quest77112:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77112:OnSubStart7711201(arg1)
    print("OnSubStart7711201")
    this:CreateQuestNpc(arg1, npcs.Npc22722.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7711201Trigger", "Actor/Gadget/Q7711201Trigger", 70900002, 0, points._Q7711201TriggerPoint_.pos, points._Q7711201TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77112:OnSubFinish7711201(arg1)
    print("OnSubFinish7711201")
end

function Quest77112:OnSubStart7711202(arg1)
    print("OnSubStart7711202")
    this:NpcCreateWithNpcTrigger(npcs.Npc22722.id, 0, 15, 7711202)
end

function Quest77112:OnSubFinish7711202(arg1)
    print("OnSubFinish7711202")
    this:SafeDestroyQuestNpc(npcs.Npc22722.alias, 3)
end

function Quest77112:OnSubStart7711203(arg1)
    print("OnSubStart7711203")
end

function Quest77112:OnSubFinish7711203(arg1)
    print("OnSubFinish7711203")
end

function Quest77112:OnSubStart7711204(arg1)
    print("OnSubStart7711204")
    this:NpcCreateWithNpcTrigger(npcs.Npc12404.id, 0, 15, 7711204)
end

function Quest77112:OnSubFinish7711204(arg1)
    print("OnSubFinish7711204")
    this:SafeDestroyQuestNpc(npcs.Npc12404.alias, 3)
end

function Quest77112:OnSubStart7711205(arg1)
    print("OnSubStart7711205")
    actorMgr:CreateActorWithPos("Q7711205Trigger", "Actor/Gadget/Q7711205Trigger", 70900002, 0, points._Q7711205TriggerPoint_.pos, points._Q7711205TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77112:OnSubFinish7711205(arg1)
    print("OnSubFinish7711205")
end

function Quest77112:OnSubStart7711206(arg1)
    print("OnSubStart7711206")
end

function Quest77112:OnSubFinish7711206(arg1)
    print("OnSubFinish7711206")
end

return Quest77112
