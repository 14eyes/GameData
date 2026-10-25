require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20740 = class("Quest20740", QuestActorProxy)
Quest20740.defaultAlias = "Quest20740"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20740:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20740:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2074001"] = self.OnSubStart2074001,
        ["2074002"] = self.OnSubStart2074002,
        ["2074003"] = self.OnSubStart2074003,
        ["2074004"] = self.OnSubStart2074004,
        ["2074011"] = self.OnSubStart2074011,
        ["2074005"] = self.OnSubStart2074005,
        ["2074009"] = self.OnSubStart2074009,
        ["2074010"] = self.OnSubStart2074010,
        ["2074012"] = self.OnSubStart2074012,
        ["2074006"] = self.OnSubStart2074006,
        ["2074007"] = self.OnSubStart2074007,
        ["2074008"] = self.OnSubStart2074008,
        ["2074013"] = self.OnSubStart2074013
    }
end

function Quest20740:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2074001"] = self.OnSubFinish2074001,
        ["2074002"] = self.OnSubFinish2074002,
        ["2074003"] = self.OnSubFinish2074003,
        ["2074004"] = self.OnSubFinish2074004,
        ["2074011"] = self.OnSubFinish2074011,
        ["2074005"] = self.OnSubFinish2074005,
        ["2074009"] = self.OnSubFinish2074009,
        ["2074010"] = self.OnSubFinish2074010,
        ["2074012"] = self.OnSubFinish2074012,
        ["2074006"] = self.OnSubFinish2074006,
        ["2074007"] = self.OnSubFinish2074007,
        ["2074008"] = self.OnSubFinish2074008,
        ["2074013"] = self.OnSubFinish2074013
    }
end

function Quest20740:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2074001"] = self.OnSubFailed2074001,
        ["2074002"] = self.OnSubFailed2074002,
        ["2074003"] = self.OnSubFailed2074003,
        ["2074004"] = self.OnSubFailed2074004,
        ["2074011"] = self.OnSubFailed2074011,
        ["2074005"] = self.OnSubFailed2074005,
        ["2074009"] = self.OnSubFailed2074009,
        ["2074010"] = self.OnSubFailed2074010,
        ["2074012"] = self.OnSubFailed2074012,
        ["2074006"] = self.OnSubFailed2074006,
        ["2074007"] = self.OnSubFailed2074007,
        ["2074008"] = self.OnSubFailed2074008,
        ["2074013"] = self.OnSubFailed2074013
    }
end

function Quest20740:Start()
    print("Start")
end

function Quest20740:OnDestroy()
    print("OnDestroy")
end

function Quest20740:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.NewFunction, nil, nil, "")
end

function Quest20740:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20740:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20740:NewFunction()
    print("NewFunction")
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20740:BlackScreen()
    print("BlackScreen")
    self:ShowBlackScreen(0.2, 1, 0.5, self.Disable, self.Enable, nil, "")
end

function Quest20740:Enable()
    print("Enable")
    self:EnablePlayerInput(true)
end

function Quest20740:Disable()
    print("Disable")
    self:EnablePlayerInput(false)
end

function Quest20740:OnSubStart2074001(arg1)
    print("OnSubStart2074001")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074001(arg1)
    print("OnSubFinish2074001")
    self:ShowBlackScreen(0.1, 1, 0.5, nil, nil, nil, "")
end

function Quest20740:OnSubFailed2074001(arg1)
    print("OnSubFailed2074001")
end

function Quest20740:OnSubStart2074002(arg1)
    print("OnSubStart2074002")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074002(arg1)
    print("OnSubFinish2074002")
end

function Quest20740:OnSubFailed2074002(arg1)
    print("OnSubFailed2074002")
end

function Quest20740:OnSubStart2074003(arg1)
    print("OnSubStart2074003")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074003(arg1)
    print("OnSubFinish2074003")
end

function Quest20740:OnSubFailed2074003(arg1)
    print("OnSubFailed2074003")
end

function Quest20740:OnSubStart2074004(arg1)
    print("OnSubStart2074004")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074004(arg1)
    print("OnSubFinish2074004")
end

function Quest20740:OnSubFailed2074004(arg1)
    print("OnSubFailed2074004")
end

function Quest20740:OnSubStart2074011(arg1)
    print("OnSubStart2074011")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074011(arg1)
    print("OnSubFinish2074011")
end

function Quest20740:OnSubFailed2074011(arg1)
    print("OnSubFailed2074011")
end

function Quest20740:OnSubStart2074005(arg1)
    print("OnSubStart2074005")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074005(arg1)
    print("OnSubFinish2074005")
end

function Quest20740:OnSubFailed2074005(arg1)
    print("OnSubFailed2074005")
end

function Quest20740:OnSubStart2074009(arg1)
    print("OnSubStart2074009")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074009(arg1)
    print("OnSubFinish2074009")
end

function Quest20740:OnSubFailed2074009(arg1)
    print("OnSubFailed2074009")
end

function Quest20740:OnSubStart2074010(arg1)
    print("OnSubStart2074010")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20740:OnSubFinish2074010(arg1)
    print("OnSubFinish2074010")
    self:BlackScreen()
end

function Quest20740:OnSubFailed2074010(arg1)
    print("OnSubFailed2074010")
end

function Quest20740:OnSubStart2074012(arg1)
    print("OnSubStart2074012")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
    self:RequestInteractionForceAlias(npcs.Npc1425Data.alias)
end

function Quest20740:OnSubFinish2074012(arg1)
    print("OnSubFinish2074012")
end

function Quest20740:OnSubFailed2074012(arg1)
    print("OnSubFailed2074012")
end

function Quest20740:OnSubStart2074006(arg1)
    print("OnSubStart2074006")
end

function Quest20740:OnSubFinish2074006(arg1)
    print("OnSubFinish2074006")
end

function Quest20740:OnSubFailed2074006(arg1)
    print("OnSubFailed2074006")
end

function Quest20740:OnSubStart2074007(arg1)
    print("OnSubStart2074007")
end

function Quest20740:OnSubFinish2074007(arg1)
    print("OnSubFinish2074007")
end

function Quest20740:OnSubFailed2074007(arg1)
    print("OnSubFailed2074007")
end

function Quest20740:OnSubStart2074008(arg1)
    print("OnSubStart2074008")
end

function Quest20740:OnSubFinish2074008(arg1)
    print("OnSubFinish2074008")
end

function Quest20740:OnSubFailed2074008(arg1)
    print("OnSubFailed2074008")
end

function Quest20740:OnSubStart2074013(arg1)
    print("OnSubStart2074013")
end

function Quest20740:OnSubFinish2074013(arg1)
    print("OnSubFinish2074013")
end

function Quest20740:OnSubFailed2074013(arg1)
    print("OnSubFailed2074013")
end

return Quest20740
