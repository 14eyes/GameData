require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79080 = class("Quest79080", QuestActorProxy)
Quest79080.defaultAlias = "Quest79080"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79080:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7908001"] = self.OnSubStart7908001,
        ["7908002"] = self.OnSubStart7908002,
        ["7908003"] = self.OnSubStart7908003,
        ["7908004"] = self.OnSubStart7908004,
        ["7908005"] = self.OnSubStart7908005,
        ["7908006"] = self.OnSubStart7908006,
        ["7908007"] = self.OnSubStart7908007
    }
end

function Quest79080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7908001"] = self.OnSubFinish7908001,
        ["7908002"] = self.OnSubFinish7908002,
        ["7908003"] = self.OnSubFinish7908003,
        ["7908004"] = self.OnSubFinish7908004,
        ["7908005"] = self.OnSubFinish7908005,
        ["7908006"] = self.OnSubFinish7908006,
        ["7908007"] = self.OnSubFinish7908007
    }
end

function Quest79080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79080:Start()
    print("Start")
end

function Quest79080:OnDestroy()
    print("OnDestroy")
end

function Quest79080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79080:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79080:OnSubStart7908001(arg1)
    print("OnSubStart7908001")
    this:CreateQuestNpc(arg1, npcs.Npc21596Data.id, 0, false, 0)
end

function Quest79080:OnSubFinish7908001(arg1)
    print("OnSubFinish7908001")
    this:SafeDestroyQuestNpc(npcs.Npc21596Data.alias, 100)
end

function Quest79080:OnSubStart7908002(arg1)
    print("OnSubStart7908002")
    this:CreateQuestNpc(arg1, npcs.Npc21597Data.id, 0, false, 0)
end

function Quest79080:OnSubFinish7908002(arg1)
    print("OnSubFinish7908002")
    this:SafeDestroyQuestNpc(npcs.Npc21597Data.alias, 100)
end

function Quest79080:OnSubStart7908003(arg1)
    print("OnSubStart7908003")
    this:CreateQuestNpc(arg1, npcs.Npc21598Data.id, 0, false, 0)
end

function Quest79080:OnSubFinish7908003(arg1)
    print("OnSubFinish7908003")
    this:SafeDestroyQuestNpc(npcs.Npc21598Data.alias, 100)
end

function Quest79080:OnSubStart7908004(arg1)
    print("OnSubStart7908004")
    this:CreateQuestNpc(arg1, npcs.Npc21599Data.id, 0, false, 0)
end

function Quest79080:OnSubFinish7908004(arg1)
    print("OnSubFinish7908004")
    this:SafeDestroyQuestNpc(npcs.Npc21599Data.alias, 100)
end

function Quest79080:OnSubStart7908005(arg1)
    print("OnSubStart7908005")
    this:CreateQuestNpc(arg1, npcs.Npc21600Data.id, 0, false, 0)
end

function Quest79080:OnSubFinish7908005(arg1)
    print("OnSubFinish7908005")
    this:SafeDestroyQuestNpc(npcs.Npc21600Data.alias, 100)
end

function Quest79080:OnSubStart7908006(arg1)
    print("OnSubStart7908006")
    this:CreateQuestNpc(arg1, npcs.Npc21601Data.id, 0, false, 0)
end

function Quest79080:OnSubFinish7908006(arg1)
    print("OnSubFinish7908006")
    this:SafeDestroyQuestNpc(npcs.Npc21601Data.alias, 100)
end

function Quest79080:OnSubStart7908007(arg1)
    print("OnSubStart7908007")
end

function Quest79080:OnSubFinish7908007(arg1)
    print("OnSubFinish7908007")
end

return Quest79080
