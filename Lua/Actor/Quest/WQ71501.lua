require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71501 = class("Quest71501", QuestActorProxy)
Quest71501.defaultAlias = "Quest71501"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71501:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71501:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7150101"] = self.OnSubStart7150101,
        ["7150102"] = self.OnSubStart7150102,
        ["7150103"] = self.OnSubStart7150103,
        ["7150104"] = self.OnSubStart7150104
    }
end

function Quest71501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7150101"] = self.OnSubFinish7150101,
        ["7150102"] = self.OnSubFinish7150102,
        ["7150103"] = self.OnSubFinish7150103,
        ["7150104"] = self.OnSubFinish7150104
    }
end

function Quest71501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71501:Start()
    print("Start")
end

function Quest71501:OnDestroy()
    print("OnDestroy")
end

function Quest71501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71501:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71501:OnSubStart7150101(arg1)
    print("OnSubStart7150101")
    self:CreateQuestNpc(arg1, npcs.Npc2078Data.id, 1)
end

function Quest71501:OnSubFinish7150101(arg1)
    print("OnSubFinish7150101")
    self:SafeDestroyQuestNpc(npcs.Npc2078Data.alias, 3)
end

function Quest71501:OnSubStart7150102(arg1)
    print("OnSubStart7150102")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71501:OnSubFinish7150102(arg1)
    print("OnSubFinish7150102")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

function Quest71501:OnSubStart7150103(arg1)
    print("OnSubStart7150103")
end

function Quest71501:OnSubFinish7150103(arg1)
    print("OnSubFinish7150103")
end

function Quest71501:OnSubStart7150104(arg1)
    print("OnSubStart7150104")
end

function Quest71501:OnSubFinish7150104(arg1)
    print("OnSubFinish7150104")
end

return Quest71501
