require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70010 = class("Quest70010", QuestActorProxy)
Quest70010.defaultAlias = "Quest70010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7001001"] = self.OnSubStart7001001,
        ["7001003"] = self.OnSubStart7001003,
        ["7001004"] = self.OnSubStart7001004,
        ["7001005"] = self.OnSubStart7001005,
        ["7001008"] = self.OnSubStart7001008,
        ["7001009"] = self.OnSubStart7001009,
        ["7001010"] = self.OnSubStart7001010,
        ["7001011"] = self.OnSubStart7001011,
        ["7001012"] = self.OnSubStart7001012,
        ["7001013"] = self.OnSubStart7001013,
        ["7001014"] = self.OnSubStart7001014,
        ["7001015"] = self.OnSubStart7001015,
        ["7001002"] = self.OnSubStart7001002,
        ["7001006"] = self.OnSubStart7001006,
        ["7001007"] = self.OnSubStart7001007
    }
end

function Quest70010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7001001"] = self.OnSubFinish7001001,
        ["7001003"] = self.OnSubFinish7001003,
        ["7001004"] = self.OnSubFinish7001004,
        ["7001005"] = self.OnSubFinish7001005,
        ["7001008"] = self.OnSubFinish7001008,
        ["7001009"] = self.OnSubFinish7001009,
        ["7001010"] = self.OnSubFinish7001010,
        ["7001011"] = self.OnSubFinish7001011,
        ["7001012"] = self.OnSubFinish7001012,
        ["7001013"] = self.OnSubFinish7001013,
        ["7001014"] = self.OnSubFinish7001014,
        ["7001015"] = self.OnSubFinish7001015,
        ["7001002"] = self.OnSubFinish7001002,
        ["7001006"] = self.OnSubFinish7001006,
        ["7001007"] = self.OnSubFinish7001007
    }
end

function Quest70010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7001001"] = self.OnSubFailed7001001,
        ["7001003"] = self.OnSubFailed7001003,
        ["7001004"] = self.OnSubFailed7001004,
        ["7001005"] = self.OnSubFailed7001005,
        ["7001008"] = self.OnSubFailed7001008,
        ["7001009"] = self.OnSubFailed7001009,
        ["7001010"] = self.OnSubFailed7001010,
        ["7001011"] = self.OnSubFailed7001011,
        ["7001012"] = self.OnSubFailed7001012,
        ["7001013"] = self.OnSubFailed7001013,
        ["7001014"] = self.OnSubFailed7001014,
        ["7001015"] = self.OnSubFailed7001015,
        ["7001002"] = self.OnSubFailed7001002,
        ["7001006"] = self.OnSubFailed7001006,
        ["7001007"] = self.OnSubFailed7001007
    }
end

function Quest70010:Start()
    print("Start")
end

function Quest70010:OnDestroy()
    print("OnDestroy")
end

function Quest70010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyAll()
    actorMgr:DestroyEntityActor(datas.Q70010Trigger_.alias, 3, false)
end

function Quest70010:DestroyAll()
    print("DestroyAll")
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1523Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1644Data.alias, 3)
end

function Quest70010:OnSubStart7001001(arg1)
    print("OnSubStart7001001")
end

function Quest70010:OnSubFinish7001001(arg1)
    print("OnSubFinish7001001")
end

function Quest70010:OnSubFailed7001001(arg1)
    print("OnSubFailed7001001")
end

function Quest70010:OnSubStart7001003(arg1)
    print("OnSubStart7001003")
end

function Quest70010:OnSubFinish7001003(arg1)
    print("OnSubFinish7001003")
end

function Quest70010:OnSubFailed7001003(arg1)
    print("OnSubFailed7001003")
end

function Quest70010:OnSubStart7001004(arg1)
    print("OnSubStart7001004")
end

function Quest70010:OnSubFinish7001004(arg1)
    print("OnSubFinish7001004")
end

function Quest70010:OnSubFailed7001004(arg1)
    print("OnSubFailed7001004")
end

function Quest70010:OnSubStart7001005(arg1)
    print("OnSubStart7001005")
end

function Quest70010:OnSubFinish7001005(arg1)
    print("OnSubFinish7001005")
end

function Quest70010:OnSubFailed7001005(arg1)
    print("OnSubFailed7001005")
end

function Quest70010:OnSubStart7001008(arg1)
    print("OnSubStart7001008")
end

