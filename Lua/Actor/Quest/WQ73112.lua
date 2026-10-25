require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73112 = class("Quest73112", QuestActorProxy)
Quest73112.defaultAlias = "Quest73112"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73112:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73112:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311201"] = self.OnSubStart7311201,
        ["7311202"] = self.OnSubStart7311202,
        ["7311203"] = self.OnSubStart7311203,
        ["7311204"] = self.OnSubStart7311204,
        ["7311205"] = self.OnSubStart7311205,
        ["7311206"] = self.OnSubStart7311206,
        ["7311207"] = self.OnSubStart7311207,
        ["7311208"] = self.OnSubStart7311208
    }
end

function Quest73112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311201"] = self.OnSubFinish7311201,
        ["7311202"] = self.OnSubFinish7311202,
        ["7311203"] = self.OnSubFinish7311203,
        ["7311204"] = self.OnSubFinish7311204,
        ["7311205"] = self.OnSubFinish7311205,
        ["7311206"] = self.OnSubFinish7311206,
        ["7311207"] = self.OnSubFinish7311207,
        ["7311208"] = self.OnSubFinish7311208
    }
end

function Quest73112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73112:Start()
    print("Start")
end

function Quest73112:OnDestroy()
    print("OnDestroy")
end

function Quest73112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73112:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73112:OnSubStart7311201(arg1)
    print("OnSubStart7311201")
end

function Quest73112:OnSubFinish7311201(arg1)
    print("OnSubFinish7311201")
end

function Quest73112:OnSubStart7311202(arg1)
    print("OnSubStart7311202")
    self:CreateQuestNpc(arg1, npcs.Npc20753Data.id, 1)
end

function Quest73112:OnSubFinish7311202(arg1)
    print("OnSubFinish7311202")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20753Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73112:OnSubStart7311203(arg1)
    print("OnSubStart7311203")
end

function Quest73112:OnSubFinish7311203(arg1)
    print("OnSubFinish7311203")
end

function Quest73112:OnSubStart7311204(arg1)
    print("OnSubStart7311204")
end

function Quest73112:OnSubFinish7311204(arg1)
    print("OnSubFinish7311204")
end

function Quest73112:OnSubStart7311205(arg1)
    print("OnSubStart7311205")
end

function Quest73112:OnSubFinish7311205(arg1)
    print("OnSubFinish7311205")
end

function Quest73112:OnSubStart7311206(arg1)
    print("OnSubStart7311206")
end

function Quest73112:OnSubFinish7311206(arg1)
    print("OnSubFinish7311206")
end

function Quest73112:OnSubStart7311207(arg1)
    print("OnSubStart7311207")
end

function Quest73112:OnSubFinish7311207(arg1)
    print("OnSubFinish7311207")
end

function Quest73112:OnSubStart7311208(arg1)
    print("OnSubStart7311208")
end

function Quest73112:OnSubFinish7311208(arg1)
    print("OnSubFinish7311208")
end

return Quest73112
