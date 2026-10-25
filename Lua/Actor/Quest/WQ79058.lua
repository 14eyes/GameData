require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79058 = class("Quest79058", QuestActorProxy)
Quest79058.defaultAlias = "Quest79058"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79058:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79058:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7905801"] = self.OnSubStart7905801,
        ["7905803"] = self.OnSubStart7905803,
        ["7905804"] = self.OnSubStart7905804,
        ["7905805"] = self.OnSubStart7905805,
        ["7905806"] = self.OnSubStart7905806,
        ["7905802"] = self.OnSubStart7905802
    }
end

function Quest79058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7905801"] = self.OnSubFinish7905801,
        ["7905803"] = self.OnSubFinish7905803,
        ["7905804"] = self.OnSubFinish7905804,
        ["7905805"] = self.OnSubFinish7905805,
        ["7905806"] = self.OnSubFinish7905806,
        ["7905802"] = self.OnSubFinish7905802
    }
end

function Quest79058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79058:Start()
    print("Start")
end

function Quest79058:OnDestroy()
    print("OnDestroy")
end

function Quest79058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79058:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79058:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79058:OnSubStart7905801(arg1)
    print("OnSubStart7905801")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21108Data.id, 0)
end

function Quest79058:OnSubFinish7905801(arg1)
    print("OnSubFinish7905801")
end

function Quest79058:OnSubStart7905803(arg1)
    print("OnSubStart7905803")
end

function Quest79058:OnSubFinish7905803(arg1)
    print("OnSubFinish7905803")
end

function Quest79058:OnSubStart7905804(arg1)
    print("OnSubStart7905804")
end

function Quest79058:OnSubFinish7905804(arg1)
    print("OnSubFinish7905804")
end

function Quest79058:OnSubStart7905805(arg1)
    print("OnSubStart7905805")
    actorUtils.FinishQuestID(false, 7905805)
end

function Quest79058:OnSubFinish7905805(arg1)
    print("OnSubFinish7905805")
end

function Quest79058:OnSubStart7905806(arg1)
    print("OnSubStart7905806")
end

function Quest79058:OnSubFinish7905806(arg1)
    print("OnSubFinish7905806")
end

function Quest79058:OnSubStart7905802(arg1)
    print("OnSubStart7905802")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21109Data.id, 0)
end

function Quest79058:OnSubFinish7905802(arg1)
    print("OnSubFinish7905802")
    this:DestroyQuestNpcActor(npcs.Npc21108Data.alias, 10)
    this:DestroyQuestNpcActor(npcs.Npc21109Data.alias, 10)
end

return Quest79058
