require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74682 = class("Quest74682", QuestActorProxy)
Quest74682.defaultAlias = "Quest74682"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74682:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74682:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7468203"] = self.OnSubStart7468203,
        ["7468202"] = self.OnSubStart7468202,
        ["7468201"] = self.OnSubStart7468201
    }
end

function Quest74682:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7468203"] = self.OnSubFinish7468203,
        ["7468202"] = self.OnSubFinish7468202,
        ["7468201"] = self.OnSubFinish7468201
    }
end

function Quest74682:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74682:Start()
    print("Start")
end

function Quest74682:OnDestroy()
    print("OnDestroy")
end

function Quest74682:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74682:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74682:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30551Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30551Data.alias, 0, true)
end

function Quest74682:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74682:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest74682:OnSubStart7468203(arg1)
    print("OnSubStart7468203")
    if sceneData.currSceneID == 48012 then
        actorUtils.FinishQuestID(false, 7468203)
    else
        actorUtils.FinishQuestID(true, 7468203)
    end
end

function Quest74682:OnSubFinish7468203(arg1)
    print("OnSubFinish7468203")
end

function Quest74682:OnSubStart7468202(arg1)
    print("OnSubStart7468202")
end

function Quest74682:OnSubFinish7468202(arg1)
    print("OnSubFinish7468202")
    this:SetNavigationByMainId(74682, true)
end

function Quest74682:OnSubStart7468201(arg1)
    print("OnSubStart7468201")
    this:CreateQuestNpc(arg1, npcs.Npc30551Data.id, 0)
    this:LightNotifyTo(npcs.Npc30551Data.alias, 0, true)
end

function Quest74682:OnSubFinish7468201(arg1)
    print("OnSubFinish7468201")
    if this:GetQuestVar(7468201, 0) == 1 then
        this:ActionSafeCall(function(arg1)
            this:AfterMainPageActiveSafeCall(function(arg1)
                actorUtils.ShowContext("EffigyChallengeV5MainPage", 4)
            end)
        end)
    end

    this:NpcDestroyWithBlackscreen(3, npcs.Npc30551Data.alias)
end

return Quest74682
