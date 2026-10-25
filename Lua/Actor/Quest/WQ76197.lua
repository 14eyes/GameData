require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76197 = class("Quest76197", QuestActorProxy)
Quest76197.defaultAlias = "Quest76197"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76197:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76197:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619701"] = self.OnSubStart7619701,
        ["7619702"] = self.OnSubStart7619702,
        ["7619703"] = self.OnSubStart7619703,
        ["7619705"] = self.OnSubStart7619705,
        ["7619704"] = self.OnSubStart7619704
    }
end

function Quest76197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619701"] = self.OnSubFinish7619701,
        ["7619702"] = self.OnSubFinish7619702,
        ["7619703"] = self.OnSubFinish7619703,
        ["7619705"] = self.OnSubFinish7619705,
        ["7619704"] = self.OnSubFinish7619704
    }
end

function Quest76197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7619705"] = self.OnSubFailed7619705}
end

function Quest76197:Start()
    print("Start")
end

function Quest76197:OnDestroy()
    print("OnDestroy")
end

function Quest76197:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76197:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76197:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76197:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76197:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76197:OnSubStart7619701(arg1)
    print("OnSubStart7619701")
end

function Quest76197:OnSubFinish7619701(arg1)
    print("OnSubFinish7619701")
end

function Quest76197:OnSubStart7619702(arg1)
    print("OnSubStart7619702")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76197:OnSubFinish7619702(arg1)
    print("OnSubFinish7619702")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76197:OnSubStart7619703(arg1)
    print("OnSubStart7619703")
    this:DeployStoryByQuest(147619701)
end

function Quest76197:OnSubFinish7619703(arg1)
    print("OnSubFinish7619703")
end

function Quest76197:OnSubStart7619705(arg1)
    print("OnSubStart7619705")
end

function Quest76197:OnSubFinish7619705(arg1)
    print("OnSubFinish7619705")
end

function Quest76197:OnSubFailed7619705(arg1)
    print("OnSubFailed7619705")
    this:RecycleAllRes()
end

function Quest76197:OnSubStart7619704(arg1)
    print("OnSubStart7619704")
    this:DeployStoryByQuest(147619701)
end

function Quest76197:OnSubFinish7619704(arg1)
    print("OnSubFinish7619704")
    this:CallDelayByQuest("7619704Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76197
