require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70515 = class("Quest70515", QuestActorProxy)
Quest70515.defaultAlias = "Quest70515"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70515:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70515:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051501"] = self.OnSubStart7051501,
        ["7051502"] = self.OnSubStart7051502,
        ["7051503"] = self.OnSubStart7051503
    }
end

function Quest70515:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051501"] = self.OnSubFinish7051501,
        ["7051502"] = self.OnSubFinish7051502,
        ["7051503"] = self.OnSubFinish7051503
    }
end

function Quest70515:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70515:Start()
    print("Start")
end

function Quest70515:OnDestroy()
    print("OnDestroy")
end

function Quest70515:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70515:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70515:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30217Data.alias, 3)
end

function Quest70515:OnSubStart7051501(arg1)
    print("OnSubStart7051501")
    self:CreateQuestNpc(arg1, npcs.Npc30217Data.id, 1)
end

function Quest70515:OnSubFinish7051501(arg1)
    print("OnSubFinish7051501")
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70515:OnSubStart7051502(arg1)
    print("OnSubStart7051502")
end

function Quest70515:OnSubFinish7051502(arg1)
    print("OnSubFinish7051502")
end

function Quest70515:OnSubStart7051503(arg1)
    print("OnSubStart7051503")
end

function Quest70515:OnSubFinish7051503(arg1)
    print("OnSubFinish7051503")
    self:SafeDestroyQuestNpc(npcs.Npc30217Data.alias, 3)
end

return Quest70515
