require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71505 = class("Quest71505", QuestActorProxy)
Quest71505.defaultAlias = "Quest71505"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71505:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71505:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7150503"] = self.OnSubStart7150503,
        ["7150501"] = self.OnSubStart7150501,
        ["7150502"] = self.OnSubStart7150502
    }
end

function Quest71505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7150503"] = self.OnSubFinish7150503,
        ["7150501"] = self.OnSubFinish7150501,
        ["7150502"] = self.OnSubFinish7150502
    }
end

function Quest71505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71505:Start()
    print("Start")
end

function Quest71505:OnDestroy()
    print("OnDestroy")
end

function Quest71505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71505:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71505:OnSubStart7150503(arg1)
    print("OnSubStart7150503")
end

function Quest71505:OnSubFinish7150503(arg1)
    print("OnSubFinish7150503")
end

function Quest71505:OnSubStart7150501(arg1)
    print("OnSubStart7150501")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71505:OnSubFinish7150501(arg1)
    print("OnSubFinish7150501")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
end

function Quest71505:OnSubStart7150502(arg1)
    print("OnSubStart7150502")
end

function Quest71505:OnSubFinish7150502(arg1)
    print("OnSubFinish7150502")
end

return Quest71505