function Quest70010:OnSubFinish7001008(arg1)
    print("OnSubFinish7001008")
end

function Quest70010:OnSubFailed7001008(arg1)
    print("OnSubFailed7001008")
end

function Quest70010:OnSubStart7001009(arg1)
    print("OnSubStart7001009")
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 1)
end

function Quest70010:OnSubFinish7001009(arg1)
    print("OnSubFinish7001009")
end

function Quest70010:OnSubFailed7001009(arg1)
    print("OnSubFailed7001009")
end

function Quest70010:OnSubStart7001010(arg1)
    print("OnSubStart7001010")
    self.CreateQuestNpc(self, arg1, npcs.Npc1523Data.id, 2)
    self.CreateQuestNpc(self, arg1, npcs.Npc1644Data.id, 3)
    self.GetQuestNpcActor(self, npcs.Npc1523Data.alias):DoFreeStyle(4090, true, nil, true, true)
    self.GetQuestNpcActor(self, npcs.Npc1644Data.alias):DoFreeStyle(4090, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q70010Trigger_.alias, datas.Q70010Trigger_.script, datas.Q70010Trigger_.id, 0, datas.Q70010Trigger_.point.pos, datas.Q70010Trigger_.point.rot, true, false, 3)
    self.CallDelay(self, 3, function()
        self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end)
end

function Quest70010:OnSubFinish7001010(arg1)
    print("OnSubFinish7001010")
end

function Quest70010:OnSubFailed7001010(arg1)
    print("OnSubFailed7001010")
end

function Quest70010:OnSubStart7001011(arg1)
    print("OnSubStart7001011")
end

function Quest70010:OnSubFinish7001011(arg1)
    print("OnSubFinish7001011")
    self:GetQuestNpcActor(npcs.Npc1523Data.alias):DoFreeStyle(4090, true, nil, true, true)
end

function Quest70010:OnSubFailed7001011(arg1)
    print("OnSubFailed7001011")
end

function Quest70010:OnSubStart7001012(arg1)
    print("OnSubStart7001012")
end

function Quest70010:OnSubFinish7001012(arg1)
    print("OnSubFinish7001012")
    self:GetQuestNpcActor(npcs.Npc1644Data.alias):DoFreeStyle(4090, true, nil, true, true)
end

function Quest70010:OnSubFailed7001012(arg1)
    print("OnSubFailed7001012")
end

function Quest70010:OnSubStart7001013(arg1)
    print("OnSubStart7001013")
end

function Quest70010:OnSubFinish7001013(arg1)
    print("OnSubFinish7001013")
end

function Quest70010:OnSubFailed7001013(arg1)
    print("OnSubFailed7001013")
end

function Quest70010:OnSubStart7001014(arg1)
    print("OnSubStart7001014")
    self:GetQuestNpcActor(npcs.Npc1523Data.alias):DoFreeStyle(4090, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc1644Data.alias):DoFreeStyle(4090, true, nil, true, true)
end

function Quest70010:OnSubFinish7001014(arg1)
    print("OnSubFinish7001014")
end

function Quest70010:OnSubFailed7001014(arg1)
    print("OnSubFailed7001014")
end

function Quest70010:OnSubStart7001015(arg1)
    print("OnSubStart7001015")
end

function Quest70010:OnSubFinish7001015(arg1)
    print("OnSubFinish7001015")
end

function Quest70010:OnSubFailed7001015(arg1)
    print("OnSubFailed7001015")
end

function Quest70010:OnSubStart7001002(arg1)
    print("OnSubStart7001002")
end

function Quest70010:OnSubFinish7001002(arg1)
    print("OnSubFinish7001002")
    self:DestroyAll()
end

function Quest70010:OnSubFailed7001002(arg1)
    print("OnSubFailed7001002")
end

function Quest70010:OnSubStart7001006(arg1)
    print("OnSubStart7001006")
end

function Quest70010:OnSubFinish7001006(arg1)
    print("OnSubFinish7001006")
end

function Quest70010:OnSubFailed7001006(arg1)
    print("OnSubFailed7001006")
end

function Quest70010:OnSubStart7001007(arg1)
    print("OnSubStart7001007")
end

function Quest70010:OnSubFinish7001007(arg1)
    print("OnSubFinish7001007")
end

function Quest70010:OnSubFailed7001007(arg1)
    print("OnSubFailed7001007")
end

return Quest70010
