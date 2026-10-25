require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2006 = class("Quest2006", QuestActorProxy)
Quest2006.defaultAlias = "Quest2006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200601"] = self.OnSubStart200601,
        ["200602"] = self.OnSubStart200602,
        ["200603"] = self.OnSubStart200603,
        ["200608"] = self.OnSubStart200608,
        ["200609"] = self.OnSubStart200609,
        ["200604"] = self.OnSubStart200604,
        ["200605"] = self.OnSubStart200605,
        ["200606"] = self.OnSubStart200606,
        ["200607"] = self.OnSubStart200607,
        ["200610"] = self.OnSubStart200610
    }
end

function Quest2006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200601"] = self.OnSubFinish200601,
        ["200602"] = self.OnSubFinish200602,
        ["200603"] = self.OnSubFinish200603,
        ["200608"] = self.OnSubFinish200608,
        ["200609"] = self.OnSubFinish200609,
        ["200604"] = self.OnSubFinish200604,
        ["200605"] = self.OnSubFinish200605,
        ["200606"] = self.OnSubFinish200606,
        ["200607"] = self.OnSubFinish200607,
        ["200610"] = self.OnSubFinish200610
    }
end

function Quest2006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200601"] = self.OnSubFailed200601,
        ["200602"] = self.OnSubFailed200602,
        ["200603"] = self.OnSubFailed200603,
        ["200608"] = self.OnSubFailed200608,
        ["200609"] = self.OnSubFailed200609,
        ["200604"] = self.OnSubFailed200604,
        ["200605"] = self.OnSubFailed200605,
        ["200606"] = self.OnSubFailed200606,
        ["200607"] = self.OnSubFailed200607,
        ["200610"] = self.OnSubFailed200610
    }
end

function Quest2006:Start()
    print("Start")
end

function Quest2006:OnDestroy()
    print("OnDestroy")
end

function Quest2006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2006:OnSubStart200601(arg1)
    print("OnSubStart200601")
    self:CreateQuestNpc(arg1, npcs.Npc12005Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12005Data1.id, 3)
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q200601Trigger_.alias, datas.Q200601Trigger_.script, datas.Q200601Trigger_.id, 0, datas.Q200601Trigger_.point.pos, datas.Q200601Trigger_.point.rot, true, false, 3)
end

function Quest2006:OnSubFinish200601(arg1)
    print("OnSubFinish200601")
    self:SafeDestroyQuestNpc(npcs.Npc12004Data.alias, 3)
end

function Quest2006:OnSubFailed200601(arg1)
    print("OnSubFailed200601")
end

function Quest2006:OnSubStart200602(arg1)
    print("OnSubStart200602")
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12005Data1.id, 1)
end

function Quest2006:OnSubFinish200602(arg1)
    print("OnSubFinish200602")
    self:SafeDestroyQuestNpc(npcs.Npc12005Data.alias, 3)
end

function Quest2006:OnSubFailed200602(arg1)
    print("OnSubFailed200602")
end

function Quest2006:OnSubStart200603(arg1)
    print("OnSubStart200603")
    self.ActionSafeCall(self, function()
        self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
        self:NotifyTo(npcs.Npc12005Data.alias, 1, true)
    end)

    self.CreateQuestNpc(self, arg1, npcs.Npc12005Data1.id, 1)
end

function Quest2006:OnSubFinish200603(arg1)
    print("OnSubFinish200603")
    self:SafeDestroyQuestNpc(npcs.Npc12005Data1.alias, 3)
end

function Quest2006:OnSubFailed200603(arg1)
    print("OnSubFailed200603")
end

function Quest2006:OnSubStart200608(arg1)
    print("OnSubStart200608")
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data1.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12006Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q200608Trigger_.alias, datas.Q200608Trigger_.script, datas.Q200608Trigger_.id, 0, datas.Q200608Trigger_.point.pos, datas.Q200608Trigger_.point.rot, true, false, 3)
end

function Quest2006:OnSubFinish200608(arg1)
    print("OnSubFinish200608")
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest2006:OnSubFailed200608(arg1)
    print("OnSubFailed200608")
end

function Quest2006:OnSubStart200609(arg1)
    print("OnSubStart200609")
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data1.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12006Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q200609Trigger_.alias, datas.Q200609Trigger_.script, datas.Q200609Trigger_.id, 0, datas.Q200609Trigger_.point.pos, datas.Q200609Trigger_.point.rot, true, false, 3)
end

function Quest2006:OnSubFinish200609(arg1)
    print("OnSubFinish200609")
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId2)
    end)
end

function Quest2006:OnSubFailed200609(arg1)
    print("OnSubFailed200609")
end

function Quest2006:OnSubStart200604(arg1)
    print("OnSubStart200604")
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data1.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12006Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q200604Trigger_.alias, datas.Q200604Trigger_.script, datas.Q200604Trigger_.id, 0, datas.Q200604Trigger_.point.pos, datas.Q200604Trigger_.point.rot, true, false, 3)
end

function Quest2006:OnSubFinish200604(arg1)
    print("OnSubFinish200604")
    self.ActionSafeCall(self, function()
        self:NarratorOnlyTaskByData(datas.NarratorWithId3)
    end)
end

function Quest2006:OnSubFailed200604(arg1)
    print("OnSubFailed200604")
end

function Quest2006:OnSubStart200605(arg1)
    print("OnSubStart200605")
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data1.alias, 1, true)
end

function Quest2006:OnSubFinish200605(arg1)
    print("OnSubFinish200605")
    self:SafeDestroyQuestNpc(npcs.Npc12006Data.alias, 3)
end

function Quest2006:OnSubFailed200605(arg1)
    print("OnSubFailed200605")
end

function Quest2006:OnSubStart200606(arg1)
    print("OnSubStart200606")
    self:CreateQuestNpc(arg1, npcs.Npc12007Data.id, 1)
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q200606Trigger_.alias, datas.Q200606Trigger_.script, datas.Q200606Trigger_.id, 0, datas.Q200606Trigger_.point.pos, datas.Q200606Trigger_.point.rot, true, false, 3)
end

function Quest2006:OnSubFinish200606(arg1)
    print("OnSubFinish200606")
    self:SafeDestroyQuestNpc(npcs.Npc12007Data.alias, 3)
end

function Quest2006:OnSubFailed200606(arg1)
    print("OnSubFailed200606")
end

function Quest2006:OnSubStart200607(arg1)
    print("OnSubStart200607")
    self:NotifyTo(npcs.Npc12004Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data.alias, 1, true)
    self:NotifyTo(npcs.Npc12005Data1.alias, 1, true)
    self:NotifyTo("Npc3105", 1, true)
    actorMgr:CreateActorWithPos(datas.Q200607Trigger_.alias, datas.Q200607Trigger_.script, datas.Q200607Trigger_.id, 0, datas.Q200607Trigger_.point.pos, datas.Q200607Trigger_.point.rot, true, false, 3)
end

function Quest2006:OnSubFinish200607(arg1)
    print("OnSubFinish200607")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:LightNotifyTo("Npc3105", 0, true)
end

function Quest2006:OnSubFailed200607(arg1)
    print("OnSubFailed200607")
end

function Quest2006:OnSubStart200610(arg1)
    print("OnSubStart200610")
end

function Quest2006:OnSubFinish200610(arg1)
    print("OnSubFinish200610")
end

function Quest2006:OnSubFailed200610(arg1)
    print("OnSubFailed200610")
end

return Quest2006
