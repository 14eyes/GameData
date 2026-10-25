require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73040 = class("Quest73040", QuestActorProxy)
Quest73040.defaultAlias = "Quest73040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7304001"] = self.OnSubStart7304001,
        ["7304002"] = self.OnSubStart7304002,
        ["7304006"] = self.OnSubStart7304006,
        ["7304003"] = self.OnSubStart7304003,
        ["7304007"] = self.OnSubStart7304007,
        ["7304004"] = self.OnSubStart7304004,
        ["7304008"] = self.OnSubStart7304008,
        ["7304005"] = self.OnSubStart7304005
    }
end

function Quest73040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7304001"] = self.OnSubFinish7304001,
        ["7304002"] = self.OnSubFinish7304002,
        ["7304006"] = self.OnSubFinish7304006,
        ["7304003"] = self.OnSubFinish7304003,
        ["7304007"] = self.OnSubFinish7304007,
        ["7304004"] = self.OnSubFinish7304004,
        ["7304008"] = self.OnSubFinish7304008,
        ["7304005"] = self.OnSubFinish7304005
    }
end

function Quest73040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73040:Start()
    print("Start")
end

function Quest73040:OnDestroy()
    print("OnDestroy")
end

function Quest73040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73040:OnSubStart7304001(arg1)
    print("OnSubStart7304001")
    self:CreateQuestNpc(arg1, npcs.Npc20777Data.id, 1)
end

function Quest73040:OnSubFinish7304001(arg1)
    print("OnSubFinish7304001")
end

function Quest73040:OnSubStart7304002(arg1)
    print("OnSubStart7304002")
end

function Quest73040:OnSubFinish7304002(arg1)
    print("OnSubFinish7304002")
end

function Quest73040:OnSubStart7304006(arg1)
    print("OnSubStart7304006")
    self:RequestInteraction(npcs.Npc20777Data.alias)
end

function Quest73040:OnSubFinish7304006(arg1)
    print("OnSubFinish7304006")
end

function Quest73040:OnSubStart7304003(arg1)
    print("OnSubStart7304003")
end

function Quest73040:OnSubFinish7304003(arg1)
    print("OnSubFinish7304003")
end

function Quest73040:OnSubStart7304007(arg1)
    print("OnSubStart7304007")
    self:RequestInteraction(npcs.Npc20777Data.alias)
end

function Quest73040:OnSubFinish7304007(arg1)
    print("OnSubFinish7304007")
end

function Quest73040:OnSubStart7304004(arg1)
    print("OnSubStart7304004")
end

function Quest73040:OnSubFinish7304004(arg1)
    print("OnSubFinish7304004")
end

function Quest73040:OnSubStart7304008(arg1)
    print("OnSubStart7304008")
    self:RequestInteraction(npcs.Npc20777Data.alias)
end

function Quest73040:OnSubFinish7304008(arg1)
    print("OnSubFinish7304008")
end

function Quest73040:OnSubStart7304005(arg1)
    print("OnSubStart7304005")
    self:RequestInteraction(npcs.Npc20777Data.alias)
end

function Quest73040:OnSubFinish7304005(arg1)
    print("OnSubFinish7304005")
end

return Quest73040
