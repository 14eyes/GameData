require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72692 = class("Quest72692", QuestActorProxy)
Quest72692.defaultAlias = "Quest72692"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72692:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72692:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269206"] = self.OnSubStart7269206,
        ["7269201"] = self.OnSubStart7269201,
        ["7269202"] = self.OnSubStart7269202,
        ["7269204"] = self.OnSubStart7269204,
        ["7269205"] = self.OnSubStart7269205
    }
end

function Quest72692:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269206"] = self.OnSubFinish7269206,
        ["7269201"] = self.OnSubFinish7269201,
        ["7269202"] = self.OnSubFinish7269202,
        ["7269204"] = self.OnSubFinish7269204,
        ["7269205"] = self.OnSubFinish7269205
    }
end

function Quest72692:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72692:Start()
    print("Start")
end

function Quest72692:OnDestroy()
    print("OnDestroy")
end

function Quest72692:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72692:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72692:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30172Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    actorMgr:DestroyEntityActor("Q72692Trigger", 3, false)
end

function Quest72692:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72692:OnSubStart7269206(arg1)
    print("OnSubStart7269206")
end

function Quest72692:OnSubFinish7269206(arg1)
    print("OnSubFinish7269206")
end

function Quest72692:OnSubStart7269201(arg1)
    print("OnSubStart7269201")
end

function Quest72692:OnSubFinish7269201(arg1)
    print("OnSubFinish7269201")
end

function Quest72692:OnSubStart7269202(arg1)
    print("OnSubStart7269202")
end

function Quest72692:OnSubFinish7269202(arg1)
    print("OnSubFinish7269202")
end

function Quest72692:OnSubStart7269204(arg1)
    print("OnSubStart7269204")
end

function Quest72692:OnSubFinish7269204(arg1)
    print("OnSubFinish7269204")
end

function Quest72692:OnSubStart7269205(arg1)
    print("OnSubStart7269205")
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q72692Trigger", "Actor/Gadget/Q72692Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7269101_N30173").pos, sceneData:GetDummyPoint(3, "Q7269101_N30173").rot, true, false, 3)
    end)
end

function Quest72692:OnSubFinish7269205(arg1)
    print("OnSubFinish7269205")
    self:ActorDestroy("Q72692Trigger")
end

return Quest72692
