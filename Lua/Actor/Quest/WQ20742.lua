require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20742 = class("Quest20742", QuestActorProxy)
Quest20742.defaultAlias = "Quest20742"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20742:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20742:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2074201"] = self.OnSubStart2074201,
        ["2074202"] = self.OnSubStart2074202,
        ["2074206"] = self.OnSubStart2074206,
        ["2074203"] = self.OnSubStart2074203,
        ["2074204"] = self.OnSubStart2074204,
        ["2074205"] = self.OnSubStart2074205,
        ["2074207"] = self.OnSubStart2074207,
        ["2074208"] = self.OnSubStart2074208
    }
end

function Quest20742:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2074201"] = self.OnSubFinish2074201,
        ["2074202"] = self.OnSubFinish2074202,
        ["2074206"] = self.OnSubFinish2074206,
        ["2074203"] = self.OnSubFinish2074203,
        ["2074204"] = self.OnSubFinish2074204,
        ["2074205"] = self.OnSubFinish2074205,
        ["2074207"] = self.OnSubFinish2074207,
        ["2074208"] = self.OnSubFinish2074208
    }
end

function Quest20742:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2074201"] = self.OnSubFailed2074201,
        ["2074202"] = self.OnSubFailed2074202,
        ["2074206"] = self.OnSubFailed2074206,
        ["2074203"] = self.OnSubFailed2074203,
        ["2074204"] = self.OnSubFailed2074204,
        ["2074205"] = self.OnSubFailed2074205,
        ["2074207"] = self.OnSubFailed2074207,
        ["2074208"] = self.OnSubFailed2074208
    }
end

function Quest20742:Start()
    print("Start")
end

function Quest20742:OnDestroy()
    print("OnDestroy")
end

function Quest20742:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, nil, nil, nil, "")
end

function Quest20742:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20742:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest20742:OnSubStart2074201(arg1)
    print("OnSubStart2074201")
end

function Quest20742:OnSubFinish2074201(arg1)
    print("OnSubFinish2074201")
end

function Quest20742:OnSubFailed2074201(arg1)
    print("OnSubFailed2074201")
end

function Quest20742:OnSubStart2074202(arg1)
    print("OnSubStart2074202")
end

function Quest20742:OnSubFinish2074202(arg1)
    print("OnSubFinish2074202")
end

function Quest20742:OnSubFailed2074202(arg1)
    print("OnSubFailed2074202")
end

function Quest20742:OnSubStart2074206(arg1)
    print("OnSubStart2074206")
end

function Quest20742:OnSubFinish2074206(arg1)
    print("OnSubFinish2074206")
end

function Quest20742:OnSubFailed2074206(arg1)
    print("OnSubFailed2074206")
end

function Quest20742:OnSubStart2074203(arg1)
    print("OnSubStart2074203")
end

function Quest20742:OnSubFinish2074203(arg1)
    print("OnSubFinish2074203")
end

function Quest20742:OnSubFailed2074203(arg1)
    print("OnSubFailed2074203")
end

function Quest20742:OnSubStart2074204(arg1)
    print("OnSubStart2074204")
end

function Quest20742:OnSubFinish2074204(arg1)
    print("OnSubFinish2074204")
end

function Quest20742:OnSubFailed2074204(arg1)
    print("OnSubFailed2074204")
end

function Quest20742:OnSubStart2074205(arg1)
    print("OnSubStart2074205")
end

function Quest20742:OnSubFinish2074205(arg1)
    print("OnSubFinish2074205")
end

function Quest20742:OnSubFailed2074205(arg1)
    print("OnSubFailed2074205")
end

function Quest20742:OnSubStart2074207(arg1)
    print("OnSubStart2074207")
end

function Quest20742:OnSubFinish2074207(arg1)
    print("OnSubFinish2074207")
end

function Quest20742:OnSubFailed2074207(arg1)
    print("OnSubFailed2074207")
end

function Quest20742:OnSubStart2074208(arg1)
    print("OnSubStart2074208")
end

function Quest20742:OnSubFinish2074208(arg1)
    print("OnSubFinish2074208")
end

function Quest20742:OnSubFailed2074208(arg1)
    print("OnSubFailed2074208")
end

return Quest20742
