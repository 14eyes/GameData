require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72140 = class("Quest72140", QuestActorProxy)
Quest72140.defaultAlias = "Quest72140"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72140:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72140:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214001"] = self.OnSubStart7214001,
        ["7214002"] = self.OnSubStart7214002,
        ["7214016"] = self.OnSubStart7214016,
        ["7214003"] = self.OnSubStart7214003,
        ["7214004"] = self.OnSubStart7214004,
        ["7214027"] = self.OnSubStart7214027,
        ["7214005"] = self.OnSubStart7214005,
        ["7214006"] = self.OnSubStart7214006,
        ["7214017"] = self.OnSubStart7214017,
        ["7214007"] = self.OnSubStart7214007,
        ["7214008"] = self.OnSubStart7214008,
        ["7214018"] = self.OnSubStart7214018,
        ["7214009"] = self.OnSubStart7214009,
        ["7214019"] = self.OnSubStart7214019,
        ["7214023"] = self.OnSubStart7214023,
        ["7214024"] = self.OnSubStart7214024,
        ["7214010"] = self.OnSubStart7214010,
        ["7214020"] = self.OnSubStart7214020,
        ["7214011"] = self.OnSubStart7214011,
        ["7214022"] = self.OnSubStart7214022,
        ["7214012"] = self.OnSubStart7214012,
        ["7214021"] = self.OnSubStart7214021,
        ["7214013"] = self.OnSubStart7214013,
        ["7214014"] = self.OnSubStart7214014,
        ["7214015"] = self.OnSubStart7214015,
        ["7214026"] = self.OnSubStart7214026,
        ["7214025"] = self.OnSubStart7214025
    }
end

function Quest72140:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214001"] = self.OnSubFinish7214001,
        ["7214002"] = self.OnSubFinish7214002,
        ["7214016"] = self.OnSubFinish7214016,
        ["7214003"] = self.OnSubFinish7214003,
        ["7214004"] = self.OnSubFinish7214004,
        ["7214027"] = self.OnSubFinish7214027,
        ["7214005"] = self.OnSubFinish7214005,
        ["7214006"] = self.OnSubFinish7214006,
        ["7214017"] = self.OnSubFinish7214017,
        ["7214007"] = self.OnSubFinish7214007,
        ["7214008"] = self.OnSubFinish7214008,
        ["7214018"] = self.OnSubFinish7214018,
        ["7214009"] = self.OnSubFinish7214009,
        ["7214019"] = self.OnSubFinish7214019,
        ["7214023"] = self.OnSubFinish7214023,
        ["7214024"] = self.OnSubFinish7214024,
        ["7214010"] = self.OnSubFinish7214010,
        ["7214020"] = self.OnSubFinish7214020,
        ["7214011"] = self.OnSubFinish7214011,
        ["7214022"] = self.OnSubFinish7214022,
        ["7214012"] = self.OnSubFinish7214012,
        ["7214021"] = self.OnSubFinish7214021,
        ["7214013"] = self.OnSubFinish7214013,
        ["7214014"] = self.OnSubFinish7214014,
        ["7214015"] = self.OnSubFinish7214015,
        ["7214026"] = self.OnSubFinish7214026,
        ["7214025"] = self.OnSubFinish7214025
    }
end

function Quest72140:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214001"] = self.OnSubFailed7214001,
        ["7214002"] = self.OnSubFailed7214002,
        ["7214016"] = self.OnSubFailed7214016,
        ["7214003"] = self.OnSubFailed7214003,
        ["7214004"] = self.OnSubFailed7214004,
        ["7214027"] = self.OnSubFailed7214027,
        ["7214005"] = self.OnSubFailed7214005,
        ["7214006"] = self.OnSubFailed7214006,
        ["7214017"] = self.OnSubFailed7214017,
        ["7214007"] = self.OnSubFailed7214007,
        ["7214008"] = self.OnSubFailed7214008,
        ["7214018"] = self.OnSubFailed7214018,
        ["7214009"] = self.OnSubFailed7214009,
        ["7214019"] = self.OnSubFailed7214019,
        ["7214023"] = self.OnSubFailed7214023,
        ["7214024"] = self.OnSubFailed7214024,
        ["7214010"] = self.OnSubFailed7214010,
        ["7214020"] = self.OnSubFailed7214020,
        ["7214011"] = self.OnSubFailed7214011,
        ["7214022"] = self.OnSubFailed7214022,
        ["7214012"] = self.OnSubFailed7214012,
        ["7214021"] = self.OnSubFailed7214021,
        ["7214013"] = self.OnSubFailed7214013,
        ["7214014"] = self.OnSubFailed7214014,
        ["7214015"] = self.OnSubFailed7214015,
        ["7214026"] = self.OnSubFailed7214026,
        ["7214025"] = self.OnSubFailed7214025
    }
