require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72110 = class("Quest72110", QuestActorProxy)
Quest72110.defaultAlias = "Quest72110"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest72110:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest72110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211001"] = self.OnSubStart7211001,
        ["7211002"] = self.OnSubStart7211002,
        ["7211003"] = self.OnSubStart7211003,
        ["7211004"] = self.OnSubStart7211004,
        ["7211005"] = self.OnSubStart7211005,
        ["7211006"] = self.OnSubStart7211006,
        ["7211009"] = self.OnSubStart7211009,
        ["7211014"] = self.OnSubStart7211014,
        ["7211007"] = self.OnSubStart7211007,
        ["7211015"] = self.OnSubStart7211015,
        ["7211008"] = self.OnSubStart7211008,
        ["7211010"] = self.OnSubStart7211010,
        ["7211011"] = self.OnSubStart7211011,
        ["7211012"] = self.OnSubStart7211012,
        ["7211013"] = self.OnSubStart7211013
    }
end

function Quest72110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211001"] = self.OnSubFinish7211001,
        ["7211002"] = self.OnSubFinish7211002,
        ["7211003"] = self.OnSubFinish7211003,
        ["7211004"] = self.OnSubFinish7211004,
        ["7211005"] = self.OnSubFinish7211005,
        ["7211006"] = self.OnSubFinish7211006,
        ["7211009"] = self.OnSubFinish7211009,
        ["7211014"] = self.OnSubFinish7211014,
        ["7211007"] = self.OnSubFinish7211007,
        ["7211015"] = self.OnSubFinish7211015,
        ["7211008"] = self.OnSubFinish7211008,
        ["7211010"] = self.OnSubFinish7211010,
        ["7211011"] = self.OnSubFinish7211011,
        ["7211012"] = self.OnSubFinish7211012,
        ["7211013"] = self.OnSubFinish7211013
    }
end

function Quest72110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211001"] = self.OnSubFailed7211001,
        ["7211002"] = self.OnSubFailed7211002,
        ["7211003"] = self.OnSubFailed7211003,
        ["7211004"] = self.OnSubFailed7211004,
        ["7211005"] = self.OnSubFailed7211005,
        ["7211006"] = self.OnSubFailed7211006,
        ["7211009"] = self.OnSubFailed7211009,
        ["7211014"] = self.OnSubFailed7211014,
        ["7211007"] = self.OnSubFailed7211007,
        ["7211015"] = self.OnSubFailed7211015,
        ["7211008"] = self.OnSubFailed7211008,
        ["7211010"] = self.OnSubFailed7211010,
        ["7211011"] = self.OnSubFailed7211011,
        ["7211012"] = self.OnSubFailed7211012,
        ["7211013"] = self.OnSubFailed7211013
    }
end

function Quest72110:Start()
    print("Start")
end

function Quest72110:OnDestroy()
    print("OnDestroy")
end

function Quest72110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72110:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
    elseif arg1 == 2 then
    end
end

