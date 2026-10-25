require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20020 = class("Quest20020", QuestActorProxy)
Quest20020.defaultAlias = "Quest20020"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest20020:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest20020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2002001"] = self.OnSubStart2002001,
        ["2002029"] = self.OnSubStart2002029,
        ["2002003"] = self.OnSubStart2002003,
        ["2002027"] = self.OnSubStart2002027,
        ["2002012"] = self.OnSubStart2002012,
        ["2002028"] = self.OnSubStart2002028,
        ["2002021"] = self.OnSubStart2002021,
        ["2002024"] = self.OnSubStart2002024,
        ["2002025"] = self.OnSubStart2002025,
        ["2002026"] = self.OnSubStart2002026
    }
end

function Quest20020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2002001"] = self.OnSubFinish2002001,
        ["2002029"] = self.OnSubFinish2002029,
        ["2002003"] = self.OnSubFinish2002003,
        ["2002027"] = self.OnSubFinish2002027,
        ["2002012"] = self.OnSubFinish2002012,
        ["2002028"] = self.OnSubFinish2002028,
        ["2002021"] = self.OnSubFinish2002021,
        ["2002024"] = self.OnSubFinish2002024,
        ["2002025"] = self.OnSubFinish2002025,
        ["2002026"] = self.OnSubFinish2002026
    }
end

function Quest20020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20020:Start()
    print("Start")
end

function Quest20020:OnDestroy()
    print("OnDestroy")
end

function Quest20020:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(false)
end

function Quest20020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20020:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(false)
    self:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
end

function Quest20020:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest20020:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20020:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20020:OnSubStart2002001(arg1)
    print("OnSubStart2002001")
    this:NpcCreate(arg1, npcs.Npc1405Data.id, 1)
    this:NpcCreate(arg1, npcs.Npc1408Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(true)
end

function Quest20020:OnSubFinish2002001(arg1)
    print("OnSubFinish2002001")
    self:GetQuestNpcActor(npcs.Npc1405Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DisableInteeHeadCtrl(false)
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1405Data.alias, 3)
    end)
end

function Quest20020:OnSubStart2002029(arg1)
    print("OnSubStart2002029")
end

function Quest20020:OnSubFinish2002029(arg1)
    print("OnSubFinish2002029")
end

function Quest20020:OnSubStart2002003(arg1)
    print("OnSubStart2002003")
    self:ActionSafeCall(function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc1408Data.id, 2)
        arg1_2:NotifyTo(npcs.Npc1405Data.alias, 1, true)
    end)
end

function Quest20020:OnSubFinish2002003(arg1)
    print("OnSubFinish2002003")
end

function Quest20020:OnSubStart2002027(arg1)
    print("OnSubStart2002027")
    self:NotifyTo(npcs.Npc1405Data.alias, 1, true)
end

function Quest20020:OnSubFinish2002027(arg1)
    print("OnSubFinish2002027")
end

function Quest20020:OnSubStart2002012(arg1)
    print("OnSubStart2002012")
    self:NotifyTo(npcs.Npc1405Data.alias, 1, true)
end

function Quest20020:OnSubFinish2002012(arg1)
    print("OnSubFinish2002012")
end

function Quest20020:OnSubStart2002028(arg1)
    print("OnSubStart2002028")
    self:NotifyTo(npcs.Npc1405Data.alias, 1, true)
end

function Quest20020:OnSubFinish2002028(arg1)
    print("OnSubFinish2002028")
end

function Quest20020:OnSubStart2002021(arg1)
    print("OnSubStart2002021")
    self:NotifyTo(npcs.Npc1405Data.alias, 1, true)
end

function Quest20020:OnSubFinish2002021(arg1)
    print("OnSubFinish2002021")
end

function Quest20020:OnSubStart2002024(arg1)
    print("OnSubStart2002024")
    self:NotifyTo(npcs.Npc1405Data.alias, 1, true)
end

function Quest20020:OnSubFinish2002024(arg1)
    print("OnSubFinish2002024")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest20020:OnSubStart2002025(arg1)
    print("OnSubStart2002025")
    this:NpcCreate(arg1, npcs.Npc1405Data.id, 1)
end

function Quest20020:OnSubFinish2002025(arg1)
    print("OnSubFinish2002025")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1405Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1408Data.alias)
end

function Quest20020:OnSubStart2002026(arg1)
    print("OnSubStart2002026")
end

function Quest20020:OnSubFinish2002026(arg1)
    print("OnSubFinish2002026")
end

return Quest20020