end

function Quest72140:Start()
    print("Start")
end

function Quest72140:OnDestroy()
    print("OnDestroy")
end

function Quest72140:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72140:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72140:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72140:CreateNpc7214007()
    print("CreateNpc7214007")
    self:CreateQuestNpcById(7214007, npcs.Npc20240Data.id, 1)
end

function Quest72140:DestoryNpc()
    print("DestoryNpc")
    self:SafeDestroyQuestNpc(npcs.Npc20240Data.alias, 3)
end

function Quest72140:OnSubStart7214001(arg1)
    print("OnSubStart7214001")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214001(arg1)
    print("OnSubFinish7214001")
end

function Quest72140:OnSubFailed7214001(arg1)
    print("OnSubFailed7214001")
end

function Quest72140:OnSubStart7214002(arg1)
    print("OnSubStart7214002")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214002(arg1)
    print("OnSubFinish7214002")
end

function Quest72140:OnSubFailed7214002(arg1)
    print("OnSubFailed7214002")
end

function Quest72140:OnSubStart7214016(arg1)
    print("OnSubStart7214016")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214016(arg1)
    print("OnSubFinish7214016")
end

function Quest72140:OnSubFailed7214016(arg1)
    print("OnSubFailed7214016")
end

function Quest72140:OnSubStart7214003(arg1)
    print("OnSubStart7214003")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214003(arg1)
    print("OnSubFinish7214003")
end

function Quest72140:OnSubFailed7214003(arg1)
    print("OnSubFailed7214003")
end

function Quest72140:OnSubStart7214004(arg1)
    print("OnSubStart7214004")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214004(arg1)
    print("OnSubFinish7214004")
end

function Quest72140:OnSubFailed7214004(arg1)
    print("OnSubFailed7214004")
end

function Quest72140:OnSubStart7214027(arg1)
    print("OnSubStart7214027")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214027(arg1)
    print("OnSubFinish7214027")
end

function Quest72140:OnSubFailed7214027(arg1)
    print("OnSubFailed7214027")
end

function Quest72140:OnSubStart7214005(arg1)
    print("OnSubStart7214005")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214005(arg1)
    print("OnSubFinish7214005")
end

function Quest72140:OnSubFailed7214005(arg1)
    print("OnSubFailed7214005")
end

function Quest72140:OnSubStart7214006(arg1)
    print("OnSubStart7214006")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214006(arg1)
    print("OnSubFinish7214006")
end

function Quest72140:OnSubFailed7214006(arg1)
    print("OnSubFailed7214006")
end

function Quest72140:OnSubStart7214017(arg1)
    print("OnSubStart7214017")
end

function Quest72140:OnSubFinish7214017(arg1)
    print("OnSubFinish7214017")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "")
end

function Quest72140:OnSubFailed7214017(arg1)
    print("OnSubFailed7214017")
end

function Quest72140:OnSubStart7214007(arg1)
    print("OnSubStart7214007")
    self:CallDelay(1, self.CreateNpc7214007)
end

function Quest72140:OnSubFinish7214007(arg1)
    print("OnSubFinish7214007")
end

function Quest72140:OnSubFailed7214007(arg1)
    print("OnSubFailed7214007")
end

function Quest72140:OnSubStart7214008(arg1)
    print("OnSubStart7214008")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214008(arg1)
    print("OnSubFinish7214008")
end

function Quest72140:OnSubFailed7214008(arg1)
    print("OnSubFailed7214008")
end

function Quest72140:OnSubStart7214018(arg1)
    print("OnSubStart7214018")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214018(arg1)
    print("OnSubFinish7214018")
