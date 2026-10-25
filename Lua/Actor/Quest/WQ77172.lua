require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77172 = class("Quest77172", QuestActorProxy)
Quest77172.defaultAlias = "Quest77172"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77172:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77172:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7717201"] = self.OnSubStart7717201,
        ["7717202"] = self.OnSubStart7717202,
        ["7717203"] = self.OnSubStart7717203
    }
end

function Quest77172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7717201"] = self.OnSubFinish7717201,
        ["7717202"] = self.OnSubFinish7717202,
        ["7717203"] = self.OnSubFinish7717203
    }
end

function Quest77172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77172:Start()
    print("Start")
end

function Quest77172:OnDestroy()
    print("OnDestroy")
end

function Quest77172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77172:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77172:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7717202igger", 77172)
end

function Quest77172:ActorDestroy(arg1, arg2)
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

function Quest77172:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77172:OnSubStart7717201(arg1)
    print("OnSubStart7717201")
    this:CreateQuestNpc(arg1, npcs.Npc22592.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22593.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22594.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22595.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22596.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22632.id, 0, false, 0)
end

function Quest77172:OnSubFinish7717201(arg1)
    print("OnSubFinish7717201")
    this:NpcDestroyImmediately(3, npcs.Npc22592.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22593.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22594.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22595.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22596.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22632.alias)
end

function Quest77172:OnSubStart7717202(arg1)
    print("OnSubStart7717202")
    this:CreateQuestNpc(arg1, npcs.Npc22629.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22630.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7717202igger", "Actor/Gadget/Q7717202igger", 70900002, 0, points._Q7717202iggerPoint_.pos, points._Q7717202iggerPoint_.rot, true, false, 3, nil, 0, 77172)
end

function Quest77172:OnSubFinish7717202(arg1)
    print("OnSubFinish7717202")
    this:NpcDestroyImmediately(3, npcs.Npc22629.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22630.alias)
    this:ActorDestroy("Q7717202igger", 77172)
end

function Quest77172:OnSubStart7717203(arg1)
    print("OnSubStart7717203")
    this:CreateQuestNpc(arg1, npcs.Npc22500.id, 0, false, 0)
end

function Quest77172:OnSubFinish7717203(arg1)
    print("OnSubFinish7717203")
    this:NpcDestroyImmediately(3, npcs.Npc22500.alias)
end

return Quest77172
