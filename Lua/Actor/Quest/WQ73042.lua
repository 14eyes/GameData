require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73042 = class("Quest73042", QuestActorProxy)
Quest73042.defaultAlias = "Quest73042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304201"] = self.OnSubStart7304201,
        ["7304205"] = self.OnSubStart7304205,
        ["7304202"] = self.OnSubStart7304202,
        ["7304203"] = self.OnSubStart7304203,
        ["7304204"] = self.OnSubStart7304204
    }
end

function Quest73042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304201"] = self.OnSubFinish7304201,
        ["7304205"] = self.OnSubFinish7304205,
        ["7304202"] = self.OnSubFinish7304202,
        ["7304203"] = self.OnSubFinish7304203,
        ["7304204"] = self.OnSubFinish7304204
    }
end

function Quest73042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73042:Start()
    print("Start")
end

function Quest73042:OnDestroy()
    print("OnDestroy")
end

function Quest73042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73042:OnSubStart7304201(arg1)
    print("OnSubStart7304201")
    self:CreateQuestNpc(arg1, npcs.Npc20716Data.id, 1)
end

function Quest73042:OnSubFinish7304201(arg1)
    print("OnSubFinish7304201")
end

function Quest73042:OnSubStart7304205(arg1)
    print("OnSubStart7304205")
end

function Quest73042:OnSubFinish7304205(arg1)
    print("OnSubFinish7304205")
end

function Quest73042:OnSubStart7304202(arg1)
    print("OnSubStart7304202")
end

function Quest73042:OnSubFinish7304202(arg1)
    print("OnSubFinish7304202")
end

function Quest73042:OnSubStart7304203(arg1)
    print("OnSubStart7304203")
end

function Quest73042:OnSubFinish7304203(arg1)
    print("OnSubFinish7304203")
end

function Quest73042:OnSubStart7304204(arg1)
    print("OnSubStart7304204")
end

function Quest73042:OnSubFinish7304204(arg1)
    print("OnSubFinish7304204")
end

return Quest73042
