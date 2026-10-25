require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2021 = class("Quest2021", QuestActorProxy)
Quest2021.defaultAlias = "Quest2021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2021:OnSubStartHandlerBuild()
    self.subStartHandlers = {["202101"] = self.OnSubStart202101, ["202102"] = self.OnSubStart202102}
end

function Quest2021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["202101"] = self.OnSubFinish202101, ["202102"] = self.OnSubFinish202102}
end

function Quest2021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["202101"] = self.OnSubFailed202101, ["202102"] = self.OnSubFailed202102}
end

function Quest2021:Start()
    print("Start")
end

function Quest2021:OnDestroy()
    print("OnDestroy")
end

function Quest2021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2021:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest2021:OnSubStart202101(arg1)
    print("OnSubStart202101")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 2)
end

function Quest2021:OnSubFinish202101(arg1)
    print("OnSubFinish202101")
    self:NpcDestroy(npcs.PaimonData.alias, 3)
end

function Quest2021:OnSubFailed202101(arg1)
    print("OnSubFailed202101")
end

function Quest2021:OnSubStart202102(arg1)
    print("OnSubStart202102")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1034Data.alias):DoFreeStyle(1230)
end

function Quest2021:OnSubFinish202102(arg1)
    print("OnSubFinish202102")
end

function Quest2021:OnSubFailed202102(arg1)
    print("OnSubFailed202102")
end

return Quest2021
