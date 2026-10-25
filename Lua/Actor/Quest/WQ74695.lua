require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74695 = class("Quest74695", QuestActorProxy)
Quest74695.defaultAlias = "Quest74695"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74695:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74695:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469501"] = self.OnSubStart7469501,
        ["7469502"] = self.OnSubStart7469502,
        ["7469505"] = self.OnSubStart7469505,
        ["7469503"] = self.OnSubStart7469503,
        ["7469504"] = self.OnSubStart7469504
    }
end

function Quest74695:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469501"] = self.OnSubFinish7469501,
        ["7469502"] = self.OnSubFinish7469502,
        ["7469505"] = self.OnSubFinish7469505,
        ["7469503"] = self.OnSubFinish7469503,
        ["7469504"] = self.OnSubFinish7469504
    }
end

function Quest74695:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469503"] = self.OnSubFailed7469503}
end

function Quest74695:Start()
    print("Start")
end

function Quest74695:OnDestroy()
    print("OnDestroy")
end

function Quest74695:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74695:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74695:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74695:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74695:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74695:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74695:OnSubStart7469501(arg1)
    print("OnSubStart7469501")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469501)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74695):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1078.id, 0, false, 0)
end

function Quest74695:OnSubFinish7469501(arg1)
    print("OnSubFinish7469501")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1078.alias)
end

function Quest74695:OnSubStart7469502(arg1)
    print("OnSubStart7469502")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
end

function Quest74695:OnSubFinish7469502(arg1)
    print("OnSubFinish7469502")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47824 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1018, questId = 7469502, pointCfgId = 1}, datas.__EmbedClientConfig_4, nil, nil)
            end
        end)
    end)
end

function Quest74695:OnSubStart7469505(arg1)
    print("OnSubStart7469505")
end

function Quest74695:OnSubFinish7469505(arg1)
    print("OnSubFinish7469505")
end

function Quest74695:OnSubStart7469503(arg1)
    print("OnSubStart7469503")
end

function Quest74695:OnSubFinish7469503(arg1)
    print("OnSubFinish7469503")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest74695:OnSubFailed7469503(arg1)
    print("OnSubFailed7469503")
    this:RecycleAllRes()
end

function Quest74695:OnSubStart7469504(arg1)
    print("OnSubStart7469504")
end

function Quest74695:OnSubFinish7469504(arg1)
    print("OnSubFinish7469504")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000086)
    end)
end

return Quest74695
