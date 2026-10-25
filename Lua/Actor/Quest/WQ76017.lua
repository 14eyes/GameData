require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76017 = class("Quest76017", QuestActorProxy)
Quest76017.defaultAlias = "Quest76017"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7601702"] = self.OnSubStart7601702,
        ["7601708"] = self.OnSubStart7601708,
        ["7601701"] = self.OnSubStart7601701,
        ["7601706"] = self.OnSubStart7601706,
        ["7601703"] = self.OnSubStart7601703,
        ["7601704"] = self.OnSubStart7601704,
        ["7601705"] = self.OnSubStart7601705,
        ["7601707"] = self.OnSubStart7601707
    }
end

function Quest76017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7601702"] = self.OnSubFinish7601702,
        ["7601708"] = self.OnSubFinish7601708,
        ["7601701"] = self.OnSubFinish7601701,
        ["7601706"] = self.OnSubFinish7601706,
        ["7601703"] = self.OnSubFinish7601703,
        ["7601704"] = self.OnSubFinish7601704,
        ["7601705"] = self.OnSubFinish7601705,
        ["7601707"] = self.OnSubFinish7601707
    }
end

function Quest76017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76017:Start()
    print("Start")
end

function Quest76017:OnDestroy()
    print("OnDestroy")
end

function Quest76017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76017:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76017:OnSubStart7601702(arg1)
    print("OnSubStart7601702")
end

function Quest76017:OnSubFinish7601702(arg1)
    print("OnSubFinish7601702")
end

function Quest76017:OnSubStart7601708(arg1)
    print("OnSubStart7601708")
end

function Quest76017:OnSubFinish7601708(arg1)
    print("OnSubFinish7601708")
end

function Quest76017:OnSubStart7601701(arg1)
    print("OnSubStart7601701")
    this:CreateQuestNpc(arg1, npcs.Npc21933.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21933.alias, 76017):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76017:OnSubFinish7601701(arg1)
    print("OnSubFinish7601701")
end

function Quest76017:OnSubStart7601706(arg1)
    print("OnSubStart7601706")
end

function Quest76017:OnSubFinish7601706(arg1)
    print("OnSubFinish7601706")
    this:SafeDestroyQuestNpc(npcs.Npc21933.alias, 3)
end

function Quest76017:OnSubStart7601703(arg1)
    print("OnSubStart7601703")
    actorUtils.FinishQuestID(false, 7601703)
end

function Quest76017:OnSubFinish7601703(arg1)
    print("OnSubFinish7601703")
end

function Quest76017:OnSubStart7601704(arg1)
    print("OnSubStart7601704")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21836.alias, 76017):DoFreeStyle(4090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21934.id, 0, false, 0)
end

function Quest76017:OnSubFinish7601704(arg1)
    print("OnSubFinish7601704")
end

function Quest76017:OnSubStart7601705(arg1)
    print("OnSubStart7601705")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21836.alias, 76017):DoFreeStyle(4090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21934.id, 0, false, 0)
end

function Quest76017:OnSubFinish7601705(arg1)
    print("OnSubFinish7601705")
end

function Quest76017:OnSubStart7601707(arg1)
    print("OnSubStart7601707")
    this:CreateQuestNpc(arg1, npcs.Npc21836.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21836.alias, 76017):DoFreeStyle(4090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21934.id, 0, false, 0)
end

function Quest76017:OnSubFinish7601707(arg1)
    print("OnSubFinish7601707")
end

return Quest76017
