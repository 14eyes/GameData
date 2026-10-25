require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73704 = class("Quest73704", QuestActorProxy)
Quest73704.defaultAlias = "Quest73704"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73704:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73704:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7370403"] = self.OnSubStart7370403,
        ["7370402"] = self.OnSubStart7370402,
        ["7370401"] = self.OnSubStart7370401
    }
end

function Quest73704:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7370403"] = self.OnSubFinish7370403,
        ["7370402"] = self.OnSubFinish7370402,
        ["7370401"] = self.OnSubFinish7370401
    }
end

function Quest73704:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73704:Start()
    print("Start")
end

function Quest73704:OnDestroy()
    print("OnDestroy")
end

function Quest73704:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73704:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73704:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30549Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30549Data.alias, 0, true)
end

function Quest73704:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73704:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest73704:OnSubStart7370403(arg1)
    print("OnSubStart7370403")
    if sceneData.currSceneID == 48011 then
        actorUtils.FinishQuestID(false, 7370403)
    else
        actorUtils.FinishQuestID(true, 7370403)
    end
end

function Quest73704:OnSubFinish7370403(arg1)
    print("OnSubFinish7370403")
end

function Quest73704:OnSubStart7370402(arg1)
    print("OnSubStart7370402")
end

function Quest73704:OnSubFinish7370402(arg1)
    print("OnSubFinish7370402")
    this:SetNavigationByMainId(73704, true)
end

function Quest73704:OnSubStart7370401(arg1)
    print("OnSubStart7370401")
    this:CreateQuestNpc(arg1, npcs.Npc30549Data.id, 0)
    this:LightNotifyTo(npcs.Npc30549Data.alias, 0, true)
end

function Quest73704:OnSubFinish7370401(arg1)
    print("OnSubFinish7370401")
    if this:GetQuestVar(7370401, 0) == 1 then
        this:ActionSafeCall(function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                actorUtils.ShowContext("EffigyChallengeV5MainPage", 3)
            end)
        end)
    end

    this:NpcDestroyWithBlackscreen(3, npcs.Npc30549Data.alias)
end

return Quest73704
