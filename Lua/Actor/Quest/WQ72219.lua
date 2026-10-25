require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72219 = class("Quest72219", QuestActorProxy)
Quest72219.defaultAlias = "Quest72219"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72219:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72219:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221901"] = self.OnSubStart7221901,
        ["7221902"] = self.OnSubStart7221902,
        ["7221903"] = self.OnSubStart7221903,
        ["7221904"] = self.OnSubStart7221904,
        ["7221905"] = self.OnSubStart7221905,
        ["7221906"] = self.OnSubStart7221906,
        ["7221907"] = self.OnSubStart7221907,
        ["7221908"] = self.OnSubStart7221908,
        ["7221909"] = self.OnSubStart7221909,
        ["7221910"] = self.OnSubStart7221910
    }
end

function Quest72219:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221901"] = self.OnSubFinish7221901,
        ["7221902"] = self.OnSubFinish7221902,
        ["7221903"] = self.OnSubFinish7221903,
        ["7221904"] = self.OnSubFinish7221904,
        ["7221905"] = self.OnSubFinish7221905,
        ["7221906"] = self.OnSubFinish7221906,
        ["7221907"] = self.OnSubFinish7221907,
        ["7221908"] = self.OnSubFinish7221908,
        ["7221909"] = self.OnSubFinish7221909,
        ["7221910"] = self.OnSubFinish7221910
    }
end

function Quest72219:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221901"] = self.OnSubFailed7221901,
        ["7221902"] = self.OnSubFailed7221902,
        ["7221903"] = self.OnSubFailed7221903,
        ["7221904"] = self.OnSubFailed7221904,
        ["7221905"] = self.OnSubFailed7221905,
        ["7221906"] = self.OnSubFailed7221906,
        ["7221907"] = self.OnSubFailed7221907,
        ["7221908"] = self.OnSubFailed7221908,
        ["7221909"] = self.OnSubFailed7221909,
        ["7221910"] = self.OnSubFailed7221910
    }
end

function Quest72219:Start()
    print("Start")
end

function Quest72219:OnDestroy()
    print("OnDestroy")
end

function Quest72219:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72219:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72219:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72219:_72160_CountDownFinish()
    self:FinishQuestID(false, 7221902)
    self:FinishQuestID(false, 7221905)
    self:FinishQuestID(false, 7221908)
end

function Quest72219:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72219:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7221910)
end

function Quest72219:OnSubStart7221901(arg1)
    print("OnSubStart7221901")
end

function Quest72219:OnSubFinish7221901(arg1)
    print("OnSubFinish7221901")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubFailed7221901(arg1)
    print("OnSubFailed7221901")
end

function Quest72219:OnSubStart7221902(arg1)
    print("OnSubStart7221902")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72219:OnSubFinish7221902(arg1)
    print("OnSubFinish7221902")
end

function Quest72219:OnSubFailed7221902(arg1)
    print("OnSubFailed7221902")
end

function Quest72219:OnSubStart7221903(arg1)
    print("OnSubStart7221903")
end

function Quest72219:OnSubFinish7221903(arg1)
    print("OnSubFinish7221903")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubFailed7221903(arg1)
    print("OnSubFailed7221903")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubStart7221904(arg1)
    print("OnSubStart7221904")
end

function Quest72219:OnSubFinish7221904(arg1)
    print("OnSubFinish7221904")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubFailed7221904(arg1)
    print("OnSubFailed7221904")
end

function Quest72219:OnSubStart7221905(arg1)
    print("OnSubStart7221905")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72219:OnSubFinish7221905(arg1)
    print("OnSubFinish7221905")
end

function Quest72219:OnSubFailed7221905(arg1)
    print("OnSubFailed7221905")
end

function Quest72219:OnSubStart7221906(arg1)
    print("OnSubStart7221906")
end

function Quest72219:OnSubFinish7221906(arg1)
    print("OnSubFinish7221906")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubFailed7221906(arg1)
    print("OnSubFailed7221906")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubStart7221907(arg1)
    print("OnSubStart7221907")
end

function Quest72219:OnSubFinish7221907(arg1)
    print("OnSubFinish7221907")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubFailed7221907(arg1)
    print("OnSubFailed7221907")
end

function Quest72219:OnSubStart7221908(arg1)
    print("OnSubStart7221908")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72219:OnSubFinish7221908(arg1)
    print("OnSubFinish7221908")
end

function Quest72219:OnSubFailed7221908(arg1)
    print("OnSubFailed7221908")
end

function Quest72219:OnSubStart7221909(arg1)
    print("OnSubStart7221909")
end

function Quest72219:OnSubFinish7221909(arg1)
    print("OnSubFinish7221909")
end

function Quest72219:OnSubFailed7221909(arg1)
    print("OnSubFailed7221909")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72219:OnSubStart7221910(arg1)
    print("OnSubStart7221910")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, self.FinishLast, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72219:OnSubFinish7221910(arg1)
    print("OnSubFinish7221910")
end

function Quest72219:OnSubFailed7221910(arg1)
    print("OnSubFailed7221910")
end

return Quest72219
