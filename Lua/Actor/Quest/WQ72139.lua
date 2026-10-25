require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72139 = class("Quest72139", QuestActorProxy)
Quest72139.defaultAlias = "Quest72139"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72139:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72139:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213901"] = self.OnSubStart7213901,
        ["7213902"] = self.OnSubStart7213902,
        ["7213903"] = self.OnSubStart7213903,
        ["7213904"] = self.OnSubStart7213904,
        ["7213905"] = self.OnSubStart7213905,
        ["7213906"] = self.OnSubStart7213906,
        ["7213907"] = self.OnSubStart7213907,
        ["7213909"] = self.OnSubStart7213909,
        ["7213908"] = self.OnSubStart7213908
    }
end

function Quest72139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213901"] = self.OnSubFinish7213901,
        ["7213902"] = self.OnSubFinish7213902,
        ["7213903"] = self.OnSubFinish7213903,
        ["7213904"] = self.OnSubFinish7213904,
        ["7213905"] = self.OnSubFinish7213905,
        ["7213906"] = self.OnSubFinish7213906,
        ["7213907"] = self.OnSubFinish7213907,
        ["7213909"] = self.OnSubFinish7213909,
        ["7213908"] = self.OnSubFinish7213908
    }
end

function Quest72139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213901"] = self.OnSubFailed7213901,
        ["7213902"] = self.OnSubFailed7213902,
        ["7213903"] = self.OnSubFailed7213903,
        ["7213904"] = self.OnSubFailed7213904,
        ["7213905"] = self.OnSubFailed7213905,
        ["7213906"] = self.OnSubFailed7213906,
        ["7213907"] = self.OnSubFailed7213907,
        ["7213909"] = self.OnSubFailed7213909,
        ["7213908"] = self.OnSubFailed7213908
    }
end

function Quest72139:Start()
    print("Start")
end

function Quest72139:OnDestroy()
    print("OnDestroy")
end

function Quest72139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72139:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72139:OnSubStart7213901(arg1)
    print("OnSubStart7213901")
end

function Quest72139:OnSubFinish7213901(arg1)
    print("OnSubFinish7213901")
end

function Quest72139:OnSubFailed7213901(arg1)
    print("OnSubFailed7213901")
end

function Quest72139:OnSubStart7213902(arg1)
    print("OnSubStart7213902")
end

function Quest72139:OnSubFinish7213902(arg1)
    print("OnSubFinish7213902")
end

function Quest72139:OnSubFailed7213902(arg1)
    print("OnSubFailed7213902")
end

function Quest72139:OnSubStart7213903(arg1)
    print("OnSubStart7213903")
end

function Quest72139:OnSubFinish7213903(arg1)
    print("OnSubFinish7213903")
end

function Quest72139:OnSubFailed7213903(arg1)
    print("OnSubFailed7213903")
end

function Quest72139:OnSubStart7213904(arg1)
    print("OnSubStart7213904")
end

function Quest72139:OnSubFinish7213904(arg1)
    print("OnSubFinish7213904")
end

function Quest72139:OnSubFailed7213904(arg1)
    print("OnSubFailed7213904")
end

function Quest72139:OnSubStart7213905(arg1)
    print("OnSubStart7213905")
end

function Quest72139:OnSubFinish7213905(arg1)
    print("OnSubFinish7213905")
end

function Quest72139:OnSubFailed7213905(arg1)
    print("OnSubFailed7213905")
end

function Quest72139:OnSubStart7213906(arg1)
    print("OnSubStart7213906")
end

function Quest72139:OnSubFinish7213906(arg1)
    print("OnSubFinish7213906")
end

function Quest72139:OnSubFailed7213906(arg1)
    print("OnSubFailed7213906")
end

function Quest72139:OnSubStart7213907(arg1)
    print("OnSubStart7213907")
end

function Quest72139:OnSubFinish7213907(arg1)
    print("OnSubFinish7213907")
end

function Quest72139:OnSubFailed7213907(arg1)
    print("OnSubFailed7213907")
end

function Quest72139:OnSubStart7213909(arg1)
    print("OnSubStart7213909")
end

function Quest72139:OnSubFinish7213909(arg1)
    print("OnSubFinish7213909")
end

function Quest72139:OnSubFailed7213909(arg1)
    print("OnSubFailed7213909")
end

function Quest72139:OnSubStart7213908(arg1)
    print("OnSubStart7213908")
end

function Quest72139:OnSubFinish7213908(arg1)
    print("OnSubFinish7213908")
end

function Quest72139:OnSubFailed7213908(arg1)
    print("OnSubFailed7213908")
end

return Quest72139
