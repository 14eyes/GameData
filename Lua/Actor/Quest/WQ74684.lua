require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74684 = class("Quest74684", QuestActorProxy)
Quest74684.defaultAlias = "Quest74684"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74684:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74684:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7468403"] = self.OnSubStart7468403,
        ["7468402"] = self.OnSubStart7468402,
        ["7468401"] = self.OnSubStart7468401
    }
end

function Quest74684:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7468403"] = self.OnSubFinish7468403,
        ["7468402"] = self.OnSubFinish7468402,
        ["7468401"] = self.OnSubFinish7468401
    }
end

function Quest74684:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74684:Start()
    print("Start")
end

function Quest74684:OnDestroy()
    print("OnDestroy")
end

function Quest74684:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74684:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74684:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30551Data.alias, 3)
    this:LightNotifyTo(npcs.Npc30551Data.alias, 0, true)
end

function Quest74684:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74684:OnSubStart7468403(arg1)
    print("OnSubStart7468403")
    if sceneData.currSceneID == 48013 then
        actorUtils.FinishQuestID(false, 7468403)
    else
        actorUtils.FinishQuestID(true, 7468403)
    end
end

function Quest74684:OnSubFinish7468403(arg1)
    print("OnSubFinish7468403")
end

function Quest74684:OnSubStart7468402(arg1)
    print("OnSubStart7468402")
end

function Quest74684:OnSubFinish7468402(arg1)
    print("OnSubFinish7468402")
    this:SetNavigationByMainId(74684, true)
end

function Quest74684:OnSubStart7468401(arg1)
    print("OnSubStart7468401")
    this:CreateQuestNpc(arg1, npcs.Npc30551Data.id, 0)
    this:LightNotifyTo(npcs.Npc30551Data.alias, 0, true)
end

function Quest74684:OnSubFinish7468401(arg1)
    print("OnSubFinish7468401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30551Data.alias)
end

return Quest74684
