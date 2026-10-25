require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72187 = class("Quest72187", QuestActorProxy)
Quest72187.defaultAlias = "Quest72187"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72187:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218701"] = self.OnSubStart7218701,
        ["7218702"] = self.OnSubStart7218702,
        ["7218703"] = self.OnSubStart7218703,
        ["7218704"] = self.OnSubStart7218704,
        ["7218705"] = self.OnSubStart7218705,
        ["7218706"] = self.OnSubStart7218706,
        ["7218707"] = self.OnSubStart7218707,
        ["7218708"] = self.OnSubStart7218708,
        ["7218709"] = self.OnSubStart7218709,
        ["7218710"] = self.OnSubStart7218710
    }
end

function Quest72187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218701"] = self.OnSubFinish7218701,
        ["7218702"] = self.OnSubFinish7218702,
        ["7218703"] = self.OnSubFinish7218703,
        ["7218704"] = self.OnSubFinish7218704,
        ["7218705"] = self.OnSubFinish7218705,
        ["7218706"] = self.OnSubFinish7218706,
        ["7218707"] = self.OnSubFinish7218707,
        ["7218708"] = self.OnSubFinish7218708,
        ["7218709"] = self.OnSubFinish7218709,
        ["7218710"] = self.OnSubFinish7218710
    }
end

function Quest72187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218701"] = self.OnSubFailed7218701,
        ["7218702"] = self.OnSubFailed7218702,
        ["7218703"] = self.OnSubFailed7218703,
        ["7218704"] = self.OnSubFailed7218704,
        ["7218705"] = self.OnSubFailed7218705,
        ["7218706"] = self.OnSubFailed7218706,
        ["7218707"] = self.OnSubFailed7218707,
        ["7218708"] = self.OnSubFailed7218708,
        ["7218709"] = self.OnSubFailed7218709,
        ["7218710"] = self.OnSubFailed7218710
    }
end

function Quest72187:Start()
    print("Start")
end

function Quest72187:OnDestroy()
    print("OnDestroy")
end

function Quest72187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72187:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72187:_72160_CountDownFinish()
    self:FinishQuestID(false, 7218702)
    self:FinishQuestID(false, 7218705)
    self:FinishQuestID(false, 7218708)
end

function Quest72187:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72187:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7218710)
end

function Quest72187:OnSubStart7218701(arg1)
    print("OnSubStart7218701")
end

function Quest72187:OnSubFinish7218701(arg1)
    print("OnSubFinish7218701")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubFailed7218701(arg1)
    print("OnSubFailed7218701")
end

function Quest72187:OnSubStart7218702(arg1)
    print("OnSubStart7218702")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72187:OnSubFinish7218702(arg1)
    print("OnSubFinish7218702")
end

function Quest72187:OnSubFailed7218702(arg1)
    print("OnSubFailed7218702")
end

function Quest72187:OnSubStart7218703(arg1)
    print("OnSubStart7218703")
end

function Quest72187:OnSubFinish7218703(arg1)
    print("OnSubFinish7218703")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubFailed7218703(arg1)
    print("OnSubFailed7218703")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubStart7218704(arg1)
    print("OnSubStart7218704")
end

function Quest72187:OnSubFinish7218704(arg1)
    print("OnSubFinish7218704")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubFailed7218704(arg1)
    print("OnSubFailed7218704")
end

function Quest72187:OnSubStart7218705(arg1)
    print("OnSubStart7218705")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:CountDownUIStart(0, 0, 3)
    self:EnablePlayerInput(false)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72187:OnSubFinish7218705(arg1)
    print("OnSubFinish7218705")
end

function Quest72187:OnSubFailed7218705(arg1)
    print("OnSubFailed7218705")
end

function Quest72187:OnSubStart7218706(arg1)
    print("OnSubStart7218706")
end

function Quest72187:OnSubFinish7218706(arg1)
    print("OnSubFinish7218706")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubFailed7218706(arg1)
    print("OnSubFailed7218706")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubStart7218707(arg1)
    print("OnSubStart7218707")
end

function Quest72187:OnSubFinish7218707(arg1)
    print("OnSubFinish7218707")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubFailed7218707(arg1)
    print("OnSubFailed7218707")
end

function Quest72187:OnSubStart7218708(arg1)
    print("OnSubStart7218708")
    self:CallDelay(4, self._72160_CountDownFinish)
    self:CountDownUIStart(0, 0, 3)
    self:EnablePlayerInput(false)
    self:CallDelay(4, self._72160_EnableInput)
end

function Quest72187:OnSubFinish7218708(arg1)
    print("OnSubFinish7218708")
end

function Quest72187:OnSubFailed7218708(arg1)
    print("OnSubFailed7218708")
end

function Quest72187:OnSubStart7218709(arg1)
    print("OnSubStart7218709")
end

function Quest72187:OnSubFinish7218709(arg1)
    print("OnSubFinish7218709")
end

function Quest72187:OnSubFailed7218709(arg1)
    print("OnSubFailed7218709")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72187:OnSubStart7218710(arg1)
    print("OnSubStart7218710")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72187:OnSubFinish7218710(arg1)
    print("OnSubFinish7218710")
end

function Quest72187:OnSubFailed7218710(arg1)
    print("OnSubFailed7218710")
end

return Quest72187
