require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74181 = class("Quest74181", QuestActorProxy)
Quest74181.defaultAlias = "Quest74181"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74181:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74181:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7418101"] = self.OnSubStart7418101, ["7418102"] = self.OnSubStart7418102}
end

function Quest74181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7418101"] = self.OnSubFinish7418101, ["7418102"] = self.OnSubFinish7418102}
end

function Quest74181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74181:Start()
    print("Start")
end

function Quest74181:OnDestroy()
    print("OnDestroy")
end

function Quest74181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74181:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74181:OnSubStart7418101(arg1)
    print("OnSubStart7418101")
end

function Quest74181:OnSubFinish7418101(arg1)
    print("OnSubFinish7418101")
end

function Quest74181:OnSubStart7418102(arg1)
    print("OnSubStart7418102")
    this:CreateQuestNpc(arg1, npcs.Npc21284Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0)
end

function Quest74181:OnSubFinish7418102(arg1)
    print("OnSubFinish7418102")
end

return Quest74181
