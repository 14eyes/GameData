require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77221 = class("Quest77221", QuestActorProxy)
Quest77221.defaultAlias = "Quest77221"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77221:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77221:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7722101"] = self.OnSubStart7722101,
        ["7722102"] = self.OnSubStart7722102,
        ["7722103"] = self.OnSubStart7722103
    }
end

function Quest77221:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7722101"] = self.OnSubFinish7722101,
        ["7722102"] = self.OnSubFinish7722102,
        ["7722103"] = self.OnSubFinish7722103
    }
end

function Quest77221:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7722102"] = self.OnSubFailed7722102}
end

function Quest77221:Start()
    print("Start")
end

function Quest77221:OnDestroy()
    print("OnDestroy")
end

function Quest77221:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77221:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77221:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77221:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77221:OnSubStart7722101(arg1)
    print("OnSubStart7722101")
end

function Quest77221:OnSubFinish7722101(arg1)
    print("OnSubFinish7722101")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData77221, nil, nil, nil)
end

function Quest77221:OnSubStart7722102(arg1)
    print("OnSubStart7722102")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorUtils.ShowReminder(404379)
    end)
end

function Quest77221:OnSubFinish7722102(arg1)
    print("OnSubFinish7722102")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:UnCallDelayByQuest("1")
    actorUtils.InterruptReminder()
end

function Quest77221:OnSubFailed7722102(arg1)
    print("OnSubFailed7722102")
    this:RecycleAllRes()
    this:UnCallDelayByQuest("1")
    actorUtils.InterruptReminder()
end

function Quest77221:OnSubStart7722103(arg1)
    print("OnSubStart7722103")
    actorUtils.FinishQuestWithParam({false}, {7722103})
end

function Quest77221:OnSubFinish7722103(arg1)
    print("OnSubFinish7722103")
end

return Quest77221