end

function Quest72140:OnSubFailed7214018(arg1)
    print("OnSubFailed7214018")
end

function Quest72140:OnSubStart7214009(arg1)
    print("OnSubStart7214009")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214009(arg1)
    print("OnSubFinish7214009")
end

function Quest72140:OnSubFailed7214009(arg1)
    print("OnSubFailed7214009")
end

function Quest72140:OnSubStart7214019(arg1)
    print("OnSubStart7214019")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214019(arg1)
    print("OnSubFinish7214019")
end

function Quest72140:OnSubFailed7214019(arg1)
    print("OnSubFailed7214019")
end

function Quest72140:OnSubStart7214023(arg1)
    print("OnSubStart7214023")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214023(arg1)
    print("OnSubFinish7214023")
end

function Quest72140:OnSubFailed7214023(arg1)
    print("OnSubFailed7214023")
end

function Quest72140:OnSubStart7214024(arg1)
    print("OnSubStart7214024")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214024(arg1)
    print("OnSubFinish7214024")
end

function Quest72140:OnSubFailed7214024(arg1)
    print("OnSubFailed7214024")
end

function Quest72140:OnSubStart7214010(arg1)
    print("OnSubStart7214010")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214010(arg1)
    print("OnSubFinish7214010")
end

function Quest72140:OnSubFailed7214010(arg1)
    print("OnSubFailed7214010")
end

function Quest72140:OnSubStart7214020(arg1)
    print("OnSubStart7214020")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214020(arg1)
    print("OnSubFinish7214020")
end

function Quest72140:OnSubFailed7214020(arg1)
    print("OnSubFailed7214020")
end

function Quest72140:OnSubStart7214011(arg1)
    print("OnSubStart7214011")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214011(arg1)
    print("OnSubFinish7214011")
    self:ShowBlackScreen(0.5, 2, 0.5, self.DestoryNpc, nil, nil, "", false, true)
end

function Quest72140:OnSubFailed7214011(arg1)
    print("OnSubFailed7214011")
end

function Quest72140:OnSubStart7214022(arg1)
    print("OnSubStart7214022")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214022(arg1)
    print("OnSubFinish7214022")
end

function Quest72140:OnSubFailed7214022(arg1)
    print("OnSubFailed7214022")
end

function Quest72140:OnSubStart7214012(arg1)
    print("OnSubStart7214012")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214012(arg1)
    print("OnSubFinish7214012")
end

function Quest72140:OnSubFailed7214012(arg1)
    print("OnSubFailed7214012")
end

function Quest72140:OnSubStart7214021(arg1)
    print("OnSubStart7214021")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214021(arg1)
    print("OnSubFinish7214021")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "")
end

function Quest72140:OnSubFailed7214021(arg1)
    print("OnSubFailed7214021")
end

function Quest72140:OnSubStart7214013(arg1)
    print("OnSubStart7214013")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214013(arg1)
    print("OnSubFinish7214013")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "")
end

function Quest72140:OnSubFailed7214013(arg1)
    print("OnSubFailed7214013")
end

function Quest72140:OnSubStart7214014(arg1)
    print("OnSubStart7214014")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214014(arg1)
    print("OnSubFinish7214014")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "")
end

function Quest72140:OnSubFailed7214014(arg1)
    print("OnSubFailed7214014")
end

function Quest72140:OnSubStart7214015(arg1)
    print("OnSubStart7214015")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214015(arg1)
    print("OnSubFinish7214015")
    self:SafeDestroyQuestNpc(npcs.Npc20240Data.alias, 3)
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "")
end

function Quest72140:OnSubFailed7214015(arg1)
    print("OnSubFailed7214015")
end

function Quest72140:OnSubStart7214026(arg1)
    print("OnSubStart7214026")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214026(arg1)
    print("OnSubFinish7214026")
end

function Quest72140:OnSubFailed7214026(arg1)
    print("OnSubFailed7214026")
end

function Quest72140:OnSubStart7214025(arg1)
    print("OnSubStart7214025")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72140:OnSubFinish7214025(arg1)
    print("OnSubFinish7214025")
end

function Quest72140:OnSubFailed7214025(arg1)
    print("OnSubFailed7214025")
end

return Quest72140
