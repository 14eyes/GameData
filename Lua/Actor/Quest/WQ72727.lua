require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72727 = class("Quest72727", QuestActorProxy)
Quest72727.defaultAlias = "Quest72727"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72727:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72727:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7272701"] = self.OnSubStart7272701, ["7272702"] = self.OnSubStart7272702}
end

function Quest72727:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7272701"] = self.OnSubFinish7272701, ["7272702"] = self.OnSubFinish7272702}
end

function Quest72727:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72727:Start()
    print("Start")
end

function Quest72727:OnDestroy()
    print("OnDestroy")
end

function Quest72727:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72727:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72727:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72727:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest72727:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowBlackScreen(0.5, 2, 0, function(arg1)
            arg1:TransmitPlayerByQuestId(7272701, 1)
        end, nil, nil, "", false, true)
    end
end

function Quest72727:OnSubStart7272701(arg1)
    print("OnSubStart7272701")
    self:CreateQuestNpc(arg1, npcs.Npc30252Data.id, 1)
end

function Quest72727:OnSubFinish7272701(arg1)
    print("OnSubFinish7272701")
end

function Quest72727:OnSubStart7272702(arg1)
    print("OnSubStart7272702")
    self:NpcCreateWithTrigger(npcs.Npc30252Data.id, 7272702, 1)
end

function Quest72727:OnSubFinish7272702(arg1)
    print("OnSubFinish7272702")
end

return Quest72727
