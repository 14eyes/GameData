require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71009 = class("Quest71009", QuestActorProxy)
Quest71009.defaultAlias = "Quest71009"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7100901"] = self.OnSubStart7100901,
        ["7100902"] = self.OnSubStart7100902,
        ["7100903"] = self.OnSubStart7100903,
        ["7100904"] = self.OnSubStart7100904,
        ["7100905"] = self.OnSubStart7100905,
        ["7100906"] = self.OnSubStart7100906,
        ["7100907"] = self.OnSubStart7100907,
        ["7100908"] = self.OnSubStart7100908,
        ["7100909"] = self.OnSubStart7100909,
        ["7100910"] = self.OnSubStart7100910,
        ["7100911"] = self.OnSubStart7100911,
        ["7100912"] = self.OnSubStart7100912
    }
end

function Quest71009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7100901"] = self.OnSubFinish7100901,
        ["7100902"] = self.OnSubFinish7100902,
        ["7100903"] = self.OnSubFinish7100903,
        ["7100904"] = self.OnSubFinish7100904,
        ["7100905"] = self.OnSubFinish7100905,
        ["7100906"] = self.OnSubFinish7100906,
        ["7100907"] = self.OnSubFinish7100907,
        ["7100908"] = self.OnSubFinish7100908,
        ["7100909"] = self.OnSubFinish7100909,
        ["7100910"] = self.OnSubFinish7100910,
        ["7100911"] = self.OnSubFinish7100911,
        ["7100912"] = self.OnSubFinish7100912
    }
end

function Quest71009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7100901"] = self.OnSubFailed7100901,
        ["7100902"] = self.OnSubFailed7100902,
        ["7100903"] = self.OnSubFailed7100903,
        ["7100904"] = self.OnSubFailed7100904,
        ["7100905"] = self.OnSubFailed7100905,
        ["7100906"] = self.OnSubFailed7100906,
        ["7100907"] = self.OnSubFailed7100907,
        ["7100908"] = self.OnSubFailed7100908,
        ["7100909"] = self.OnSubFailed7100909,
        ["7100910"] = self.OnSubFailed7100910,
        ["7100911"] = self.OnSubFailed7100911,
        ["7100912"] = self.OnSubFailed7100912
    }
end

function Quest71009:Start()
    print("Start")
end

function Quest71009:OnDestroy()
    print("OnDestroy")
end

function Quest71009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71009:OnSubStart7100901(arg1)
    print("OnSubStart7100901")
end

function Quest71009:OnSubFinish7100901(arg1)
    print("OnSubFinish7100901")
end

function Quest71009:OnSubFailed7100901(arg1)
    print("OnSubFailed7100901")
end

function Quest71009:OnSubStart7100902(arg1)
    print("OnSubStart7100902")
end

function Quest71009:OnSubFinish7100902(arg1)
    print("OnSubFinish7100902")
end

function Quest71009:OnSubFailed7100902(arg1)
    print("OnSubFailed7100902")
end

function Quest71009:OnSubStart7100903(arg1)
    print("OnSubStart7100903")
end

function Quest71009:OnSubFinish7100903(arg1)
    print("OnSubFinish7100903")
end

function Quest71009:OnSubFailed7100903(arg1)
    print("OnSubFailed7100903")
end

function Quest71009:OnSubStart7100904(arg1)
    print("OnSubStart7100904")
end

function Quest71009:OnSubFinish7100904(arg1)
    print("OnSubFinish7100904")
end

function Quest71009:OnSubFailed7100904(arg1)
    print("OnSubFailed7100904")
end

function Quest71009:OnSubStart7100905(arg1)
    print("OnSubStart7100905")
end

function Quest71009:OnSubFinish7100905(arg1)
    print("OnSubFinish7100905")
end

function Quest71009:OnSubFailed7100905(arg1)
    print("OnSubFailed7100905")
end

function Quest71009:OnSubStart7100906(arg1)
    print("OnSubStart7100906")
end

function Quest71009:OnSubFinish7100906(arg1)
    print("OnSubFinish7100906")
end

function Quest71009:OnSubFailed7100906(arg1)
    print("OnSubFailed7100906")
end

function Quest71009:OnSubStart7100907(arg1)
    print("OnSubStart7100907")
end

function Quest71009:OnSubFinish7100907(arg1)
    print("OnSubFinish7100907")
end

function Quest71009:OnSubFailed7100907(arg1)
    print("OnSubFailed7100907")
end

function Quest71009:OnSubStart7100908(arg1)
    print("OnSubStart7100908")
end

function Quest71009:OnSubFinish7100908(arg1)
    print("OnSubFinish7100908")
end

function Quest71009:OnSubFailed7100908(arg1)
    print("OnSubFailed7100908")
end

function Quest71009:OnSubStart7100909(arg1)
    print("OnSubStart7100909")
end

function Quest71009:OnSubFinish7100909(arg1)
    print("OnSubFinish7100909")
end

function Quest71009:OnSubFailed7100909(arg1)
    print("OnSubFailed7100909")
end

function Quest71009:OnSubStart7100910(arg1)
    print("OnSubStart7100910")
end

function Quest71009:OnSubFinish7100910(arg1)
    print("OnSubFinish7100910")
end

function Quest71009:OnSubFailed7100910(arg1)
    print("OnSubFailed7100910")
end

function Quest71009:OnSubStart7100911(arg1)
    print("OnSubStart7100911")
end

function Quest71009:OnSubFinish7100911(arg1)
    print("OnSubFinish7100911")
end

function Quest71009:OnSubFailed7100911(arg1)
    print("OnSubFailed7100911")
end

function Quest71009:OnSubStart7100912(arg1)
    print("OnSubStart7100912")
end

function Quest71009:OnSubFinish7100912(arg1)
    print("OnSubFinish7100912")
end

function Quest71009:OnSubFailed7100912(arg1)
    print("OnSubFailed7100912")
end

return Quest71009