function Quest72110:OnSubStart7211001(arg1)
    print("OnSubStart7211001")
    self:CreateQuestNpc(arg1, npcs.Npc20297Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    actorUtils.FinishQuestID(false, 7211001)
end

function Quest72110:OnSubFinish7211001(arg1)
    print("OnSubFinish7211001")
end

function Quest72110:OnSubFailed7211001(arg1)
    print("OnSubFailed7211001")
end

function Quest72110:OnSubStart7211002(arg1)
    print("OnSubStart7211002")
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211002(arg1)
    print("OnSubFinish7211002")
end

function Quest72110:OnSubFailed7211002(arg1)
    print("OnSubFailed7211002")
end

function Quest72110:OnSubStart7211003(arg1)
    print("OnSubStart7211003")
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211003(arg1)
    print("OnSubFinish7211003")
end

function Quest72110:OnSubFailed7211003(arg1)
    print("OnSubFailed7211003")
end

function Quest72110:OnSubStart7211004(arg1)
    print("OnSubStart7211004")
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211004(arg1)
    print("OnSubFinish7211004")
end

function Quest72110:OnSubFailed7211004(arg1)
    print("OnSubFailed7211004")
end

function Quest72110:OnSubStart7211005(arg1)
    print("OnSubStart7211005")
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211005(arg1)
    print("OnSubFinish7211005")
end

function Quest72110:OnSubFailed7211005(arg1)
    print("OnSubFailed7211005")
end

function Quest72110:OnSubStart7211006(arg1)
    print("OnSubStart7211006")
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211006(arg1)
    print("OnSubFinish7211006")
end

function Quest72110:OnSubFailed7211006(arg1)
    print("OnSubFailed7211006")
end

function Quest72110:OnSubStart7211009(arg1)
    print("OnSubStart7211009")
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211009(arg1)
    print("OnSubFinish7211009")
end

function Quest72110:OnSubFailed7211009(arg1)
    print("OnSubFailed7211009")
end

function Quest72110:OnSubStart7211014(arg1)
    print("OnSubStart7211014")
    self:CreateQuestNpc(arg1, npcs.Npc20297Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20297Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest72110:OnSubFinish7211014(arg1)
    print("OnSubFinish7211014")
    self:SafeDestroyQuestNpc(npcs.Npc20297Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
    self:TransmitPlayerById(arg1, 1)
end

function Quest72110:OnSubFailed7211014(arg1)
    print("OnSubFailed7211014")
end

function Quest72110:OnSubStart7211007(arg1)
    print("OnSubStart7211007")
    self:DestroyQuestNpcActor(npcs.Npc20297Data.alias, 3)
end

function Quest72110:OnSubFinish7211007(arg1)
    print("OnSubFinish7211007")
end

function Quest72110:OnSubFailed7211007(arg1)
    print("OnSubFailed7211007")
end

function Quest72110:OnSubStart7211015(arg1)
    print("OnSubStart7211015")
    self:CreateQuestNpc(arg1, npcs.Npc20298Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20299Data.id, 2)
end

function Quest72110:OnSubFinish7211015(arg1)
    print("OnSubFinish7211015")
end

function Quest72110:OnSubFailed7211015(arg1)
    print("OnSubFailed7211015")
end

function Quest72110:OnSubStart7211008(arg1)
    print("OnSubStart7211008")
    self:SafeDestroyQuestNpc(npcs.Npc20298Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20299Data.alias, 3)
    self:ShowBlackScreen(1, 2, 1, nil, nil, nil, "")
end

function Quest72110:OnSubFinish7211008(arg1)
    print("OnSubFinish7211008")
    self:SafeDestroyQuestNpc(npcs.Npc20298Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20299Data.alias, 3)
end

function Quest72110:OnSubFailed7211008(arg1)
    print("OnSubFailed7211008")
end

function Quest72110:OnSubStart7211010(arg1)
    print("OnSubStart7211010")
end

function Quest72110:OnSubFinish7211010(arg1)
    print("OnSubFinish7211010")
end

function Quest72110:OnSubFailed7211010(arg1)
    print("OnSubFailed7211010")
end

function Quest72110:OnSubStart7211011(arg1)
    print("OnSubStart7211011")
end

function Quest72110:OnSubFinish7211011(arg1)
    print("OnSubFinish7211011")
end

function Quest72110:OnSubFailed7211011(arg1)
    print("OnSubFailed7211011")
end

function Quest72110:OnSubStart7211012(arg1)
    print("OnSubStart7211012")
end

function Quest72110:OnSubFinish7211012(arg1)
    print("OnSubFinish7211012")
end

function Quest72110:OnSubFailed7211012(arg1)
    print("OnSubFailed7211012")
end

function Quest72110:OnSubStart7211013(arg1)
    print("OnSubStart7211013")
end

function Quest72110:OnSubFinish7211013(arg1)
    print("OnSubFinish7211013")
end

function Quest72110:OnSubFailed7211013(arg1)
    print("OnSubFailed7211013")
end

return Quest72110
