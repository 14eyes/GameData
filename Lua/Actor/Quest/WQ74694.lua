require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74694 = class("Quest74694", QuestActorProxy)
Quest74694.defaultAlias = "Quest74694"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74694:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74694:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469401"] = self.OnSubStart7469401,
        ["7469402"] = self.OnSubStart7469402,
        ["7469405"] = self.OnSubStart7469405,
        ["7469403"] = self.OnSubStart7469403,
        ["7469404"] = self.OnSubStart7469404
    }
end

function Quest74694:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469401"] = self.OnSubFinish7469401,
        ["7469402"] = self.OnSubFinish7469402,
        ["7469405"] = self.OnSubFinish7469405,
        ["7469403"] = self.OnSubFinish7469403,
        ["7469404"] = self.OnSubFinish7469404
    }
end

function Quest74694:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469403"] = self.OnSubFailed7469403}
end

function Quest74694:Start()
    print("Start")
end

function Quest74694:OnDestroy()
    print("OnDestroy")
end

function Quest74694:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74694:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74694:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74694:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74694:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74694:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74694:OnSubStart7469401(arg1)
    print("OnSubStart7469401")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469401)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74694):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1031.id, 0, false, 0)
end

function Quest74694:OnSubFinish7469401(arg1)
    print("OnSubFinish7469401")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1031.alias)
end

function Quest74694:OnSubStart7469402(arg1)
    print("OnSubStart7469402")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
end

function Quest74694:OnSubFinish7469402(arg1)
    print("OnSubFinish7469402")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47823 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1017, questId = 7469402, pointCfgId = 1}, datas.__EmbedClientConfig_4, nil, nil)
            end
        end)
    end)
end

function Quest74694:OnSubStart7469405(arg1)
    print("OnSubStart7469405")
end

function Quest74694:OnSubFinish7469405(arg1)
    print("OnSubFinish7469405")
end

function Quest74694:OnSubStart7469403(arg1)
    print("OnSubStart7469403")
end

function Quest74694:OnSubFinish7469403(arg1)
    print("OnSubFinish7469403")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest74694:OnSubFailed7469403(arg1)
    print("OnSubFailed7469403")
    this:RecycleAllRes()
end

function Quest74694:OnSubStart7469404(arg1)
    print("OnSubStart7469404")
end

function Quest74694:OnSubFinish7469404(arg1)
    print("OnSubFinish7469404")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000024)
    end)
end

return Quest74694
