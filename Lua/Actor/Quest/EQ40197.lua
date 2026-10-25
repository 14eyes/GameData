require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40197 = class("Quest40197", QuestActorProxy)
Quest40197.defaultAlias = "Quest40197"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40197:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40197:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4019701"] = self.OnSubStart4019701,
        ["4019706"] = self.OnSubStart4019706,
        ["4019702"] = self.OnSubStart4019702,
        ["4019703"] = self.OnSubStart4019703,
        ["4019704"] = self.OnSubStart4019704,
        ["4019705"] = self.OnSubStart4019705
    }
end

function Quest40197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4019701"] = self.OnSubFinish4019701,
        ["4019706"] = self.OnSubFinish4019706,
        ["4019702"] = self.OnSubFinish4019702,
        ["4019703"] = self.OnSubFinish4019703,
        ["4019704"] = self.OnSubFinish4019704,
        ["4019705"] = self.OnSubFinish4019705
    }
end

function Quest40197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40197:Start()
    print("Start")
end

function Quest40197:OnDestroy()
    print("OnDestroy")
end

function Quest40197:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40197:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40197:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q40197Trigger1")
    this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
end

function Quest40197:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q40197Trigger1")
    this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
end

function Quest40197:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40197:OnSubStart4019701(arg1)
    print("OnSubStart4019701")
end

function Quest40197:OnSubFinish4019701(arg1)
    print("OnSubFinish4019701")
end

function Quest40197:OnSubStart4019706(arg1)
    print("OnSubStart4019706")
    actorMgr:CreateActorWithPos("Q40197Trigger1", "Actor/Gadget/Q40197Trigger1", 70900002, 0, points._Q40197Trigger1Point_.pos, points._Q40197Trigger1Point_.rot, true, false, 3)
end

function Quest40197:OnSubFinish4019706(arg1)
    print("OnSubFinish4019706")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1075.alias, 3)
    end)
end

function Quest40197:OnSubStart4019702(arg1)
    print("OnSubStart4019702")
end

function Quest40197:OnSubFinish4019702(arg1)
    print("OnSubFinish4019702")
end

function Quest40197:OnSubStart4019703(arg1)
    print("OnSubStart4019703")
end

function Quest40197:OnSubFinish4019703(arg1)
    print("OnSubFinish4019703")
end

function Quest40197:OnSubStart4019704(arg1)
    print("OnSubStart4019704")
end

function Quest40197:OnSubFinish4019704(arg1)
    print("OnSubFinish4019704")
end

function Quest40197:OnSubStart4019705(arg1)
    print("OnSubStart4019705")
end

function Quest40197:OnSubFinish4019705(arg1)
    print("OnSubFinish4019705")
end

return Quest40197
