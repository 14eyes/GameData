require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21030 = class("Quest21030", QuestActorProxy)
Quest21030.defaultAlias = "Quest21030"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest21030:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103001"] = self.OnSubStart2103001,
        ["2103002"] = self.OnSubStart2103002,
        ["2103003"] = self.OnSubStart2103003
    }
end

function Quest21030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103001"] = self.OnSubFinish2103001,
        ["2103002"] = self.OnSubFinish2103002,
        ["2103003"] = self.OnSubFinish2103003
    }
end

function Quest21030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21030:Start()
    print("Start")
end

function Quest21030:OnDestroy()
    print("OnDestroy")
end

function Quest21030:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2048Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    self:GetQuestNpcActor(npcs.Npc2031Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc2048Data.alias):DisableInteeHeadCtrl(false)
end

function Quest21030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21030:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2048Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2030Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2074Data.alias, 0, true)
    self:GetQuestNpcActor(npcs.Npc2031Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc2048Data.alias):DisableInteeHeadCtrl(false)
end

function Quest21030:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest21030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest21030:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21030:OnSubStart2103001(arg1)
    print("OnSubStart2103001")
    self:NpcCreate(arg1, npcs.Npc2031Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc2048Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc2031Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc2048Data.alias):DisableInteeHeadCtrl(true)
end

function Quest21030:OnSubFinish2103001(arg1)
    print("OnSubFinish2103001")
    self:GetQuestNpcActor(npcs.Npc2031Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc2048Data.alias):DisableInteeHeadCtrl(false)
end

function Quest21030:OnSubStart2103002(arg1)
    print("OnSubStart2103002")
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21030:OnSubFinish2103002(arg1)
    print("OnSubFinish2103002")
end

function Quest21030:OnSubStart2103003(arg1)
    print("OnSubStart2103003")
    self:DailyNpcSafeHideSelf(npcs.Npc2030Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2074Data.alias, 1, true)
end

function Quest21030:OnSubFinish2103003(arg1)
    print("OnSubFinish2103003")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2031Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2048Data.alias)
end

return Quest21030
