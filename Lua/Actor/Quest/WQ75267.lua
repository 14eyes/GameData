require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75267 = class("Quest75267", QuestActorProxy)
Quest75267.defaultAlias = "Quest75267"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75267:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75267:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7526701"] = self.OnSubStart7526701,
        ["7526702"] = self.OnSubStart7526702,
        ["7526703"] = self.OnSubStart7526703,
        ["7526704"] = self.OnSubStart7526704
    }
end

function Quest75267:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7526701"] = self.OnSubFinish7526701,
        ["7526702"] = self.OnSubFinish7526702,
        ["7526703"] = self.OnSubFinish7526703,
        ["7526704"] = self.OnSubFinish7526704
    }
end

function Quest75267:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75267:Start()
    print("Start")
end

function Quest75267:OnDestroy()
    print("OnDestroy")
end

function Quest75267:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75267:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75267:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75267:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7526701Trigger")
end

function Quest75267:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75267:OnSubStart7526701(arg1)
    print("OnSubStart7526701")
    actorMgr:CreateActorWithPos("Q7526701Trigger", "Actor/Gadget/Q7526701Trigger", 70900002, 0, points._Q7526701TriggerPoint_.pos, points._Q7526701TriggerPoint_.rot, true, false, 3)
end

function Quest75267:OnSubFinish7526701(arg1)
    print("OnSubFinish7526701")
end

function Quest75267:OnSubStart7526702(arg1)
    print("OnSubStart7526702")
    this:CreateQuestNpc(arg1, npcs.Npc6569.id, 0, false, 0)
end

function Quest75267:OnSubFinish7526702(arg1)
    print("OnSubFinish7526702")
end

function Quest75267:OnSubStart7526703(arg1)
    print("OnSubStart7526703")
end

function Quest75267:OnSubFinish7526703(arg1)
    print("OnSubFinish7526703")
end

function Quest75267:OnSubStart7526704(arg1)
    print("OnSubStart7526704")
end

function Quest75267:OnSubFinish7526704(arg1)
    print("OnSubFinish7526704")
end

return Quest75267
