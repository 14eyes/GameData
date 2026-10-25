require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70800 = class("Quest70800", QuestActorProxy)
Quest70800.defaultAlias = "Quest70800"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70800:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70800:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7080001"] = self.OnSubStart7080001,
        ["7080002"] = self.OnSubStart7080002,
        ["7080003"] = self.OnSubStart7080003,
        ["7080004"] = self.OnSubStart7080004,
        ["7080005"] = self.OnSubStart7080005,
        ["7080006"] = self.OnSubStart7080006,
        ["7080007"] = self.OnSubStart7080007,
        ["7080008"] = self.OnSubStart7080008,
        ["7080009"] = self.OnSubStart7080009,
        ["7080010"] = self.OnSubStart7080010,
        ["7080011"] = self.OnSubStart7080011,
        ["7080012"] = self.OnSubStart7080012,
        ["7080013"] = self.OnSubStart7080013,
        ["7080014"] = self.OnSubStart7080014,
        ["7080015"] = self.OnSubStart7080015,
        ["7080016"] = self.OnSubStart7080016,
        ["7080017"] = self.OnSubStart7080017
    }
end

function Quest70800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7080001"] = self.OnSubFinish7080001,
        ["7080002"] = self.OnSubFinish7080002,
        ["7080003"] = self.OnSubFinish7080003,
        ["7080004"] = self.OnSubFinish7080004,
        ["7080005"] = self.OnSubFinish7080005,
        ["7080006"] = self.OnSubFinish7080006,
        ["7080007"] = self.OnSubFinish7080007,
        ["7080008"] = self.OnSubFinish7080008,
        ["7080009"] = self.OnSubFinish7080009,
        ["7080010"] = self.OnSubFinish7080010,
        ["7080011"] = self.OnSubFinish7080011,
        ["7080012"] = self.OnSubFinish7080012,
        ["7080013"] = self.OnSubFinish7080013,
        ["7080014"] = self.OnSubFinish7080014,
        ["7080015"] = self.OnSubFinish7080015,
        ["7080016"] = self.OnSubFinish7080016,
        ["7080017"] = self.OnSubFinish7080017
    }
end

function Quest70800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7080001"] = self.OnSubFailed7080001,
        ["7080002"] = self.OnSubFailed7080002,
        ["7080003"] = self.OnSubFailed7080003,
        ["7080004"] = self.OnSubFailed7080004,
        ["7080005"] = self.OnSubFailed7080005,
        ["7080006"] = self.OnSubFailed7080006,
        ["7080007"] = self.OnSubFailed7080007,
        ["7080008"] = self.OnSubFailed7080008,
        ["7080009"] = self.OnSubFailed7080009,
        ["7080010"] = self.OnSubFailed7080010,
        ["7080011"] = self.OnSubFailed7080011,
        ["7080012"] = self.OnSubFailed7080012,
        ["7080013"] = self.OnSubFailed7080013,
        ["7080014"] = self.OnSubFailed7080014,
        ["7080015"] = self.OnSubFailed7080015,
        ["7080016"] = self.OnSubFailed7080016,
        ["7080017"] = self.OnSubFailed7080017
    }
end

function Quest70800:Start()
    print("Start")
end

function Quest70800:OnDestroy()
    print("OnDestroy")
end

function Quest70800:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70800:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70800:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1539Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1576Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1541Data.alias, 3)
end

function Quest70800:DestroyNPC01()
    print("DestroyNPC01")
    self:SafeDestroyQuestNpc(npcs.Npc1539Data.alias, 3)
end

function Quest70800:DestroyNPC02()
    print("DestroyNPC02")
    self:SafeDestroyQuestNpc(npcs.Npc1576Data.alias, 3)
end

function Quest70800:DestroyNPC03()
    print("DestroyNPC03")
    self:SafeDestroyQuestNpc(npcs.Npc1541Data.alias, 3)
end

function Quest70800:DoFreeStyle()
    print("DoFreeStyle")
    self:GetQuestNpcActor(npcs.Npc1576Data.alias):DoFreeStyle(4200, true, nil, true, true)
end

function Quest70800:OnSubStart7080001(arg1)
    print("OnSubStart7080001")
end

function Quest70800:OnSubFinish7080001(arg1)
    print("OnSubFinish7080001")
end

function Quest70800:OnSubFailed7080001(arg1)
    print("OnSubFailed7080001")
end

function Quest70800:OnSubStart7080002(arg1)
    print("OnSubStart7080002")
    self:CreateQuestNpc(arg1, npcs.Npc1541Data.id, 1)
end

function Quest70800:OnSubFinish7080002(arg1)
    print("OnSubFinish7080002")
end

function Quest70800:OnSubFailed7080002(arg1)
    print("OnSubFailed7080002")
end

function Quest70800:OnSubStart7080003(arg1)
    print("OnSubStart7080003")
    self:CreateQuestNpc(arg1, npcs.Npc1539Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1539Data.alias):DoFreeStyle(4190, true, nil, true, true)
end

function Quest70800:OnSubFinish7080003(arg1)
    print("OnSubFinish7080003")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "story")
end

function Quest70800:OnSubFailed7080003(arg1)
    print("OnSubFailed7080003")
end

