require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77171 = class("Quest77171", QuestActorProxy)
Quest77171.defaultAlias = "Quest77171"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77171:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77171:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7717101"] = self.OnSubStart7717101,
        ["7717102"] = self.OnSubStart7717102,
        ["7717104"] = self.OnSubStart7717104,
        ["7717105"] = self.OnSubStart7717105,
        ["7717107"] = self.OnSubStart7717107
    }
end

function Quest77171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7717101"] = self.OnSubFinish7717101,
        ["7717102"] = self.OnSubFinish7717102,
        ["7717104"] = self.OnSubFinish7717104,
        ["7717105"] = self.OnSubFinish7717105,
        ["7717107"] = self.OnSubFinish7717107
    }
end

function Quest77171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7717104"] = self.OnSubFailed7717104, ["7717107"] = self.OnSubFailed7717107}
end

function Quest77171:Start()
    print("Start")
end

function Quest77171:OnDestroy()
    print("OnDestroy")
end

function Quest77171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77171:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77171:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77171:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77171:OnSubStart7717101(arg1)
    print("OnSubStart7717101")
    this:DeployStoryByQuest(147717100)
end

function Quest77171:OnSubFinish7717101(arg1)
    print("OnSubFinish7717101")
    this:NpcCreateWithBlackscreen(0, npcs.Npc22726.id, arg1)
    this:CancelStoryByQuest(147717100)
end

function Quest77171:OnSubStart7717102(arg1)
    print("OnSubStart7717102")
    this:CreateQuestNpc(arg1, npcs.Npc22726.id, 0, false, 0)
end

function Quest77171:OnSubFinish7717102(arg1)
    print("OnSubFinish7717102")
end

function Quest77171:OnSubStart7717104(arg1)
    print("OnSubStart7717104")
end

function Quest77171:OnSubFinish7717104(arg1)
    print("OnSubFinish7717104")
end

function Quest77171:OnSubFailed7717104(arg1)
    print("OnSubFailed7717104")
    this:RecycleAllRes()
end

function Quest77171:OnSubStart7717105(arg1)
    print("OnSubStart7717105")
    this:CreateQuestNpc(arg1, npcs.Npc22726.id, 0, false, 0)
end

function Quest77171:OnSubFinish7717105(arg1)
    print("OnSubFinish7717105")
end

function Quest77171:OnSubStart7717107(arg1)
    print("OnSubStart7717107")
end

function Quest77171:OnSubFinish7717107(arg1)
    print("OnSubFinish7717107")
    this:SafeDestroyQuestNpc(npcs.Npc22726.alias, 3)
end

function Quest77171:OnSubFailed7717107(arg1)
    print("OnSubFailed7717107")
    this:RecycleAllRes()
end

return Quest77171
