require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74673 = class("Quest74673", QuestActorProxy)
Quest74673.defaultAlias = "Quest74673"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74673:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74673:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7467301"] = self.OnSubStart7467301}
end

function Quest74673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7467301"] = self.OnSubFinish7467301}
end

function Quest74673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74673:Start()
    print("Start")
end

function Quest74673:OnDestroy()
    print("OnDestroy")
end

function Quest74673:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74673:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74673:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30456Data.alias, 3)
end

function Quest74673:OnSubStart7467301(arg1)
    print("OnSubStart7467301")
    this:CreateQuestNpc(arg1, npcs.Npc30456Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc30456Data.alias)
    questNpcActor:DoFreeStyle(1110, true, nil, true, true, false, false)
    this:CreateLocalGadget(70331037, "74673", {x = 3589.66, y = 441.124, z = 4862.33}, {x = 0.0, y = 120.0, z = 0.0}, 3, nil, nil, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74673:OnSubFinish7467301(arg1)
    print("OnSubFinish7467301")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1633)
    end)

    this:RemoveLocalGadget(70331037, "74673")
    this:SafeDestroyQuestNpc(npcs.Npc30456Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc30456Data.alias):DisableInteeHeadCtrl(false)
end

return Quest74673
