require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70810 = class("Quest70810", QuestActorProxy)
Quest70810.defaultAlias = "Quest70810"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest70810:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest70810:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7081001"] = self.OnSubStart7081001,
        ["7081002"] = self.OnSubStart7081002,
        ["7081003"] = self.OnSubStart7081003,
        ["7081004"] = self.OnSubStart7081004,
        ["7081005"] = self.OnSubStart7081005,
        ["7081006"] = self.OnSubStart7081006,
        ["7081007"] = self.OnSubStart7081007,
        ["7081008"] = self.OnSubStart7081008,
        ["7081009"] = self.OnSubStart7081009,
        ["7081010"] = self.OnSubStart7081010,
        ["7081011"] = self.OnSubStart7081011,
        ["7081012"] = self.OnSubStart7081012,
        ["7081013"] = self.OnSubStart7081013,
        ["7081014"] = self.OnSubStart7081014,
        ["7081015"] = self.OnSubStart7081015,
        ["7081016"] = self.OnSubStart7081016,
        ["7081017"] = self.OnSubStart7081017,
        ["7081018"] = self.OnSubStart7081018,
        ["7081019"] = self.OnSubStart7081019,
        ["7081020"] = self.OnSubStart7081020
    }
end

function Quest70810:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7081001"] = self.OnSubFinish7081001,
        ["7081002"] = self.OnSubFinish7081002,
        ["7081003"] = self.OnSubFinish7081003,
        ["7081004"] = self.OnSubFinish7081004,
        ["7081005"] = self.OnSubFinish7081005,
        ["7081006"] = self.OnSubFinish7081006,
        ["7081007"] = self.OnSubFinish7081007,
        ["7081008"] = self.OnSubFinish7081008,
        ["7081009"] = self.OnSubFinish7081009,
        ["7081010"] = self.OnSubFinish7081010,
        ["7081011"] = self.OnSubFinish7081011,
        ["7081012"] = self.OnSubFinish7081012,
        ["7081013"] = self.OnSubFinish7081013,
        ["7081014"] = self.OnSubFinish7081014,
        ["7081015"] = self.OnSubFinish7081015,
        ["7081016"] = self.OnSubFinish7081016,
        ["7081017"] = self.OnSubFinish7081017,
        ["7081018"] = self.OnSubFinish7081018,
        ["7081019"] = self.OnSubFinish7081019,
        ["7081020"] = self.OnSubFinish7081020
    }
end

function Quest70810:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7081008"] = self.OnSubFailed7081008,
        ["7081009"] = self.OnSubFailed7081009,
        ["7081017"] = self.OnSubFailed7081017,
        ["7081018"] = self.OnSubFailed7081018,
        ["7081019"] = self.OnSubFailed7081019,
        ["7081020"] = self.OnSubFailed7081020
    }
end

function Quest70810:Start()
    print("Start")
end

function Quest70810:OnDestroy()
    print("OnDestroy")
end

function Quest70810:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo(npcs.Npc1517Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1419Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1465Data.alias, 0, true)
end

function Quest70810:OnMainFailed(arg1)
    print("OnMainFailed")
    this:ClearAll()
end

function Quest70810:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearAll()
end

function Quest70810:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest70810:ClearAll()
    self:NotifyTo(npcs.Npc1517Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1419Data.alias, 0, true)
    self:NotifyTo(npcs.Npc1465Data.alias, 0, true)
end

function Quest70810:BlackMessage()
    self:ShowBlackScreen(0.1, 3, 0.5, nil, nil, nil, "QUEST_Message_Q70815")
end

function Quest70810:DisableInput()
    self:EnablePlayerInput(false)
end

function Quest70810:EnableInput()
    self:EnablePlayerInput(true)
end

function Quest70810:ClearFlora()
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest70810:ClearCharles()
    self:NotifyTo(npcs.Npc1465Data.alias, 0, true)
end

function Quest70810:OnSubStart7081001(arg1)
    print("OnSubStart7081001")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081001(arg1)
    print("OnSubFinish7081001")
    self:NarratorOnlyTaskLegacy(datas.NarratorTable, nil, "")
end