function Quest70800:OnSubStart7080004(arg1)
    print("OnSubStart7080004")
    self:GetQuestNpcActor(npcs.Npc1539Data.alias):DoFreeStyle(4190, true, nil, true, true)
end

function Quest70800:OnSubFinish7080004(arg1)
    print("OnSubFinish7080004")
end

function Quest70800:OnSubFailed7080004(arg1)
    print("OnSubFailed7080004")
end

function Quest70800:OnSubStart7080005(arg1)
    print("OnSubStart7080005")
end

function Quest70800:OnSubFinish7080005(arg1)
    print("OnSubFinish7080005")
    self:FinishQuestID(false, subIDs.q7080003)
    self:FinishQuestID(false, subIDs.q7080004)
end

function Quest70800:OnSubFailed7080005(arg1)
    print("OnSubFailed7080005")
end

function Quest70800:OnSubStart7080006(arg1)
    print("OnSubStart7080006")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1539Data.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStyle(1300, true, nil, true, true)
end

function Quest70800:OnSubFinish7080006(arg1)
    print("OnSubFinish7080006")
    self:ShowBlackScreen(0.4, 1, 0.4, self.DestroyNPC01, nil, nil, "")
end

function Quest70800:OnSubFailed7080006(arg1)
    print("OnSubFailed7080006")
end

function Quest70800:OnSubStart7080007(arg1)
    print("OnSubStart7080007")
end

function Quest70800:OnSubFinish7080007(arg1)
    print("OnSubFinish7080007")
end

function Quest70800:OnSubFailed7080007(arg1)
    print("OnSubFailed7080007")
end

function Quest70800:OnSubStart7080008(arg1)
    print("OnSubStart7080008")
end

function Quest70800:OnSubFinish7080008(arg1)
    print("OnSubFinish7080008")
end

function Quest70800:OnSubFailed7080008(arg1)
    print("OnSubFailed7080008")
end

function Quest70800:OnSubStart7080009(arg1)
    print("OnSubStart7080009")
end

function Quest70800:OnSubFinish7080009(arg1)
    print("OnSubFinish7080009")
    self:ShowBlackScreen(0.4, 1, 0.4, self.DestroyNPC03, nil, nil, "")
end

function Quest70800:OnSubFailed7080009(arg1)
    print("OnSubFailed7080009")
end

function Quest70800:OnSubStart7080010(arg1)
    print("OnSubStart7080010")
end

function Quest70800:OnSubFinish7080010(arg1)
    print("OnSubFinish7080010")
end

function Quest70800:OnSubFailed7080010(arg1)
    print("OnSubFailed7080010")
end

function Quest70800:OnSubStart7080011(arg1)
    print("OnSubStart7080011")
    self:CreateQuestNpc(arg1, npcs.Npc1576Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1576Data.alias):Standby()
    self:CallDelay(1, self.DoFreeStyle)
end

function Quest70800:OnSubFinish7080011(arg1)
    print("OnSubFinish7080011")
end

function Quest70800:OnSubFailed7080011(arg1)
    print("OnSubFailed7080011")
end

function Quest70800:OnSubStart7080012(arg1)
    print("OnSubStart7080012")
    self:GetQuestNpcActor(npcs.Npc1576Data.alias):DoFreeStyle(4200, true, nil, true, true)
end

function Quest70800:OnSubFinish7080012(arg1)
    print("OnSubFinish7080012")
end

function Quest70800:OnSubFailed7080012(arg1)
    print("OnSubFailed7080012")
end

function Quest70800:OnSubStart7080013(arg1)
    print("OnSubStart7080013")
    self:GetQuestNpcActor(npcs.Npc1576Data.alias):Standby()
end

function Quest70800:OnSubFinish7080013(arg1)
    print("OnSubFinish7080013")
    self:ShowBlackScreen(0.4, 1, 0.4, self.DestroyNPC02, nil, nil, "")
end

function Quest70800:OnSubFailed7080013(arg1)
    print("OnSubFailed7080013")
end

function Quest70800:OnSubStart7080014(arg1)
    print("OnSubStart7080014")
    self:GetQuestNpcActor(npcs.Npc1576Data.alias):Standby()
end

function Quest70800:OnSubFinish7080014(arg1)
    print("OnSubFinish7080014")
end

function Quest70800:OnSubFailed7080014(arg1)
    print("OnSubFailed7080014")
end

function Quest70800:OnSubStart7080015(arg1)
    print("OnSubStart7080015")
end

function Quest70800:OnSubFinish7080015(arg1)
    print("OnSubFinish7080015")
end

function Quest70800:OnSubFailed7080015(arg1)
    print("OnSubFailed7080015")
end

function Quest70800:OnSubStart7080016(arg1)
    print("OnSubStart7080016")
end

function Quest70800:OnSubFinish7080016(arg1)
    print("OnSubFinish7080016")
end

function Quest70800:OnSubFailed7080016(arg1)
    print("OnSubFailed7080016")
end

function Quest70800:OnSubStart7080017(arg1)
    print("OnSubStart7080017")
end

function Quest70800:OnSubFinish7080017(arg1)
    print("OnSubFinish7080017")
    self:ShowBlackScreen(0.4, 1, 0.4, self.DestroyNPC03, nil, nil, "")
end

function Quest70800:OnSubFailed7080017(arg1)
    print("OnSubFailed7080017")
end

return Quest70800
