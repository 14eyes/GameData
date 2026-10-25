require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5027 = class("Quest5027", QuestActorProxy)
Quest5027.defaultAlias = "Quest5027"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest5027:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest5027:OnSubStartHandlerBuild()
    self.subStartHandlers = {["502701"] = self.OnSubStart502701}
end

function Quest5027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["502701"] = self.OnSubFinish502701}
end

function Quest5027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5027:Start()
    print("Start")
end

function Quest5027:OnDestroy()
    print("OnDestroy")
end

function Quest5027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5027:OnSubStart502701(arg1)
    print("OnSubStart502701")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14985.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14985.alias, 5027):ChangeNpcMat("Body", 0, "ART/Char/NPC/NPC_Natlan/NPC_Natlan_Child_OverrideMaterial/NPC_Child_KidBrother02_Body100_Mat")
    end)
end

function Quest5027:OnSubFinish502701(arg1)
    print("OnSubFinish502701")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14985.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

return Quest5027
