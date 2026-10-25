require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4013 = class("Quest4013", QuestActorProxy)
Quest4013.defaultAlias = "Quest4013"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest4013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest4013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401301"] = self.OnSubStart401301,
        ["401302"] = self.OnSubStart401302,
        ["401303"] = self.OnSubStart401303,
        ["401304"] = self.OnSubStart401304,
        ["401305"] = self.OnSubStart401305,
        ["401306"] = self.OnSubStart401306,
        ["401307"] = self.OnSubStart401307,
        ["401308"] = self.OnSubStart401308,
        ["401309"] = self.OnSubStart401309,
        ["401310"] = self.OnSubStart401310,
        ["401311"] = self.OnSubStart401311,
        ["401312"] = self.OnSubStart401312,
        ["401313"] = self.OnSubStart401313,
        ["401314"] = self.OnSubStart401314,
        ["401315"] = self.OnSubStart401315,
        ["401316"] = self.OnSubStart401316,
        ["401317"] = self.OnSubStart401317,
        ["401318"] = self.OnSubStart401318
    }
end

function Quest4013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401301"] = self.OnSubFinish401301,
        ["401302"] = self.OnSubFinish401302,
        ["401303"] = self.OnSubFinish401303,
        ["401304"] = self.OnSubFinish401304,
        ["401305"] = self.OnSubFinish401305,
        ["401306"] = self.OnSubFinish401306,
        ["401307"] = self.OnSubFinish401307,
        ["401308"] = self.OnSubFinish401308,
        ["401309"] = self.OnSubFinish401309,
        ["401310"] = self.OnSubFinish401310,
        ["401311"] = self.OnSubFinish401311,
        ["401312"] = self.OnSubFinish401312,
        ["401313"] = self.OnSubFinish401313,
        ["401314"] = self.OnSubFinish401314,
        ["401315"] = self.OnSubFinish401315,
        ["401316"] = self.OnSubFinish401316,
        ["401317"] = self.OnSubFinish401317,
        ["401318"] = self.OnSubFinish401318
    }
end

function Quest4013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4013:Start()
    print("Start")
end

function Quest4013:OnDestroy()
    print("OnDestroy")
end

function Quest4013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4013:OnSubStart401301(arg1)
    print("OnSubStart401301")
    this:CreateQuestNpc(arg1, npcs.Npc13512Data.id, 0)
end

function Quest4013:OnSubFinish401301(arg1)
    print("OnSubFinish401301")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc13512Data.alias, 3)
end

function Quest4013:OnSubStart401302(arg1)
    print("OnSubStart401302")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
end

function Quest4013:OnSubFinish401302(arg1)
    print("OnSubFinish401302")
end

function Quest4013:OnSubStart401303(arg1)
    print("OnSubStart401303")
end

function Quest4013:OnSubFinish401303(arg1)
    print("OnSubFinish401303")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
end

function Quest4013:OnSubStart401304(arg1)
    print("OnSubStart401304")
    this:CreateQuestNpc(arg1, npcs.Npc13516Data.id, 0)
end

function Quest4013:OnSubFinish401304(arg1)
    print("OnSubFinish401304")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc13516Data.alias, 3)
end

function Quest4013:OnSubStart401305(arg1)
    print("OnSubStart401305")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
end

function Quest4013:OnSubFinish401305(arg1)
    print("OnSubFinish401305")
end

function Quest4013:OnSubStart401306(arg1)
    print("OnSubStart401306")
end

function Quest4013:OnSubFinish401306(arg1)
    print("OnSubFinish401306")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
end

function Quest4013:OnSubStart401307(arg1)
    print("OnSubStart401307")
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
end

function Quest4013:OnSubFinish401307(arg1)
    print("OnSubFinish401307")
    this:SafeDestroyQuestNpc(npcs.Npc13517Data.alias, 3)
end

function Quest4013:OnSubStart401308(arg1)
    print("OnSubStart401308")
    this:CreateQuestNpc(arg1, npcs.Npc13512Data.id, 0)
end

function Quest4013:OnSubFinish401308(arg1)
    print("OnSubFinish401308")
    this:SafeDestroyQuestNpc(npcs.Npc13512Data.alias, 3)
end

function Quest4013:OnSubStart401309(arg1)
    print("OnSubStart401309")
    this:CreateQuestNpc(arg1, npcs.Npc13514Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13516Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13551Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13462Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13546Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
end

function Quest4013:OnSubFinish401309(arg1)
    print("OnSubFinish401309")
    this:SafeDestroyQuestNpc(npcs.Npc13516Data.alias, 3)
end

function Quest4013:OnSubStart401310(arg1)
    print("OnSubStart401310")
    this:CreateQuestNpc(arg1, npcs.Npc13516Data.id, 0)
end

function Quest4013:OnSubFinish401310(arg1)
    print("OnSubFinish401310")
    this:SafeDestroyQuestNpc(npcs.Npc13516Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13551Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13462Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13546Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

function Quest4013:OnSubStart401311(arg1)
    print("OnSubStart401311")
    this:CreateQuestNpc(arg1, npcs.Npc13514Data.id, 0)
end

function Quest4013:OnSubFinish401311(arg1)
    print("OnSubFinish401311")
end

function Quest4013:OnSubStart401312(arg1)
    print("OnSubStart401312")
end

function Quest4013:OnSubFinish401312(arg1)
    print("OnSubFinish401312")
    this:SafeDestroyQuestNpc(npcs.Npc13514Data.alias, 3)
end

function Quest4013:OnSubStart401313(arg1)
    print("OnSubStart401313")
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
end

function Quest4013:OnSubFinish401313(arg1)
    print("OnSubFinish401313")
    this:SafeDestroyQuestNpc(npcs.Npc13517Data.alias, 3)
end

function Quest4013:OnSubStart401314(arg1)
    print("OnSubStart401314")
    this:CreateQuestNpc(arg1, npcs.Npc13512Data.id, 0)
end

function Quest4013:OnSubFinish401314(arg1)
    print("OnSubFinish401314")
end

function Quest4013:OnSubStart401315(arg1)
    print("OnSubStart401315")
    this:RequestInteraction(npcs.Npc13512Data.alias)
end

function Quest4013:OnSubFinish401315(arg1)
    print("OnSubFinish401315")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc13512Data.alias, 3)
end

function Quest4013:OnSubStart401316(arg1)
    print("OnSubStart401316")
    this:CreateQuestNpc(arg1, npcs.Npc13516Data.id, 0)
end

function Quest4013:OnSubFinish401316(arg1)
    print("OnSubFinish401316")
end

function Quest4013:OnSubStart401317(arg1)
    print("OnSubStart401317")
    this:RequestInteraction(npcs.Npc13516Data.alias)
end

function Quest4013:OnSubFinish401317(arg1)
    print("OnSubFinish401317")
    this:SafeDestroyQuestNpc(npcs.Npc13516Data.alias, 3)
end

function Quest4013:OnSubStart401318(arg1)
    print("OnSubStart401318")
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
    this:TransmitPlayerById(arg1, 1)
end

function Quest4013:OnSubFinish401318(arg1)
    print("OnSubFinish401318")
    this:SafeDestroyQuestNpc(npcs.Npc13517Data.alias, 3)
end

return Quest4013
