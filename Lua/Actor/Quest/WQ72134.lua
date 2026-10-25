require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72134 = class("Quest72134", QuestActorProxy)
Quest72134.defaultAlias = "Quest72134"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72134:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72134:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7213401"] = self.OnSubStart7213401, ["7213402"] = self.OnSubStart7213402}
end

function Quest72134:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7213401"] = self.OnSubFinish7213401, ["7213402"] = self.OnSubFinish7213402}
end

function Quest72134:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7213401"] = self.OnSubFailed7213401, ["7213402"] = self.OnSubFailed7213402}
end

function Quest72134:Start()
    print("Start")
end

function Quest72134:OnDestroy()
    print("OnDestroy")
end

function Quest72134:OnMainFinished(arg1)
    print("OnMainFinished")
    self:FinishQuestID(false, subIDs.q7213402)
end

function Quest72134:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72134:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72134:cutscene()
    print("cutscene")
    self:PlayCutsceneIndex("7213401", self.OnMainFinished, nil, self.OnMainFinished, false)
end

function Quest72134:OnSubStart7213401(arg1)
    print("OnSubStart7213401")
    self:CreateQuestNpc(arg1, npcs.Npc20247Data.id, 1)
end

function Quest72134:OnSubFinish7213401(arg1)
    print("OnSubFinish7213401")
    self:ActionSafeCall(self.cutscene)
end

function Quest72134:OnSubFailed7213401(arg1)
    print("OnSubFailed7213401")
end

function Quest72134:OnSubStart7213402(arg1)
    print("OnSubStart7213402")
    self:CreateQuestNpc(arg1, npcs.Npc20247Data.id, 1)
end

function Quest72134:OnSubFinish7213402(arg1)
    print("OnSubFinish7213402")
    self:SafeDestroyQuestNpc(npcs.Npc20247Data.alias, 3)
end

function Quest72134:OnSubFailed7213402(arg1)
    print("OnSubFailed7213402")
end

return Quest72134
