require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77220 = class("Quest77220", QuestActorProxy)
Quest77220.defaultAlias = "Quest77220"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77220:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77220:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7722001"] = self.OnSubStart7722001,
        ["7722002"] = self.OnSubStart7722002,
        ["7722003"] = self.OnSubStart7722003
    }
end

function Quest77220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7722001"] = self.OnSubFinish7722001,
        ["7722002"] = self.OnSubFinish7722002,
        ["7722003"] = self.OnSubFinish7722003
    }
end

function Quest77220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7722002"] = self.OnSubFailed7722002}
end

function Quest77220:Start()
    print("Start")
end

function Quest77220:OnDestroy()
    print("OnDestroy")
end

function Quest77220:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77220:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77220:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77220:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77220:OnSubStart7722001(arg1)
    print("OnSubStart7722001")
end

function Quest77220:OnSubFinish7722001(arg1)
    print("OnSubFinish7722001")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData77220, nil, nil, nil)
end

function Quest77220:OnSubStart7722002(arg1)
    print("OnSubStart7722002")
    this:CallDelayByQuest("1", 2, function(arg1)
        actorUtils.ShowReminder(404379)
    end)
end

function Quest77220:OnSubFinish7722002(arg1)
    print("OnSubFinish7722002")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:UnCallDelayByQuest("1")
    actorUtils.InterruptReminder()
end

function Quest77220:OnSubFailed7722002(arg1)
    print("OnSubFailed7722002")
    this:RecycleAllRes()
    this:UnCallDelayByQuest("1")
    actorUtils.InterruptReminder()
end

function Quest77220:OnSubStart7722003(arg1)
    print("OnSubStart7722003")
    actorUtils.FinishQuestWithParam({false}, {7722003})
end

function Quest77220:OnSubFinish7722003(arg1)
    print("OnSubFinish7722003")
end

return Quest77220
