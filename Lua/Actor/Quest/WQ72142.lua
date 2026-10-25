require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72142 = class("Quest72142", QuestActorProxy)
Quest72142.defaultAlias = "Quest72142"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72142:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214201"] = self.OnSubStart7214201,
        ["7214205"] = self.OnSubStart7214205,
        ["7214202"] = self.OnSubStart7214202,
        ["7214203"] = self.OnSubStart7214203,
        ["7214204"] = self.OnSubStart7214204
    }
end

function Quest72142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214201"] = self.OnSubFinish7214201,
        ["7214205"] = self.OnSubFinish7214205,
        ["7214202"] = self.OnSubFinish7214202,
        ["7214203"] = self.OnSubFinish7214203,
        ["7214204"] = self.OnSubFinish7214204
    }
end

function Quest72142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214201"] = self.OnSubFailed7214201,
        ["7214205"] = self.OnSubFailed7214205,
        ["7214202"] = self.OnSubFailed7214202,
        ["7214203"] = self.OnSubFailed7214203,
        ["7214204"] = self.OnSubFailed7214204
    }
end

function Quest72142:Start()
    print("Start")
end

function Quest72142:OnDestroy()
    print("OnDestroy")
end

function Quest72142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72142:OnSubStart7214201(arg1)
    print("OnSubStart7214201")
    self:FinishQuestID(false, 7214201)
end

function Quest72142:OnSubFinish7214201(arg1)
    print("OnSubFinish7214201")
end

function Quest72142:OnSubFailed7214201(arg1)
    print("OnSubFailed7214201")
end

function Quest72142:OnSubStart7214205(arg1)
    print("OnSubStart7214205")
end

function Quest72142:OnSubFinish7214205(arg1)
    print("OnSubFinish7214205")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72142:OnSubFailed7214205(arg1)
    print("OnSubFailed7214205")
end

function Quest72142:OnSubStart7214202(arg1)
    print("OnSubStart7214202")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72142:OnSubFinish7214202(arg1)
    print("OnSubFinish7214202")
end

function Quest72142:OnSubFailed7214202(arg1)
    print("OnSubFailed7214202")
end

function Quest72142:OnSubStart7214203(arg1)
    print("OnSubStart7214203")
end

function Quest72142:OnSubFinish7214203(arg1)
    print("OnSubFinish7214203")
end

function Quest72142:OnSubFailed7214203(arg1)
    print("OnSubFailed7214203")
end

function Quest72142:OnSubStart7214204(arg1)
    print("OnSubStart7214204")
end

function Quest72142:OnSubFinish7214204(arg1)
    print("OnSubFinish7214204")
end

function Quest72142:OnSubFailed7214204(arg1)
    print("OnSubFailed7214204")
end

return Quest72142
