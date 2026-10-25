require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76141 = class("Quest76141", QuestActorProxy)
Quest76141.defaultAlias = "Quest76141"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76141:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76141:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614101"] = self.OnSubStart7614101,
        ["7614103"] = self.OnSubStart7614103,
        ["7614102"] = self.OnSubStart7614102
    }
end

function Quest76141:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614101"] = self.OnSubFinish7614101,
        ["7614103"] = self.OnSubFinish7614103,
        ["7614102"] = self.OnSubFinish7614102
    }
end

function Quest76141:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7614102"] = self.OnSubFailed7614102}
end

function Quest76141:Start()
    print("Start")
end

function Quest76141:OnDestroy()
    print("OnDestroy")
end

function Quest76141:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76141:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76141:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76141:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7614103Trigger", 76141)
end

function Quest76141:ActorDestroy(arg1, arg2)
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

function Quest76141:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76141:OnSubStart7614101(arg1)
    print("OnSubStart7614101")
    this:CreateQuestNpc(arg1, npcs.Npc1322_2.id, 0, false, 0)
end

function Quest76141:OnSubFinish7614101(arg1)
    print("OnSubFinish7614101")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_2.alias)
end

function Quest76141:OnSubStart7614103(arg1)
    print("OnSubStart7614103")
    actorMgr:CreateActorWithPos("Q7614103Trigger", "Actor/Gadget/Q7614103Trigger", 70900002, 0, points._Q7614103TriggerPoint_.pos, points._Q7614103TriggerPoint_.rot, true, false, 1156, nil, 0, 76141)
end

function Quest76141:OnSubFinish7614103(arg1)
    print("OnSubFinish7614103")
end

function Quest76141:OnSubStart7614102(arg1)
    print("OnSubStart7614102")
    this:CreateQuestNpc(arg1, npcs.Npc1322_2.id, 0, false, 0)
    this:DeployStoryByQuest(147614100)
end

function Quest76141:OnSubFinish7614102(arg1)
    print("OnSubFinish7614102")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_2.alias)
    this:CancelStoryByQuest(147614100)
    this:DeployStoryByQuest(147614101)
end

function Quest76141:OnSubFailed7614102(arg1)
    print("OnSubFailed7614102")
    this:RecycleAllRes()
end

return Quest76141
