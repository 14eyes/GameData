require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74693 = class("Quest74693", QuestActorProxy)
Quest74693.defaultAlias = "Quest74693"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74693:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74693:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469301"] = self.OnSubStart7469301,
        ["7469302"] = self.OnSubStart7469302,
        ["7469305"] = self.OnSubStart7469305,
        ["7469303"] = self.OnSubStart7469303,
        ["7469304"] = self.OnSubStart7469304
    }
end

function Quest74693:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469301"] = self.OnSubFinish7469301,
        ["7469302"] = self.OnSubFinish7469302,
        ["7469305"] = self.OnSubFinish7469305,
        ["7469303"] = self.OnSubFinish7469303,
        ["7469304"] = self.OnSubFinish7469304
    }
end

function Quest74693:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469303"] = self.OnSubFailed7469303}
end

function Quest74693:Start()
    print("Start")
end

function Quest74693:OnDestroy()
    print("OnDestroy")
end

function Quest74693:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74693:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74693:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74693:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74693:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74693:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74693:OnSubStart7469301(arg1)
    print("OnSubStart7469301")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469301)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74693):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1058.id, 0, false, 0)
end

function Quest74693:OnSubFinish7469301(arg1)
    print("OnSubFinish7469301")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1058.alias)
end

function Quest74693:OnSubStart7469302(arg1)
    print("OnSubStart7469302")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
end

function Quest74693:OnSubFinish7469302(arg1)
    print("OnSubFinish7469302")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47822 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1016, questId = 7469302, pointCfgId = 1}, datas.__EmbedClientConfig_4, nil, nil)
            end
        end)
    end)
end

function Quest74693:OnSubStart7469305(arg1)
    print("OnSubStart7469305")
end

function Quest74693:OnSubFinish7469305(arg1)
    print("OnSubFinish7469305")
end

function Quest74693:OnSubStart7469303(arg1)
    print("OnSubStart7469303")
end

function Quest74693:OnSubFinish7469303(arg1)
    print("OnSubFinish7469303")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest74693:OnSubFailed7469303(arg1)
    print("OnSubFailed7469303")
    this:RecycleAllRes()
end

function Quest74693:OnSubStart7469304(arg1)
    print("OnSubStart7469304")
end

function Quest74693:OnSubFinish7469304(arg1)
    print("OnSubFinish7469304")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000071)
    end)
end

return Quest74693
