require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72220 = class("Quest72220", QuestActorProxy)
Quest72220.defaultAlias = "Quest72220"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72220:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72220:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222001"] = self.OnSubStart7222001,
        ["7222002"] = self.OnSubStart7222002,
        ["7222003"] = self.OnSubStart7222003,
        ["7222004"] = self.OnSubStart7222004,
        ["7222005"] = self.OnSubStart7222005,
        ["7222006"] = self.OnSubStart7222006,
        ["7222007"] = self.OnSubStart7222007,
        ["7222008"] = self.OnSubStart7222008,
        ["7222009"] = self.OnSubStart7222009,
        ["7222010"] = self.OnSubStart7222010
    }
end

function Quest72220:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222001"] = self.OnSubFinish7222001,
        ["7222002"] = self.OnSubFinish7222002,
        ["7222003"] = self.OnSubFinish7222003,
        ["7222004"] = self.OnSubFinish7222004,
        ["7222005"] = self.OnSubFinish7222005,
        ["7222006"] = self.OnSubFinish7222006,
        ["7222007"] = self.OnSubFinish7222007,
        ["7222008"] = self.OnSubFinish7222008,
        ["7222009"] = self.OnSubFinish7222009,
        ["7222010"] = self.OnSubFinish7222010
    }
end

function Quest72220:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222001"] = self.OnSubFailed7222001,
        ["7222002"] = self.OnSubFailed7222002,
        ["7222003"] = self.OnSubFailed7222003,
        ["7222004"] = self.OnSubFailed7222004,
        ["7222005"] = self.OnSubFailed7222005,
        ["7222006"] = self.OnSubFailed7222006,
        ["7222007"] = self.OnSubFailed7222007,
        ["7222008"] = self.OnSubFailed7222008,
        ["7222009"] = self.OnSubFailed7222009,
        ["7222010"] = self.OnSubFailed7222010
    }
end

function Quest72220:Start()
    print("Start")
end

function Quest72220:OnDestroy()
    print("OnDestroy")
end

function Quest72220:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72220:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72220:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72220:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7222010)
end

function Quest72220:_72160_CountDownFinish()
    self:FinishQuestID(false, 7222002)
    self:FinishQuestID(false, 7222005)
    self:FinishQuestID(false, 7222008)
end

function Quest72220:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72220:OnSubStart7222001(arg1)
    print("OnSubStart7222001")
end

function Quest72220:OnSubFinish7222001(arg1)
    print("OnSubFinish7222001")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubFailed7222001(arg1)
    print("OnSubFailed7222001")
end

function Quest72220:OnSubStart7222002(arg1)
    print("OnSubStart7222002")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72220:OnSubFinish7222002(arg1)
    print("OnSubFinish7222002")
end

function Quest72220:OnSubFailed7222002(arg1)
    print("OnSubFailed7222002")
end

function Quest72220:OnSubStart7222003(arg1)
    print("OnSubStart7222003")
end

function Quest72220:OnSubFinish7222003(arg1)
    print("OnSubFinish7222003")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubFailed7222003(arg1)
    print("OnSubFailed7222003")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubStart7222004(arg1)
    print("OnSubStart7222004")
end

function Quest72220:OnSubFinish7222004(arg1)
    print("OnSubFinish7222004")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubFailed7222004(arg1)
    print("OnSubFailed7222004")
end

function Quest72220:OnSubStart7222005(arg1)
    print("OnSubStart7222005")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72220:OnSubFinish7222005(arg1)
    print("OnSubFinish7222005")
end

function Quest72220:OnSubFailed7222005(arg1)
    print("OnSubFailed7222005")
end

function Quest72220:OnSubStart7222006(arg1)
    print("OnSubStart7222006")
end

function Quest72220:OnSubFinish7222006(arg1)
    print("OnSubFinish7222006")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubFailed7222006(arg1)
    print("OnSubFailed7222006")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubStart7222007(arg1)
    print("OnSubStart7222007")
end

function Quest72220:OnSubFinish7222007(arg1)
    print("OnSubFinish7222007")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubFailed7222007(arg1)
    print("OnSubFailed7222007")
end

function Quest72220:OnSubStart7222008(arg1)
    print("OnSubStart7222008")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72220:OnSubFinish7222008(arg1)
    print("OnSubFinish7222008")
end

function Quest72220:OnSubFailed7222008(arg1)
    print("OnSubFailed7222008")
end

function Quest72220:OnSubStart7222009(arg1)
    print("OnSubStart7222009")
end

function Quest72220:OnSubFinish7222009(arg1)
    print("OnSubFinish7222009")
end

function Quest72220:OnSubFailed7222009(arg1)
    print("OnSubFailed7222009")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72220:OnSubStart7222010(arg1)
    print("OnSubStart7222010")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, self.FinishLast, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72220:OnSubFinish7222010(arg1)
    print("OnSubFinish7222010")
end

function Quest72220:OnSubFailed7222010(arg1)
    print("OnSubFailed7222010")
end

return Quest72220
