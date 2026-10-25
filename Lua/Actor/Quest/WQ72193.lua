require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72193 = class("Quest72193", QuestActorProxy)
Quest72193.defaultAlias = "Quest72193"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72193:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72193:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219301"] = self.OnSubStart7219301,
        ["7219302"] = self.OnSubStart7219302,
        ["7219303"] = self.OnSubStart7219303,
        ["7219304"] = self.OnSubStart7219304,
        ["7219305"] = self.OnSubStart7219305,
        ["7219306"] = self.OnSubStart7219306,
        ["7219307"] = self.OnSubStart7219307,
        ["7219308"] = self.OnSubStart7219308,
        ["7219309"] = self.OnSubStart7219309,
        ["7219310"] = self.OnSubStart7219310
    }
end

function Quest72193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219301"] = self.OnSubFinish7219301,
        ["7219302"] = self.OnSubFinish7219302,
        ["7219303"] = self.OnSubFinish7219303,
        ["7219304"] = self.OnSubFinish7219304,
        ["7219305"] = self.OnSubFinish7219305,
        ["7219306"] = self.OnSubFinish7219306,
        ["7219307"] = self.OnSubFinish7219307,
        ["7219308"] = self.OnSubFinish7219308,
        ["7219309"] = self.OnSubFinish7219309,
        ["7219310"] = self.OnSubFinish7219310
    }
end

function Quest72193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219301"] = self.OnSubFailed7219301,
        ["7219302"] = self.OnSubFailed7219302,
        ["7219303"] = self.OnSubFailed7219303,
        ["7219304"] = self.OnSubFailed7219304,
        ["7219305"] = self.OnSubFailed7219305,
        ["7219306"] = self.OnSubFailed7219306,
        ["7219307"] = self.OnSubFailed7219307,
        ["7219308"] = self.OnSubFailed7219308,
        ["7219309"] = self.OnSubFailed7219309,
        ["7219310"] = self.OnSubFailed7219310
    }
end

function Quest72193:Start()
    print("Start")
end

function Quest72193:OnDestroy()
    print("OnDestroy")
end

function Quest72193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72193:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72193:_72160_CountDownFinish()
    self:FinishQuestID(false, 7219302)
    self:FinishQuestID(false, 7219305)
    self:FinishQuestID(false, 7219308)
end

function Quest72193:_72160_EnableInput()
    print("_72160_EnableInput")
    self:EnablePlayerInput(true)
end

function Quest72193:FinishLast()
    print("FinishLast")
    self:FinishQuestID(false, 7219310)
end

function Quest72193:OnSubStart7219301(arg1)
    print("OnSubStart7219301")
end

function Quest72193:OnSubFinish7219301(arg1)
    print("OnSubFinish7219301")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubFailed7219301(arg1)
    print("OnSubFailed7219301")
end

function Quest72193:OnSubStart7219302(arg1)
    print("OnSubStart7219302")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72193:OnSubFinish7219302(arg1)
    print("OnSubFinish7219302")
end

function Quest72193:OnSubFailed7219302(arg1)
    print("OnSubFailed7219302")
end

function Quest72193:OnSubStart7219303(arg1)
    print("OnSubStart7219303")
end

function Quest72193:OnSubFinish7219303(arg1)
    print("OnSubFinish7219303")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubFailed7219303(arg1)
    print("OnSubFailed7219303")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubStart7219304(arg1)
    print("OnSubStart7219304")
end

function Quest72193:OnSubFinish7219304(arg1)
    print("OnSubFinish7219304")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubFailed7219304(arg1)
    print("OnSubFailed7219304")
end

function Quest72193:OnSubStart7219305(arg1)
    print("OnSubStart7219305")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72193:OnSubFinish7219305(arg1)
    print("OnSubFinish7219305")
end

function Quest72193:OnSubFailed7219305(arg1)
    print("OnSubFailed7219305")
end

function Quest72193:OnSubStart7219306(arg1)
    print("OnSubStart7219306")
end

function Quest72193:OnSubFinish7219306(arg1)
    print("OnSubFinish7219306")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubFailed7219306(arg1)
    print("OnSubFailed7219306")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubStart7219307(arg1)
    print("OnSubStart7219307")
end

function Quest72193:OnSubFinish7219307(arg1)
    print("OnSubFinish7219307")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubFailed7219307(arg1)
    print("OnSubFailed7219307")
end

function Quest72193:OnSubStart7219308(arg1)
    print("OnSubStart7219308")
    self:CallDelay(4, self._72160_EnableInput)
    self:EnablePlayerInput(false)
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(4, self._72160_CountDownFinish)
end

function Quest72193:OnSubFinish7219308(arg1)
    print("OnSubFinish7219308")
end

function Quest72193:OnSubFailed7219308(arg1)
    print("OnSubFailed7219308")
end

function Quest72193:OnSubStart7219309(arg1)
    print("OnSubStart7219309")
end

function Quest72193:OnSubFinish7219309(arg1)
    print("OnSubFinish7219309")
end

function Quest72193:OnSubFailed7219309(arg1)
    print("OnSubFailed7219309")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72193:OnSubStart7219310(arg1)
    print("OnSubStart7219310")
    self:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1, self.FinishLast)
end

function Quest72193:OnSubFinish7219310(arg1)
    print("OnSubFinish7219310")
end

function Quest72193:OnSubFailed7219310(arg1)
    print("OnSubFailed7219310")
end

return Quest72193
