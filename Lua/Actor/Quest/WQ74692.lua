require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74692 = class("Quest74692", QuestActorProxy)
Quest74692.defaultAlias = "Quest74692"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest74692:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest74692:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7469201"] = self.OnSubStart7469201,
        ["7469202"] = self.OnSubStart7469202,
        ["7469205"] = self.OnSubStart7469205,
        ["7469203"] = self.OnSubStart7469203,
        ["7469204"] = self.OnSubStart7469204
    }
end

function Quest74692:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7469201"] = self.OnSubFinish7469201,
        ["7469202"] = self.OnSubFinish7469202,
        ["7469205"] = self.OnSubFinish7469205,
        ["7469203"] = self.OnSubFinish7469203,
        ["7469204"] = self.OnSubFinish7469204
    }
end

function Quest74692:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7469203"] = self.OnSubFailed7469203}
end

function Quest74692:Start()
    print("Start")
end

function Quest74692:OnDestroy()
    print("OnDestroy")
end

function Quest74692:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74692:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74692:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74692:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74692:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest74692:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest74692:OnSubStart7469201(arg1)
    print("OnSubStart7469201")
    this:NpcCreateWithNpcTrigger(npcs.Npc16101.id, 0, 8, 7469201)
    this:GetQuestNpcActor(npcs.Npc16101.alias, 74692):DoFreeStyle(1006, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1061.id, 0, false, 0)
end

function Quest74692:OnSubFinish7469201(arg1)
    print("OnSubFinish7469201")
    this:NpcDestroyImmediately(3, npcs.Npc16101.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1061.alias)
end

function Quest74692:OnSubStart7469202(arg1)
    print("OnSubStart7469202")
    this:CreateQuestNpc(arg1, npcs.Npc31069.id, 0, false, 0)
end

function Quest74692:OnSubFinish7469202(arg1)
    print("OnSubFinish7469202")
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            if sceneData.currSceneID == 47821 then
            else
                this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2108, dungeonId = 1015, questId = 7469202, questPointCfgId = 1}, datas.__EmbedClientConfig_4, nil, nil)
            end
        end)
    end)
end

function Quest74692:OnSubStart7469205(arg1)
    print("OnSubStart7469205")
end

function Quest74692:OnSubFinish7469205(arg1)
    print("OnSubFinish7469205")
end

function Quest74692:OnSubStart7469203(arg1)
    print("OnSubStart7469203")
end

function Quest74692:OnSubFinish7469203(arg1)
    print("OnSubFinish7469203")
    this:NpcDestroyImmediately(3, npcs.Npc31069.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest74692:OnSubFailed7469203(arg1)
    print("OnSubFailed7469203")
    this:RecycleAllRes()
end

function Quest74692:OnSubStart7469204(arg1)
    print("OnSubStart7469204")
end

function Quest74692:OnSubFinish7469204(arg1)
    print("OnSubFinish7469204")
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("AvatarEnhanceTopicCompleteDialog", 10000039)
    end)
end

return Quest74692
