require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72181 = class("Quest72181", QuestActorProxy)
Quest72181.defaultAlias = "Quest72181"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72181:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72181:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218101"] = self.OnSubStart7218101,
        ["7218102"] = self.OnSubStart7218102,
        ["7218103"] = self.OnSubStart7218103,
        ["7218104"] = self.OnSubStart7218104,
        ["7218105"] = self.OnSubStart7218105,
        ["7218106"] = self.OnSubStart7218106,
        ["7218107"] = self.OnSubStart7218107,
        ["7218108"] = self.OnSubStart7218108,
        ["7218109"] = self.OnSubStart7218109,
        ["7218110"] = self.OnSubStart7218110
    }
end

function Quest72181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218101"] = self.OnSubFinish7218101,
        ["7218102"] = self.OnSubFinish7218102,
        ["7218103"] = self.OnSubFinish7218103,
        ["7218104"] = self.OnSubFinish7218104,
        ["7218105"] = self.OnSubFinish7218105,
        ["7218106"] = self.OnSubFinish7218106,
        ["7218107"] = self.OnSubFinish7218107,
        ["7218108"] = self.OnSubFinish7218108,
        ["7218109"] = self.OnSubFinish7218109,
        ["7218110"] = self.OnSubFinish7218110
    }
end

function Quest72181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218101"] = self.OnSubFailed7218101,
        ["7218102"] = self.OnSubFailed7218102,
        ["7218103"] = self.OnSubFailed7218103,
        ["7218104"] = self.OnSubFailed7218104,
        ["7218105"] = self.OnSubFailed7218105,
        ["7218106"] = self.OnSubFailed7218106,
        ["7218107"] = self.OnSubFailed7218107,
        ["7218108"] = self.OnSubFailed7218108,
        ["7218109"] = self.OnSubFailed7218109,
        ["7218110"] = self.OnSubFailed7218110
    }
end

function Quest72181:Start()
    print("Start")
end

function Quest72181:OnDestroy()
    print("OnDestroy")
end

function Quest72181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72181:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72181:_72160_CountDownFinish()
    self:FinishQuestID(false, 7218102)
    self:FinishQuestID(false, 7218105)
    self:FinishQuestID(false, 7218108)
end

function Quest72181:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72181:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7218110)
end

function Quest72181:OnSubStart7218101(arg1)
    print("OnSubStart7218101")
end

function Quest72181:OnSubFinish7218101(arg1)
    print("OnSubFinish7218101")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubFailed7218101(arg1)
    print("OnSubFailed7218101")
end

function Quest72181:OnSubStart7218102(arg1)
    print("OnSubStart7218102")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72181:OnSubFinish7218102(arg1)
    print("OnSubFinish7218102")
end

function Quest72181:OnSubFailed7218102(arg1)
    print("OnSubFailed7218102")
end

function Quest72181:OnSubStart7218103(arg1)
    print("OnSubStart7218103")
end

function Quest72181:OnSubFinish7218103(arg1)
    print("OnSubFinish7218103")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubFailed7218103(arg1)
    print("OnSubFailed7218103")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubStart7218104(arg1)
    print("OnSubStart7218104")
end

function Quest72181:OnSubFinish7218104(arg1)
    print("OnSubFinish7218104")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubFailed7218104(arg1)
    print("OnSubFailed7218104")
end

function Quest72181:OnSubStart7218105(arg1)
    print("OnSubStart7218105")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72181:OnSubFinish7218105(arg1)
    print("OnSubFinish7218105")
end

function Quest72181:OnSubFailed7218105(arg1)
    print("OnSubFailed7218105")
end

function Quest72181:OnSubStart7218106(arg1)
    print("OnSubStart7218106")
end

function Quest72181:OnSubFinish7218106(arg1)
    print("OnSubFinish7218106")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubFailed7218106(arg1)
    print("OnSubFailed7218106")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubStart7218107(arg1)
    print("OnSubStart7218107")
end

function Quest72181:OnSubFinish7218107(arg1)
    print("OnSubFinish7218107")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubFailed7218107(arg1)
    print("OnSubFailed7218107")
end

function Quest72181:OnSubStart7218108(arg1)
    print("OnSubStart7218108")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72181:OnSubFinish7218108(arg1)
    print("OnSubFinish7218108")
end

function Quest72181:OnSubFailed7218108(arg1)
    print("OnSubFailed7218108")
end

function Quest72181:OnSubStart7218109(arg1)
    print("OnSubStart7218109")
end

function Quest72181:OnSubFinish7218109(arg1)
    print("OnSubFinish7218109")
end

function Quest72181:OnSubFailed7218109(arg1)
    print("OnSubFailed7218109")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72181:OnSubStart7218110(arg1)
    print("OnSubStart7218110")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72181:OnSubFinish7218110(arg1)
    print("OnSubFinish7218110")
end

function Quest72181:OnSubFailed7218110(arg1)
    print("OnSubFailed7218110")
end

return Quest72181
