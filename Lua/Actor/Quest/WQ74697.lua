require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74697 = class("Quest74697", QuestActorProxy)
Quest74697.defaultAlias = "Quest74697"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74697:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74697:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469701"] = self.OnSubStart7469701,
        ["7469702"] = self.OnSubStart7469702,
        ["7469705"] = self.OnSubStart7469705,
        ["7469703"] = self.OnSubStart7469703,
        ["7469704"] = self.OnSubStart7469704
    }
end

function Quest74697:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469701"] = self.OnSubFinish7469701,
        ["7469702"] = self.OnSubFinish7469702,
        ["7469705"] = self.OnSubFinish7469705,
        ["7469703"] = self.OnSubFinish7469703,
        ["7469704"] = self.OnSubFinish7469704
    }
end

function Quest74697:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469703"] = self.OnSubFailed7469703}
end

function Quest74697:Start()
    print("Start")
end

function Quest74697:OnDestroy()
    print("OnDestroy")
end

function Quest74697:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74697:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74697:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74697:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74697:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74697:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74697:OnSubStart7469701(arg1)
    print("OnSubStart7469701")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469701)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74697):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1097.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31092.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31093.id, 0, false, 0)
end

function Quest74697:OnSubFinish7469701(arg1)
    print("OnSubFinish7469701")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1097.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31092.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31093.alias)
end

function Quest74697:OnSubStart7469702(arg1)
    print("OnSubStart7469702")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
end

function Quest74697:OnSubFinish7469702(arg1)
    print("OnSubFinish7469702")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47826 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1020, questId = 7469702, pointCfgId = 1}, datas.__EmbedClientConfig_6, nil, nil)
            end
        end)
    end)
end

function Quest74697:OnSubStart7469705(arg1)
    print("OnSubStart7469705")
end

function Quest74697:OnSubFinish7469705(arg1)
    print("OnSubFinish7469705")
end

function Quest74697:OnSubStart7469703(arg1)
    print("OnSubStart7469703")
end

function Quest74697:OnSubFinish7469703(arg1)
    print("OnSubFinish7469703")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest74697:OnSubFailed7469703(arg1)
    print("OnSubFailed7469703")
    this:RecycleAllRes()
end

function Quest74697:OnSubStart7469704(arg1)
    print("OnSubStart7469704")
end

function Quest74697:OnSubFinish7469704(arg1)
    print("OnSubFinish7469704")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000109)
    end)
end

return Quest74697
