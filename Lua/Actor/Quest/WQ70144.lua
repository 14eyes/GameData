require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70144 = class("Quest70144", QuestActorProxy)
Quest70144.defaultAlias = "Quest70144"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest70144:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest70144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7014404"] = self.OnSubStart7014404,
        ["7014403"] = self.OnSubStart7014403,
        ["7014405"] = self.OnSubStart7014405,
        ["7014401"] = self.OnSubStart7014401,
        ["7014402"] = self.OnSubStart7014402,
        ["7014406"] = self.OnSubStart7014406
    }
end

function Quest70144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7014404"] = self.OnSubFinish7014404,
        ["7014403"] = self.OnSubFinish7014403,
        ["7014405"] = self.OnSubFinish7014405,
        ["7014401"] = self.OnSubFinish7014401,
        ["7014402"] = self.OnSubFinish7014402,
        ["7014406"] = self.OnSubFinish7014406
    }
end

function Quest70144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7014404"] = self.OnSubFailed7014404,
        ["7014403"] = self.OnSubFailed7014403,
        ["7014405"] = self.OnSubFailed7014405,
        ["7014401"] = self.OnSubFailed7014401,
        ["7014402"] = self.OnSubFailed7014402,
        ["7014406"] = self.OnSubFailed7014406
    }
end

function Quest70144:Start()
    print("Start")
end

function Quest70144:OnDestroy()
    print("OnDestroy")
end

function Quest70144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70144:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("BlackScreenTest")
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Message_Q7014402")
    end
end

function Quest70144:OnSubStart7014404(arg1)
    print("OnSubStart7014404")
end

function Quest70144:OnSubFinish7014404(arg1)
    print("OnSubFinish7014404")
end

function Quest70144:OnSubFailed7014404(arg1)
    print("OnSubFailed7014404")
end

function Quest70144:OnSubStart7014403(arg1)
    print("OnSubStart7014403")
end

function Quest70144:OnSubFinish7014403(arg1)
    print("OnSubFinish7014403")
end

function Quest70144:OnSubFailed7014403(arg1)
    print("OnSubFailed7014403")
end

function Quest70144:OnSubStart7014405(arg1)
    print("OnSubStart7014405")
end

function Quest70144:OnSubFinish7014405(arg1)
    print("OnSubFinish7014405")
    self:NarratorOnlyTask(datas.NarratorTable_1, nil, "")
end

function Quest70144:OnSubFailed7014405(arg1)
    print("OnSubFailed7014405")
end

function Quest70144:OnSubStart7014401(arg1)
    print("OnSubStart7014401")
end

function Quest70144:OnSubFinish7014401(arg1)
    print("OnSubFinish7014401")
    self:NarratorOnlyTask(datas.NarratorTable_2, nil, "")
end

function Quest70144:OnSubFailed7014401(arg1)
    print("OnSubFailed7014401")
end

function Quest70144:OnSubStart7014402(arg1)
    print("OnSubStart7014402")
end

function Quest70144:OnSubFinish7014402(arg1)
    print("OnSubFinish7014402")
end

function Quest70144:OnSubFailed7014402(arg1)
    print("OnSubFailed7014402")
end

function Quest70144:OnSubStart7014406(arg1)
    print("OnSubStart7014406")
end

function Quest70144:OnSubFinish7014406(arg1)
    print("OnSubFinish7014406")
end

function Quest70144:OnSubFailed7014406(arg1)
    print("OnSubFailed7014406")
end

return Quest70144
