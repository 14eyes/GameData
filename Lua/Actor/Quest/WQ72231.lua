require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72231 = class("Quest72231", QuestActorProxy)
Quest72231.defaultAlias = "Quest72231"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest72231:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72231:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7223101"] = self.OnSubStart7223101}
end

function Quest72231:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7223101"] = self.OnSubFinish7223101}
end

function Quest72231:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7223101"] = self.OnSubFailed7223101}
end

function Quest72231:Start()
    print("Start")
end

function Quest72231:OnDestroy()
    print("OnDestroy")
end

function Quest72231:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72231:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72231:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72231:OnSubStart7223101(arg1)
    print("OnSubStart7223101")
    this:CreateQuestNpc(arg1, npcs.Npc3182Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 3)
    actorMgr:CreateActorWithPos("Q7223101Trigger", "Actor/Gadget/Q7223101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72216_Qinzi").pos, sceneData:GetDummyPoint(3, "WQ72216_Qinzi").rot, true, false, 3)
end

function Quest72231:OnSubFinish7223101(arg1)
    print("OnSubFinish7223101")
    this:SafeDestroyQuestNpc(npcs.Npc3182Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3180Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3181Data.alias, 3)
end

function Quest72231:OnSubFailed7223101(arg1)
    print("OnSubFailed7223101")
end

return Quest72231
