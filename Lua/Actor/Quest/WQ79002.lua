require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79002 = class("Quest79002", QuestActorProxy)
Quest79002.defaultAlias = "Quest79002"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest79002:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900201"] = self.OnSubStart7900201,
        ["7900202"] = self.OnSubStart7900202,
        ["7900203"] = self.OnSubStart7900203,
        ["7900204"] = self.OnSubStart7900204,
        ["7900205"] = self.OnSubStart7900205,
        ["7900206"] = self.OnSubStart7900206
    }
end

function Quest79002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900201"] = self.OnSubFinish7900201,
        ["7900202"] = self.OnSubFinish7900202,
        ["7900203"] = self.OnSubFinish7900203,
        ["7900204"] = self.OnSubFinish7900204,
        ["7900205"] = self.OnSubFinish7900205,
        ["7900206"] = self.OnSubFinish7900206
    }
end

function Quest79002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900201"] = self.OnSubFailed7900201,
        ["7900202"] = self.OnSubFailed7900202,
        ["7900203"] = self.OnSubFailed7900203,
        ["7900204"] = self.OnSubFailed7900204,
        ["7900205"] = self.OnSubFailed7900205,
        ["7900206"] = self.OnSubFailed7900206
    }
end

function Quest79002:Start()
    print("Start")
end

function Quest79002:OnDestroy()
    print("OnDestroy")
end

function Quest79002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79002:OnSubStart7900201(arg1)
    print("OnSubStart7900201")
end

function Quest79002:OnSubFinish7900201(arg1)
    print("OnSubFinish7900201")
end

function Quest79002:OnSubFailed7900201(arg1)
    print("OnSubFailed7900201")
end

function Quest79002:OnSubStart7900202(arg1)
    print("OnSubStart7900202")
    self:NarratorOnlyTaskByData(datas.NarratorData, nil, 0)
end

function Quest79002:OnSubFinish7900202(arg1)
    print("OnSubFinish7900202")
end

function Quest79002:OnSubFailed7900202(arg1)
    print("OnSubFailed7900202")
end

function Quest79002:OnSubStart7900203(arg1)
    print("OnSubStart7900203")
end

function Quest79002:OnSubFinish7900203(arg1)
    print("OnSubFinish7900203")
end

function Quest79002:OnSubFailed7900203(arg1)
    print("OnSubFailed7900203")
end

function Quest79002:OnSubStart7900204(arg1)
    print("OnSubStart7900204")
end

function Quest79002:OnSubFinish7900204(arg1)
    print("OnSubFinish7900204")
end

function Quest79002:OnSubFailed7900204(arg1)
    print("OnSubFailed7900204")
end

function Quest79002:OnSubStart7900205(arg1)
    print("OnSubStart7900205")
end

function Quest79002:OnSubFinish7900205(arg1)
    print("OnSubFinish7900205")
end

function Quest79002:OnSubFailed7900205(arg1)
    print("OnSubFailed7900205")
end

function Quest79002:OnSubStart7900206(arg1)
    print("OnSubStart7900206")
end

function Quest79002:OnSubFinish7900206(arg1)
    print("OnSubFinish7900206")
end

function Quest79002:OnSubFailed7900206(arg1)
    print("OnSubFailed7900206")
end

return Quest79002
