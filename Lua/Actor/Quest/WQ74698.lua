require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74698 = class("Quest74698", QuestActorProxy)
Quest74698.defaultAlias = "Quest74698"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74698:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74698:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469801"] = self.OnSubStart7469801,
        ["7469802"] = self.OnSubStart7469802,
        ["7469805"] = self.OnSubStart7469805,
        ["7469803"] = self.OnSubStart7469803,
        ["7469804"] = self.OnSubStart7469804
    }
end

function Quest74698:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469801"] = self.OnSubFinish7469801,
        ["7469802"] = self.OnSubFinish7469802,
        ["7469805"] = self.OnSubFinish7469805,
        ["7469803"] = self.OnSubFinish7469803,
        ["7469804"] = self.OnSubFinish7469804
    }
end

function Quest74698:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469803"] = self.OnSubFailed7469803}
end

function Quest74698:Start()
    print("Start")
end

function Quest74698:OnDestroy()
    print("OnDestroy")
end

function Quest74698:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74698:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74698:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74698:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74698:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74698:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74698:OnSubStart7469801(arg1)
    print("OnSubStart7469801")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469801)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74698):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1034.id, 0, false, 0)
end

function Quest74698:OnSubFinish7469801(arg1)
    print("OnSubFinish7469801")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1034.alias)
end

function Quest74698:OnSubStart7469802(arg1)
    print("OnSubStart7469802")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
end

function Quest74698:OnSubFinish7469802(arg1)
    print("OnSubFinish7469802")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47827 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1021, questId = 7469802, pointCfgId = 1}, datas.__EmbedClientConfig_4, nil, nil)
            end
        end)
    end)
end

function Quest74698:OnSubStart7469805(arg1)
    print("OnSubStart7469805")
end

function Quest74698:OnSubFinish7469805(arg1)
    print("OnSubFinish7469805")
end

function Quest74698:OnSubStart7469803(arg1)
    print("OnSubStart7469803")
end

function Quest74698:OnSubFinish7469803(arg1)
    print("OnSubFinish7469803")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest74698:OnSubFailed7469803(arg1)
    print("OnSubFailed7469803")
    this:RecycleAllRes()
end

function Quest74698:OnSubStart7469804(arg1)
    print("OnSubStart7469804")
end

function Quest74698:OnSubFinish7469804(arg1)
    print("OnSubFinish7469804")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000058)
    end)
end

return Quest74698
