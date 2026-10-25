require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75099 = class("Quest75099", QuestActorProxy)
Quest75099.defaultAlias = "Quest75099"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75099:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75099:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509901"] = self.OnSubStart7509901,
        ["7509902"] = self.OnSubStart7509902,
        ["7509903"] = self.OnSubStart7509903,
        ["7509904"] = self.OnSubStart7509904
    }
end

function Quest75099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509901"] = self.OnSubFinish7509901,
        ["7509902"] = self.OnSubFinish7509902,
        ["7509903"] = self.OnSubFinish7509903,
        ["7509904"] = self.OnSubFinish7509904
    }
end

function Quest75099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75099:Start()
    print("Start")
end

function Quest75099:OnDestroy()
    print("OnDestroy")
end

function Quest75099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75099:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75099:OnSubStart7509901(arg1)
    print("OnSubStart7509901")
    this:CreateQuestNpc(arg1, npcs.Npc21656Data.id, 0, false, 0)
end

function Quest75099:OnSubFinish7509901(arg1)
    print("OnSubFinish7509901")
end

function Quest75099:OnSubStart7509902(arg1)
    print("OnSubStart7509902")
    this:CreateQuestNpc(arg1, npcs.Npc21657Data.id, 0, false, 0)
end

function Quest75099:OnSubFinish7509902(arg1)
    print("OnSubFinish7509902")
end

function Quest75099:OnSubStart7509903(arg1)
    print("OnSubStart7509903")
    this:CreateQuestNpc(arg1, npcs.Npc21658Data.id, 0, false, 0)
end

function Quest75099:OnSubFinish7509903(arg1)
    print("OnSubFinish7509903")
end

function Quest75099:OnSubStart7509904(arg1)
    print("OnSubStart7509904")
    this:CreateQuestNpc(arg1, npcs.Npc21659Data.id, 0, false, 0)
end

function Quest75099:OnSubFinish7509904(arg1)
    print("OnSubFinish7509904")
end

return Quest75099
