require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71667 = class("Quest71667", QuestActorProxy)
Quest71667.defaultAlias = "Quest71667"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71667:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71667:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7166703"] = self.OnSubStart7166703,
        ["7166702"] = self.OnSubStart7166702,
        ["7166701"] = self.OnSubStart7166701
    }
end

function Quest71667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7166703"] = self.OnSubFinish7166703,
        ["7166702"] = self.OnSubFinish7166702,
        ["7166701"] = self.OnSubFinish7166701
    }
end

function Quest71667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71667:Start()
    print("Start")
end

function Quest71667:OnDestroy()
    print("OnDestroy")
end

function Quest71667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71667:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30547Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30547Data.alias, 0, true)
end

function Quest71667:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71667:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest71667:OnSubStart7166703(arg1)
    print("OnSubStart7166703")
    if sceneData.currSceneID == 48010 then
        actorUtils.FinishQuestID(false, 7166703)
    else
        actorUtils.FinishQuestID(true, 7166703)
    end
end

function Quest71667:OnSubFinish7166703(arg1)
    print("OnSubFinish7166703")
end

function Quest71667:OnSubStart7166702(arg1)
    print("OnSubStart7166702")
end

function Quest71667:OnSubFinish7166702(arg1)
    print("OnSubFinish7166702")
    this:SetNavigationByMainId(71667, true)
end

function Quest71667:OnSubStart7166701(arg1)
    print("OnSubStart7166701")
    this:CreateQuestNpc(arg1, npcs.Npc30547Data.id, 0)
    this:LightNotifyTo(npcs.Npc30547Data.alias, 0, true)
end

function Quest71667:OnSubFinish7166701(arg1)
    print("OnSubFinish7166701")
    if this:GetQuestVar(7166701, 0) == 1 then
        this:ActionSafeCall(function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                actorUtils.ShowContext("EffigyChallengeV5MainPage", 2)
            end)
        end)
    end

    this:NpcDestroyWithBlackscreen(3, npcs.Npc30547Data.alias)
end

return Quest71667
