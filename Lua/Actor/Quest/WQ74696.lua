require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74696 = class("Quest74696", QuestActorProxy)
Quest74696.defaultAlias = "Quest74696"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74696:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74696:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469601"] = self.OnSubStart7469601,
        ["7469602"] = self.OnSubStart7469602,
        ["7469605"] = self.OnSubStart7469605,
        ["7469603"] = self.OnSubStart7469603,
        ["7469604"] = self.OnSubStart7469604
    }
end

function Quest74696:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469601"] = self.OnSubFinish7469601,
        ["7469602"] = self.OnSubFinish7469602,
        ["7469605"] = self.OnSubFinish7469605,
        ["7469603"] = self.OnSubFinish7469603,
        ["7469604"] = self.OnSubFinish7469604
    }
end

function Quest74696:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469603"] = self.OnSubFailed7469603}
end

function Quest74696:Start()
    print("Start")
end

function Quest74696:OnDestroy()
    print("OnDestroy")
end

function Quest74696:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74696:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74696:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74696:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74696:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74696:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74696:OnSubStart7469601(arg1)
    print("OnSubStart7469601")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469601)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74696):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1068.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DisableInteeHeadCtrl(true)
end

function Quest74696:OnSubFinish7469601(arg1)
    print("OnSubFinish7469601")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
end

function Quest74696:OnSubStart7469602(arg1)
    print("OnSubStart7469602")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DisableInteeHeadCtrl(true)
end

function Quest74696:OnSubFinish7469602(arg1)
    print("OnSubFinish7469602")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47825 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1019, questId = 7469602, pointCfgId = 1}, datas.__EmbedClientConfig_4, nil, nil)
            end
        end)
    end)
end

function Quest74696:OnSubStart7469605(arg1)
    print("OnSubStart7469605")
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DisableInteeHeadCtrl(true)
end

function Quest74696:OnSubFinish7469605(arg1)
    print("OnSubFinish7469605")
end

function Quest74696:OnSubStart7469603(arg1)
    print("OnSubStart7469603")
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DisableInteeHeadCtrl(true)
end

function Quest74696:OnSubFinish7469603(arg1)
    print("OnSubFinish7469603")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1068.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
    this:GetQuestNpcActor(npcs.Npc1068.alias, 74696):DisableInteeHeadCtrl(false)
end

function Quest74696:OnSubFailed7469603(arg1)
    print("OnSubFailed7469603")
    this:RecycleAllRes()
end

function Quest74696:OnSubStart7469604(arg1)
    print("OnSubStart7469604")
end

function Quest74696:OnSubFinish7469604(arg1)
    print("OnSubFinish7469604")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000035)
    end)
end

return Quest74696
