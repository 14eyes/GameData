require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72186 = class("Quest72186", QuestActorProxy)
Quest72186.defaultAlias = "Quest72186"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72186:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72186:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7218601"] = self.OnSubStart7218601,
        ["7218602"] = self.OnSubStart7218602,
        ["7218603"] = self.OnSubStart7218603,
        ["7218604"] = self.OnSubStart7218604,
        ["7218605"] = self.OnSubStart7218605,
        ["7218606"] = self.OnSubStart7218606,
        ["7218607"] = self.OnSubStart7218607,
        ["7218608"] = self.OnSubStart7218608,
        ["7218609"] = self.OnSubStart7218609,
        ["7218610"] = self.OnSubStart7218610
    }
end

function Quest72186:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7218601"] = self.OnSubFinish7218601,
        ["7218602"] = self.OnSubFinish7218602,
        ["7218603"] = self.OnSubFinish7218603,
        ["7218604"] = self.OnSubFinish7218604,
        ["7218605"] = self.OnSubFinish7218605,
        ["7218606"] = self.OnSubFinish7218606,
        ["7218607"] = self.OnSubFinish7218607,
        ["7218608"] = self.OnSubFinish7218608,
        ["7218609"] = self.OnSubFinish7218609,
        ["7218610"] = self.OnSubFinish7218610
    }
end

function Quest72186:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7218601"] = self.OnSubFailed7218601,
        ["7218602"] = self.OnSubFailed7218602,
        ["7218603"] = self.OnSubFailed7218603,
        ["7218604"] = self.OnSubFailed7218604,
        ["7218605"] = self.OnSubFailed7218605,
        ["7218606"] = self.OnSubFailed7218606,
        ["7218607"] = self.OnSubFailed7218607,
        ["7218608"] = self.OnSubFailed7218608,
        ["7218609"] = self.OnSubFailed7218609,
        ["7218610"] = self.OnSubFailed7218610
    }
end

function Quest72186:Start()
    print("Start")
end

function Quest72186:OnDestroy()
    print("OnDestroy")
end

function Quest72186:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72186:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72186:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72186:_72160_CountDownFinish()
    self:FinishQuestID(false, 7218602)
    self:FinishQuestID(false, 7218605)
    self:FinishQuestID(false, 7218608)
end

function Quest72186:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72186:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7218610)
end

function Quest72186:OnSubStart7218601(arg1)
    print("OnSubStart7218601")
end

function Quest72186:OnSubFinish7218601(arg1)
    print("OnSubFinish7218601")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubFailed7218601(arg1)
    print("OnSubFailed7218601")
end

function Quest72186:OnSubStart7218602(arg1)
    print("OnSubStart7218602")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72186:OnSubFinish7218602(arg1)
    print("OnSubFinish7218602")
end

function Quest72186:OnSubFailed7218602(arg1)
    print("OnSubFailed7218602")
end

function Quest72186:OnSubStart7218603(arg1)
    print("OnSubStart7218603")
end

function Quest72186:OnSubFinish7218603(arg1)
    print("OnSubFinish7218603")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubFailed7218603(arg1)
    print("OnSubFailed7218603")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubStart7218604(arg1)
    print("OnSubStart7218604")
end

function Quest72186:OnSubFinish7218604(arg1)
    print("OnSubFinish7218604")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubFailed7218604(arg1)
    print("OnSubFailed7218604")
end

function Quest72186:OnSubStart7218605(arg1)
    print("OnSubStart7218605")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72186:OnSubFinish7218605(arg1)
    print("OnSubFinish7218605")
end

function Quest72186:OnSubFailed7218605(arg1)
    print("OnSubFailed7218605")
end

function Quest72186:OnSubStart7218606(arg1)
    print("OnSubStart7218606")
end

function Quest72186:OnSubFinish7218606(arg1)
    print("OnSubFinish7218606")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubFailed7218606(arg1)
    print("OnSubFailed7218606")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubStart7218607(arg1)
    print("OnSubStart7218607")
end

function Quest72186:OnSubFinish7218607(arg1)
    print("OnSubFinish7218607")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubFailed7218607(arg1)
    print("OnSubFailed7218607")
end

function Quest72186:OnSubStart7218608(arg1)
    print("OnSubStart7218608")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72186:OnSubFinish7218608(arg1)
    print("OnSubFinish7218608")
end

function Quest72186:OnSubFailed7218608(arg1)
    print("OnSubFailed7218608")
end

function Quest72186:OnSubStart7218609(arg1)
    print("OnSubStart7218609")
end

function Quest72186:OnSubFinish7218609(arg1)
    print("OnSubFinish7218609")
end

function Quest72186:OnSubFailed7218609(arg1)
    print("OnSubFailed7218609")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72186:OnSubStart7218610(arg1)
    print("OnSubStart7218610")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72186:OnSubFinish7218610(arg1)
    print("OnSubFinish7218610")
end

function Quest72186:OnSubFailed7218610(arg1)
    print("OnSubFailed7218610")
end

return Quest72186
