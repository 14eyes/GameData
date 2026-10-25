require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74065 = class("Quest74065", QuestActorProxy)
Quest74065.defaultAlias = "Quest74065"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74065:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406501"] = self.OnSubStart7406501,
        ["7406502"] = self.OnSubStart7406502,
        ["7406503"] = self.OnSubStart7406503
    }
end

function Quest74065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406501"] = self.OnSubFinish7406501,
        ["7406502"] = self.OnSubFinish7406502,
        ["7406503"] = self.OnSubFinish7406503
    }
end

function Quest74065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74065:Start()
    print("Start")
end

function Quest74065:OnDestroy()
    print("OnDestroy")
end

function Quest74065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74065:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74065:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74065:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74065:OnSubStart7406501(arg1)
    print("OnSubStart7406501")
    this:CreateQuestNpc(arg1, npcs.Npc21095Data.id, 0)
end

function Quest74065:OnSubFinish7406501(arg1)
    print("OnSubFinish7406501")
    this:SafeDestroyQuestNpc(npcs.Npc21095Data.alias, 3)
    self:SetNavigationByMainId(74065, true)
end

function Quest74065:OnSubStart7406502(arg1)
    print("OnSubStart7406502")
end

function Quest74065:OnSubFinish7406502(arg1)
    print("OnSubFinish7406502")
end

function Quest74065:OnSubStart7406503(arg1)
    print("OnSubStart7406503")
    this:CreateQuestNpc(arg1, npcs.Npc21107Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5218Data.alias, 1, true)
end

function Quest74065:OnSubFinish7406503(arg1)
    print("OnSubFinish7406503")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21107Data.alias)
end

return Quest74065
