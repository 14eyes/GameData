require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72160 = class("Quest72160", QuestActorProxy)
Quest72160.defaultAlias = "Quest72160"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest72160:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216001"] = self.OnSubStart7216001,
        ["7216002"] = self.OnSubStart7216002,
        ["7216003"] = self.OnSubStart7216003,
        ["7216004"] = self.OnSubStart7216004,
        ["7216005"] = self.OnSubStart7216005,
        ["7216006"] = self.OnSubStart7216006,
        ["7216007"] = self.OnSubStart7216007,
        ["7216008"] = self.OnSubStart7216008,
        ["7216009"] = self.OnSubStart7216009,
        ["7216016"] = self.OnSubStart7216016,
        ["7216010"] = self.OnSubStart7216010,
        ["7216011"] = self.OnSubStart7216011,
        ["7216012"] = self.OnSubStart7216012,
        ["7216013"] = self.OnSubStart7216013,
        ["7216014"] = self.OnSubStart7216014,
        ["7216015"] = self.OnSubStart7216015
    }
end

function Quest72160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216001"] = self.OnSubFinish7216001,
        ["7216002"] = self.OnSubFinish7216002,
        ["7216003"] = self.OnSubFinish7216003,
        ["7216004"] = self.OnSubFinish7216004,
        ["7216005"] = self.OnSubFinish7216005,
        ["7216006"] = self.OnSubFinish7216006,
        ["7216007"] = self.OnSubFinish7216007,
        ["7216008"] = self.OnSubFinish7216008,
        ["7216009"] = self.OnSubFinish7216009,
        ["7216016"] = self.OnSubFinish7216016,
        ["7216010"] = self.OnSubFinish7216010,
        ["7216011"] = self.OnSubFinish7216011,
        ["7216012"] = self.OnSubFinish7216012,
        ["7216013"] = self.OnSubFinish7216013,
        ["7216014"] = self.OnSubFinish7216014,
        ["7216015"] = self.OnSubFinish7216015
    }
end

function Quest72160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216003"] = self.OnSubFailed7216003,
        ["7216006"] = self.OnSubFailed7216006,
        ["7216009"] = self.OnSubFailed7216009
    }
end

function Quest72160:Start()
    print("Start")
end

function Quest72160:OnDestroy()
    print("OnDestroy")
end

function Quest72160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72160:EnableInput()
    print("EnableInput")
    this:EnablePlayerInput(true)
end

function Quest72160:CountDownFinish()
    print("CountDownFinish")
    self:FinishQuestID(false, 7216002)
    self:FinishQuestID(false, 7216005)
    self:FinishQuestID(false, 7216008)
end

function Quest72160:OnSubStart7216001(arg1)
    print("OnSubStart7216001")
end

function Quest72160:OnSubFinish7216001(arg1)
    print("OnSubFinish7216001")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubStart7216002(arg1)
    print("OnSubStart7216002")
    this:CallDelay(4, self.EnableInput)
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self.CountDownFinish)
end

function Quest72160:OnSubFinish7216002(arg1)
    print("OnSubFinish7216002")
end

function Quest72160:OnSubStart7216003(arg1)
    print("OnSubStart7216003")
end

function Quest72160:OnSubFinish7216003(arg1)
    print("OnSubFinish7216003")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubFailed7216003(arg1)
    print("OnSubFailed7216003")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubStart7216004(arg1)
    print("OnSubStart7216004")
end

function Quest72160:OnSubFinish7216004(arg1)
    print("OnSubFinish7216004")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubStart7216005(arg1)
    print("OnSubStart7216005")
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self.CountDownFinish)
    this:CallDelay(4, self.EnableInput)
end

function Quest72160:OnSubFinish7216005(arg1)
    print("OnSubFinish7216005")
end

function Quest72160:OnSubStart7216006(arg1)
    print("OnSubStart7216006")
end

function Quest72160:OnSubFinish7216006(arg1)
    print("OnSubFinish7216006")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubFailed7216006(arg1)
    print("OnSubFailed7216006")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubStart7216007(arg1)
    print("OnSubStart7216007")
end

function Quest72160:OnSubFinish7216007(arg1)
    print("OnSubFinish7216007")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubStart7216008(arg1)
    print("OnSubStart7216008")
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self.CountDownFinish)
    this:CallDelay(4, self.EnableInput)
end

function Quest72160:OnSubFinish7216008(arg1)
    print("OnSubFinish7216008")
end

function Quest72160:OnSubStart7216009(arg1)
    print("OnSubStart7216009")
end

function Quest72160:OnSubFinish7216009(arg1)
    print("OnSubFinish7216009")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubFailed7216009(arg1)
    print("OnSubFailed7216009")
    this:ShowBlackScreen(0.3, 1, 0.3, nil, nil, nil, "")
end

function Quest72160:OnSubStart7216016(arg1)
    print("OnSubStart7216016")
end

function Quest72160:OnSubFinish7216016(arg1)
    print("OnSubFinish7216016")
end

function Quest72160:OnSubStart7216010(arg1)
    print("OnSubStart7216010")
end

function Quest72160:OnSubFinish7216010(arg1)
    print("OnSubFinish7216010")
end

function Quest72160:OnSubStart7216011(arg1)
    print("OnSubStart7216011")
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self.CountDownFinish)
end

function Quest72160:OnSubFinish7216011(arg1)
    print("OnSubFinish7216011")
end

function Quest72160:OnSubStart7216012(arg1)
    print("OnSubStart7216012")
end

function Quest72160:OnSubFinish7216012(arg1)
    print("OnSubFinish7216012")
end

function Quest72160:OnSubStart7216013(arg1)
    print("OnSubStart7216013")
end

function Quest72160:OnSubFinish7216013(arg1)
    print("OnSubFinish7216013")
end

function Quest72160:OnSubStart7216014(arg1)
    print("OnSubStart7216014")
    function Quest72160:OnSubStart7216014(arg1)
        print("OnSubStart7216014")
        self.CountDownUIStart(self, 0, 0, 3)
        self.CallDelay(self, 4, function()
            self:FinishQuestID(false, 7216014)
        end)
    end
end

function Quest72160:OnSubFinish7216014(arg1)
    print("OnSubFinish7216014")
end

function Quest72160:OnSubStart7216015(arg1)
    print("OnSubStart7216015")
end

function Quest72160:OnSubFinish7216015(arg1)
    print("OnSubFinish7216015")
end

return Quest72160
