require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74146 = class("Quest74146", QuestActorProxy)
Quest74146.defaultAlias = "Quest74146"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74146:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74146:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7414601"] = self.OnSubStart7414601}
end

function Quest74146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7414601"] = self.OnSubFinish7414601}
end

function Quest74146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74146:Start()
    print("Start")
end

function Quest74146:OnDestroy()
    print("OnDestroy")
end

function Quest74146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74146:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74146:OnSubStart7414601(arg1)
    print("OnSubStart7414601")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21048Data.alias, 74146):SitOnChair(0, true)
end

function Quest74146:OnSubFinish7414601(arg1)
    print("OnSubFinish7414601")
    this:SafeDestroyQuestNpc(npcs.Npc21048Data.alias, 1080)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 1080)
    this:SafeDestroyQuestNpc(npcs.Npc5303Data.alias, 1080)
end

return Quest74146
