require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74012 = class("Quest74012", QuestActorProxy)
Quest74012.defaultAlias = "Quest74012"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest74012:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest74012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7401201"] = self.OnSubStart7401201,
        ["7401202"] = self.OnSubStart7401202,
        ["7401203"] = self.OnSubStart7401203,
        ["7401204"] = self.OnSubStart7401204,
        ["7401205"] = self.OnSubStart7401205,
        ["7401206"] = self.OnSubStart7401206,
        ["7401207"] = self.OnSubStart7401207,
        ["7401208"] = self.OnSubStart7401208,
        ["7401209"] = self.OnSubStart7401209
    }
end

function Quest74012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7401201"] = self.OnSubFinish7401201,
        ["7401202"] = self.OnSubFinish7401202,
        ["7401203"] = self.OnSubFinish7401203,
        ["7401204"] = self.OnSubFinish7401204,
        ["7401205"] = self.OnSubFinish7401205,
        ["7401206"] = self.OnSubFinish7401206,
        ["7401207"] = self.OnSubFinish7401207,
        ["7401208"] = self.OnSubFinish7401208,
        ["7401209"] = self.OnSubFinish7401209
    }
end

function Quest74012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74012:Start()
    print("Start")
end

function Quest74012:OnDestroy()
    print("OnDestroy")
end

function Quest74012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74012:OnSubStart7401201(arg1)
    print("OnSubStart7401201")
end

function Quest74012:OnSubFinish7401201(arg1)
    print("OnSubFinish7401201")
end

function Quest74012:OnSubStart7401202(arg1)
    print("OnSubStart7401202")
end

function Quest74012:OnSubFinish7401202(arg1)
    print("OnSubFinish7401202")
end

function Quest74012:OnSubStart7401203(arg1)
    print("OnSubStart7401203")
end

function Quest74012:OnSubFinish7401203(arg1)
    print("OnSubFinish7401203")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_740120209, nil, 74012)
end

function Quest74012:OnSubStart7401204(arg1)
    print("OnSubStart7401204")
end

function Quest74012:OnSubFinish7401204(arg1)
    print("OnSubFinish7401204")
end

function Quest74012:OnSubStart7401205(arg1)
    print("OnSubStart7401205")
end

function Quest74012:OnSubFinish7401205(arg1)
    print("OnSubFinish7401205")
end

function Quest74012:OnSubStart7401206(arg1)
    print("OnSubStart7401206")
end

function Quest74012:OnSubFinish7401206(arg1)
    print("OnSubFinish7401206")
    this:ShowBlackScreenWithDialogText(1, 4, 0.8, nil, nil, nil, 740120601, false, true)
end

function Quest74012:OnSubStart7401207(arg1)
    print("OnSubStart7401207")
end

function Quest74012:OnSubFinish7401207(arg1)
    print("OnSubFinish7401207")
    this:ShowBlackScreenWithDialogText(1, 4, 0.8, nil, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_740120702, nil, 74012)
    end, nil, 740120701, false, true)
end

function Quest74012:OnSubStart7401208(arg1)
    print("OnSubStart7401208")
end

function Quest74012:OnSubFinish7401208(arg1)
    print("OnSubFinish7401208")
end

function Quest74012:OnSubStart7401209(arg1)
    print("OnSubStart7401209")
end

function Quest74012:OnSubFinish7401209(arg1)
    print("OnSubFinish7401209")
end

return Quest74012
