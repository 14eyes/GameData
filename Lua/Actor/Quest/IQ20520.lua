require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20520 = class("Quest20520", QuestActorProxy)
Quest20520.defaultAlias = "Quest20520"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20520:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20520:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2052001"] = self.OnSubStart2052001,
        ["2052002"] = self.OnSubStart2052002,
        ["2052003"] = self.OnSubStart2052003,
        ["2052004"] = self.OnSubStart2052004,
        ["2052005"] = self.OnSubStart2052005,
        ["2052006"] = self.OnSubStart2052006,
        ["2052007"] = self.OnSubStart2052007,
        ["2052009"] = self.OnSubStart2052009,
        ["2052010"] = self.OnSubStart2052010,
        ["2052011"] = self.OnSubStart2052011,
        ["2052008"] = self.OnSubStart2052008
    }
end

function Quest20520:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2052001"] = self.OnSubFinish2052001,
        ["2052002"] = self.OnSubFinish2052002,
        ["2052003"] = self.OnSubFinish2052003,
        ["2052004"] = self.OnSubFinish2052004,
        ["2052005"] = self.OnSubFinish2052005,
        ["2052006"] = self.OnSubFinish2052006,
        ["2052007"] = self.OnSubFinish2052007,
        ["2052009"] = self.OnSubFinish2052009,
        ["2052010"] = self.OnSubFinish2052010,
        ["2052011"] = self.OnSubFinish2052011,
        ["2052008"] = self.OnSubFinish2052008
    }
end

function Quest20520:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2052001"] = self.OnSubFailed2052001,
        ["2052002"] = self.OnSubFailed2052002,
        ["2052003"] = self.OnSubFailed2052003,
        ["2052004"] = self.OnSubFailed2052004,
        ["2052005"] = self.OnSubFailed2052005,
        ["2052006"] = self.OnSubFailed2052006,
        ["2052007"] = self.OnSubFailed2052007,
        ["2052009"] = self.OnSubFailed2052009,
        ["2052010"] = self.OnSubFailed2052010,
        ["2052011"] = self.OnSubFailed2052011,
        ["2052008"] = self.OnSubFailed2052008
    }
end

function Quest20520:Start()
    print("Start")
end

function Quest20520:OnDestroy()
    print("OnDestroy")
end

function Quest20520:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20520:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20520:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActorByAlias(npcs.Npc167201Data.alias, false)
end

function Quest20520:createnpc()
    print("createnpc")
    self:CreateQuestNpcById(2052009, npcs.Npc167201Data.id, 1)
end

function Quest20520:destorynpc()
    print("destorynpc")
    self:DestroyQuestNpcActorByAlias(npcs.Npc167201Data.alias, false)
end

function Quest20520:OnSubStart2052001(arg1)
    print("OnSubStart2052001")
    self:CreateQuestNpc(arg1, npcs.Npc167201Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc167201Data.alias):DoFreeStyle(4200, true, nil, true, true)
end

function Quest20520:OnSubFinish2052001(arg1)
    print("OnSubFinish2052001")
end

function Quest20520:OnSubFailed2052001(arg1)
    print("OnSubFailed2052001")
end

function Quest20520:OnSubStart2052002(arg1)
    print("OnSubStart2052002")
end

function Quest20520:OnSubFinish2052002(arg1)
    print("OnSubFinish2052002")
end

function Quest20520:OnSubFailed2052002(arg1)
    print("OnSubFailed2052002")
end

function Quest20520:OnSubStart2052003(arg1)
    print("OnSubStart2052003")
end

function Quest20520:OnSubFinish2052003(arg1)
    print("OnSubFinish2052003")
end

function Quest20520:OnSubFailed2052003(arg1)
    print("OnSubFailed2052003")
end

function Quest20520:OnSubStart2052004(arg1)
    print("OnSubStart2052004")
    actorMgr:CreateActorWithPos(datas.Q20520Trigger2_.alias, datas.Q20520Trigger2_.script, datas.Q20520Trigger2_.id, 0, datas.Q20520Trigger2_.point.pos, datas.Q20520Trigger2_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc167201Data.alias):DoFreeStyle(4200, true, nil, true, true)
end

function Quest20520:OnSubFinish2052004(arg1)
    print("OnSubFinish2052004")
end

function Quest20520:OnSubFailed2052004(arg1)
    print("OnSubFailed2052004")
end

function Quest20520:OnSubStart2052005(arg1)
    print("OnSubStart2052005")
    self:GetQuestNpcActor(npcs.Npc167201Data.alias):DoFreeStyle(4200, true, nil, true, true)
end

function Quest20520:OnSubFinish2052005(arg1)
    print("OnSubFinish2052005")
end

function Quest20520:OnSubFailed2052005(arg1)
    print("OnSubFailed2052005")
end

function Quest20520:OnSubStart2052006(arg1)
    print("OnSubStart2052006")
    self:GetQuestNpcActor(npcs.Npc167201Data.alias):DoFreeStyle(4200, true, nil, true, true)
end

function Quest20520:OnSubFinish2052006(arg1)
    print("OnSubFinish2052006")
end

function Quest20520:OnSubFailed2052006(arg1)
    print("OnSubFailed2052006")
end

function Quest20520:OnSubStart2052007(arg1)
    print("OnSubStart2052007")
    self:GetQuestNpcActor(npcs.Npc167201Data.alias):DoFreeStateTrigger()
end

function Quest20520:OnSubFinish2052007(arg1)
    print("OnSubFinish2052007")
end

function Quest20520:OnSubFailed2052007(arg1)
    print("OnSubFailed2052007")
end

function Quest20520:OnSubStart2052009(arg1)
    print("OnSubStart2052009")
    actorMgr:CreateActorWithPos(datas.Q20520Trigger_.alias, datas.Q20520Trigger_.script, datas.Q20520Trigger_.id, 0, datas.Q20520Trigger_.point.pos, datas.Q20520Trigger_.point.rot, true, false, 3)
    self:ShowBlackScreen(0, 0.5, 0, self.createnpc, nil, nil, "")
end

function Quest20520:OnSubFinish2052009(arg1)
    print("OnSubFinish2052009")
end

function Quest20520:OnSubFailed2052009(arg1)
    print("OnSubFailed2052009")
end

function Quest20520:OnSubStart2052010(arg1)
    print("OnSubStart2052010")
end

function Quest20520:OnSubFinish2052010(arg1)
    print("OnSubFinish2052010")
    self:ShowBlackScreen(0, 0.5, 0, self.destorynpc, nil, nil, "")
end

function Quest20520:OnSubFailed2052010(arg1)
    print("OnSubFailed2052010")
end

function Quest20520:OnSubStart2052011(arg1)
    print("OnSubStart2052011")
end

function Quest20520:OnSubFinish2052011(arg1)
    print("OnSubFinish2052011")
end

function Quest20520:OnSubFailed2052011(arg1)
    print("OnSubFailed2052011")
end

function Quest20520:OnSubStart2052008(arg1)
    print("OnSubStart2052008")
end

function Quest20520:OnSubFinish2052008(arg1)
    print("OnSubFinish2052008")
end

function Quest20520:OnSubFailed2052008(arg1)
    print("OnSubFailed2052008")
end

return Quest20520
