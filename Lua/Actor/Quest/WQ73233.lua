require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73233 = class("Quest73233", QuestActorProxy)
Quest73233.defaultAlias = "Quest73233"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73233:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73233:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323301"] = self.OnSubStart7323301,
        ["7323302"] = self.OnSubStart7323302,
        ["7323303"] = self.OnSubStart7323303,
        ["7323307"] = self.OnSubStart7323307,
        ["7323304"] = self.OnSubStart7323304,
        ["7323305"] = self.OnSubStart7323305,
        ["7323306"] = self.OnSubStart7323306
    }
end

function Quest73233:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323301"] = self.OnSubFinish7323301,
        ["7323302"] = self.OnSubFinish7323302,
        ["7323303"] = self.OnSubFinish7323303,
        ["7323307"] = self.OnSubFinish7323307,
        ["7323304"] = self.OnSubFinish7323304,
        ["7323305"] = self.OnSubFinish7323305,
        ["7323306"] = self.OnSubFinish7323306
    }
end

function Quest73233:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73233:Start()
    print("Start")
end

function Quest73233:OnDestroy()
    print("OnDestroy")
end

function Quest73233:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73233:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73233:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73233:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73233:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest73233:OnSubStart7323301(arg1)
    print("OnSubStart7323301")
    self:CreateQuestNpc(arg1, npcs.Npc4404Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4405Data.alias, 1, true)
end

function Quest73233:OnSubFinish7323301(arg1)
    print("OnSubFinish7323301")
end

function Quest73233:OnSubStart7323302(arg1)
    print("OnSubStart7323302")
    self:DailyNpcSafeHideSelf(npcs.Npc4405Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc4406Data.id, 1)
end

function Quest73233:OnSubFinish7323302(arg1)
    print("OnSubFinish7323302")
end

function Quest73233:OnSubStart7323303(arg1)
    print("OnSubStart7323303")
    self:DailyNpcSafeHideSelf(npcs.Npc4405Data.alias, 1, true)
end

function Quest73233:OnSubFinish7323303(arg1)
    print("OnSubFinish7323303")
end

function Quest73233:OnSubStart7323307(arg1)
    print("OnSubStart7323307")
    self:DailyNpcSafeHideSelf(npcs.Npc4405Data.alias, 1, true)
end

function Quest73233:OnSubFinish7323307(arg1)
    print("OnSubFinish7323307")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4406Data.alias)
end

function Quest73233:OnSubStart7323304(arg1)
    print("OnSubStart7323304")
    self:DailyNpcSafeHideSelf(npcs.Npc4405Data.alias, 1, true)
end

function Quest73233:OnSubFinish7323304(arg1)
    print("OnSubFinish7323304")
end

function Quest73233:OnSubStart7323305(arg1)
    print("OnSubStart7323305")
    self:DailyNpcSafeHideSelf(npcs.Npc4405Data.alias, 1, true)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4405Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc4405Data.alias)
    end, nil, nil, datas.TextmapId05.id1, false, true)
end

function Quest73233:OnSubFinish7323305(arg1)
    print("OnSubFinish7323305")
end

function Quest73233:OnSubStart7323306(arg1)
    print("OnSubStart7323306")
end

function Quest73233:OnSubFinish7323306(arg1)
    print("OnSubFinish7323306")
    self:LightNotifyTo(npcs.Npc4405Data.alias, 0, true)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4404Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4405Data.alias)
end

return Quest73233
