require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73064 = class("Quest73064", QuestActorProxy)
Quest73064.defaultAlias = "Quest73064"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest73064:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest73064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306401"] = self.OnSubStart7306401,
        ["7306402"] = self.OnSubStart7306402,
        ["7306406"] = self.OnSubStart7306406,
        ["7306407"] = self.OnSubStart7306407,
        ["7306408"] = self.OnSubStart7306408,
        ["7306409"] = self.OnSubStart7306409,
        ["7306410"] = self.OnSubStart7306410,
        ["7306411"] = self.OnSubStart7306411,
        ["7306412"] = self.OnSubStart7306412,
        ["7306413"] = self.OnSubStart7306413,
        ["7306405"] = self.OnSubStart7306405,
        ["7306414"] = self.OnSubStart7306414,
        ["7306403"] = self.OnSubStart7306403,
        ["7306404"] = self.OnSubStart7306404
    }
end

function Quest73064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306401"] = self.OnSubFinish7306401,
        ["7306402"] = self.OnSubFinish7306402,
        ["7306406"] = self.OnSubFinish7306406,
        ["7306407"] = self.OnSubFinish7306407,
        ["7306408"] = self.OnSubFinish7306408,
        ["7306409"] = self.OnSubFinish7306409,
        ["7306410"] = self.OnSubFinish7306410,
        ["7306411"] = self.OnSubFinish7306411,
        ["7306412"] = self.OnSubFinish7306412,
        ["7306413"] = self.OnSubFinish7306413,
        ["7306405"] = self.OnSubFinish7306405,
        ["7306414"] = self.OnSubFinish7306414,
        ["7306403"] = self.OnSubFinish7306403,
        ["7306404"] = self.OnSubFinish7306404
    }
end

function Quest73064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73064:Start()
    print("Start")
end

function Quest73064:OnDestroy()
    print("OnDestroy")
end

function Quest73064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73064:OnSubStart7306401(arg1)
    print("OnSubStart7306401")
end

function Quest73064:OnSubFinish7306401(arg1)
    print("OnSubFinish7306401")
end

function Quest73064:OnSubStart7306402(arg1)
    print("OnSubStart7306402")
end

function Quest73064:OnSubFinish7306402(arg1)
    print("OnSubFinish7306402")
end

function Quest73064:OnSubStart7306406(arg1)
    print("OnSubStart7306406")
end

function Quest73064:OnSubFinish7306406(arg1)
    print("OnSubFinish7306406")
end

function Quest73064:OnSubStart7306407(arg1)
    print("OnSubStart7306407")
end

function Quest73064:OnSubFinish7306407(arg1)
    print("OnSubFinish7306407")
end

function Quest73064:OnSubStart7306408(arg1)
    print("OnSubStart7306408")
end

function Quest73064:OnSubFinish7306408(arg1)
    print("OnSubFinish7306408")
end

function Quest73064:OnSubStart7306409(arg1)
    print("OnSubStart7306409")
end

function Quest73064:OnSubFinish7306409(arg1)
    print("OnSubFinish7306409")
end

function Quest73064:OnSubStart7306410(arg1)
    print("OnSubStart7306410")
end

function Quest73064:OnSubFinish7306410(arg1)
    print("OnSubFinish7306410")
end

function Quest73064:OnSubStart7306411(arg1)
    print("OnSubStart7306411")
end

function Quest73064:OnSubFinish7306411(arg1)
    print("OnSubFinish7306411")
end

function Quest73064:OnSubStart7306412(arg1)
    print("OnSubStart7306412")
end

function Quest73064:OnSubFinish7306412(arg1)
    print("OnSubFinish7306412")
end

function Quest73064:OnSubStart7306413(arg1)
    print("OnSubStart7306413")
end

function Quest73064:OnSubFinish7306413(arg1)
    print("OnSubFinish7306413")
end

function Quest73064:OnSubStart7306405(arg1)
    print("OnSubStart7306405")
end

function Quest73064:OnSubFinish7306405(arg1)
    print("OnSubFinish7306405")
end

function Quest73064:OnSubStart7306414(arg1)
    print("OnSubStart7306414")
end

function Quest73064:OnSubFinish7306414(arg1)
    print("OnSubFinish7306414")
end

function Quest73064:OnSubStart7306403(arg1)
    print("OnSubStart7306403")
end

function Quest73064:OnSubFinish7306403(arg1)
    print("OnSubFinish7306403")
    self:NarratorOnlyTask(datas.NarratorTable10, nil, "")
end

function Quest73064:OnSubStart7306404(arg1)
    print("OnSubStart7306404")
end

function Quest73064:OnSubFinish7306404(arg1)
    print("OnSubFinish7306404")
    self:NarratorOnlyTask(datas.NarratorTable11, nil, "")
end

return Quest73064