function Quest70810:OnSubStart7081002(arg1)
    print("OnSubStart7081002")
    self:NotifyTo(npcs.Npc1419Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081002(arg1)
    print("OnSubFinish7081002")
end

function Quest70810:OnSubStart7081003(arg1)
    print("OnSubStart7081003")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1419Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081003(arg1)
    print("OnSubFinish7081003")
end

function Quest70810:OnSubStart7081004(arg1)
    print("OnSubStart7081004")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1419Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081004(arg1)
    print("OnSubFinish7081004")
end

function Quest70810:OnSubStart7081005(arg1)
    print("OnSubStart7081005")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1419Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081005(arg1)
    print("OnSubFinish7081005")
    self:NotifyTo(npcs.Npc1419Data.alias, 0, true)
end

function Quest70810:OnSubStart7081006(arg1)
    print("OnSubStart7081006")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1419Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081006(arg1)
    print("OnSubFinish7081006")
    self:NotifyTo(npcs.Npc1419Data.alias, 0, true)
end

function Quest70810:OnSubStart7081007(arg1)
    print("OnSubStart7081007")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081007(arg1)
    print("OnSubFinish7081007")
end

function Quest70810:OnSubStart7081008(arg1)
    print("OnSubStart7081008")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081008(arg1)
    print("OnSubFinish7081008")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearFlora, nil, nil, "")
end

function Quest70810:OnSubFailed7081008(arg1)
    print("OnSubFailed7081008")
    this:RecycleAllRes()
end

function Quest70810:OnSubStart7081009(arg1)
    print("OnSubStart7081009")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081009(arg1)
    print("OnSubFinish7081009")
end

function Quest70810:OnSubFailed7081009(arg1)
    print("OnSubFailed7081009")
    this:RecycleAllRes()
end

function Quest70810:OnSubStart7081010(arg1)
    print("OnSubStart7081010")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081010(arg1)
    print("OnSubFinish7081010")
end

function Quest70810:OnSubStart7081011(arg1)
    print("OnSubStart7081011")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081011(arg1)
    print("OnSubFinish7081011")
    self:ShowBlackScreen(0.2, 1, 0.5, self.ClearFlora, nil, nil, "")
end

function Quest70810:OnSubStart7081012(arg1)
    print("OnSubStart7081012")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1465Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081012(arg1)
    print("OnSubFinish7081012")
end

function Quest70810:OnSubStart7081013(arg1)
    print("OnSubStart7081013")
    self:NotifyTo(npcs.Npc1465Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081013(arg1)
    print("OnSubFinish7081013")
end

function Quest70810:OnSubStart7081014(arg1)
    print("OnSubStart7081014")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1465Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081014(arg1)
    print("OnSubFinish7081014")
end

function Quest70810:OnSubStart7081015(arg1)
    print("OnSubStart7081015")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1465Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081015(arg1)
    print("OnSubFinish7081015")
    this:BlackMessage()
end

function Quest70810:OnSubStart7081016(arg1)
    print("OnSubStart7081016")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
    self:NotifyTo(npcs.Npc1465Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081016(arg1)
    print("OnSubFinish7081016")
end

function Quest70810:OnSubStart7081017(arg1)
    print("OnSubStart7081017")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081017(arg1)
    print("OnSubFinish7081017")
end

function Quest70810:OnSubFailed7081017(arg1)
    print("OnSubFailed7081017")
    this:RecycleAllRes()
end

function Quest70810:OnSubStart7081018(arg1)
    print("OnSubStart7081018")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081018(arg1)
    print("OnSubFinish7081018")
end

function Quest70810:OnSubFailed7081018(arg1)
    print("OnSubFailed7081018")
    this:RecycleAllRes()
end

function Quest70810:OnSubStart7081019(arg1)
    print("OnSubStart7081019")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081019(arg1)
    print("OnSubFinish7081019")
end

function Quest70810:OnSubFailed7081019(arg1)
    print("OnSubFailed7081019")
    this:RecycleAllRes()
end

function Quest70810:OnSubStart7081020(arg1)
    print("OnSubStart7081020")
    self:NotifyTo(npcs.Npc1517Data.alias, 2, true)
end

function Quest70810:OnSubFinish7081020(arg1)
    print("OnSubFinish7081020")
end

function Quest70810:OnSubFailed7081020(arg1)
    print("OnSubFailed7081020")
    this:RecycleAllRes()
end

return Quest70810
