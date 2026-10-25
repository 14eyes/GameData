require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12027 = class("Quest12027", QuestActorProxy)
Quest12027.defaultAlias = "Quest12027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12027:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1202701"] = self.OnSubStart1202701, ["1202702"] = self.OnSubStart1202702}
end

function Quest12027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1202701"] = self.OnSubFinish1202701, ["1202702"] = self.OnSubFinish1202702}
end

function Quest12027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12027:Start()
    print("Start")
end

function Quest12027:OnDestroy()
    print("OnDestroy")
end

function Quest12027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12027:OnSubStart1202701(arg1)
    print("OnSubStart1202701")
    self:CreateQuestNpc(arg1, npcs.Npc12201Data.id, 1)
    actorMgr:CreateActorWithPos("Q1202701Trigger", "Actor/Gadget/Q1202701Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1202512_guipopo").pos, sceneData:GetDummyPoint(3, "Q1202512_guipopo").rot, true, false, 3)
end

function Quest12027:OnSubFinish1202701(arg1)
    print("OnSubFinish1202701")
    self:SafeDestroyQuestNpc(npcs.Npc12201Data.alias, 3)
end

function Quest12027:OnSubStart1202702(arg1)
    print("OnSubStart1202702")
end

function Quest12027:OnSubFinish1202702(arg1)
    print("OnSubFinish1202702")
end

return Quest12027
