require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77219 = class("Quest77219", QuestActorProxy)
Quest77219.defaultAlias = "Quest77219"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77219:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77219:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721901"] = self.OnSubStart7721901,
        ["7721902"] = self.OnSubStart7721902,
        ["7721903"] = self.OnSubStart7721903
    }
end

function Quest77219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721901"] = self.OnSubFinish7721901,
        ["7721902"] = self.OnSubFinish7721902,
        ["7721903"] = self.OnSubFinish7721903
    }
end

function Quest77219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7721902"] = self.OnSubFailed7721902}
end

function Quest77219:Start()
    print("Start")
end

function Quest77219:OnDestroy()
    print("OnDestroy")
end

function Quest77219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77219:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77219:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77219:OnSubStart7721901(arg1)
    print("OnSubStart7721901")
end

function Quest77219:OnSubFinish7721901(arg1)
    print("OnSubFinish7721901")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData77219, nil, nil, nil)
end

function Quest77219:OnSubStart7721902(arg1)
    print("OnSubStart7721902")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorUtils.ShowReminder(404379)
    end)
end

function Quest77219:OnSubFinish7721902(arg1)
    print("OnSubFinish7721902")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:UnCallDelayByQuest("1")
    actorUtils.InterruptReminder()
end

function Quest77219:OnSubFailed7721902(arg1)
    print("OnSubFailed7721902")
    this:RecycleAllRes()
    this:UnCallDelayByQuest("1")
    actorUtils.InterruptReminder()
end

function Quest77219:OnSubStart7721903(arg1)
    print("OnSubStart7721903")
    actorUtils.FinishQuestWithParam({false}, {7721903})
end

function Quest77219:OnSubFinish7721903(arg1)
    print("OnSubFinish7721903")
end

return Quest77219
