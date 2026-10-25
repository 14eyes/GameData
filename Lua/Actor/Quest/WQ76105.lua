require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76105 = class("Quest76105", QuestActorProxy)
Quest76105.defaultAlias = "Quest76105"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76105:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7610501"] = self.OnSubStart7610501,
        ["7610504"] = self.OnSubStart7610504,
        ["7610505"] = self.OnSubStart7610505,
        ["7610503"] = self.OnSubStart7610503,
        ["7610502"] = self.OnSubStart7610502
    }
end

function Quest76105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7610501"] = self.OnSubFinish7610501,
        ["7610504"] = self.OnSubFinish7610504,
        ["7610505"] = self.OnSubFinish7610505,
        ["7610503"] = self.OnSubFinish7610503,
        ["7610502"] = self.OnSubFinish7610502
    }
end

function Quest76105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76105:Start()
    print("Start")
end

function Quest76105:OnDestroy()
    print("OnDestroy")
end

function Quest76105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76105:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76105:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76105:OnSubStart7610501(arg1)
    print("OnSubStart7610501")
    this:CreateQuestNpc(arg1, npcs.Npc22226.id, 0, false, 0)
end

function Quest76105:OnSubFinish7610501(arg1)
    print("OnSubFinish7610501")
end

function Quest76105:OnSubStart7610504(arg1)
    print("OnSubStart7610504")
    this:CreateQuestNpc(arg1, npcs.Npc22226.id, 0, false, 0)
end

function Quest76105:OnSubFinish7610504(arg1)
    print("OnSubFinish7610504")
end

function Quest76105:OnSubStart7610505(arg1)
    print("OnSubStart7610505")
    this:CreateQuestNpc(arg1, npcs.Npc22226.id, 0, false, 0)
    actorUtils.FinishQuestID(false, 7610505)
end

function Quest76105:OnSubFinish7610505(arg1)
    print("OnSubFinish7610505")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22226.alias)
end

function Quest76105:OnSubStart7610503(arg1)
    print("OnSubStart7610503")
    this:CreateQuestNpc(arg1, npcs.Npc22226.id, 0, false, 0)
end

function Quest76105:OnSubFinish7610503(arg1)
    print("OnSubFinish7610503")
end

function Quest76105:OnSubStart7610502(arg1)
    print("OnSubStart7610502")
end

function Quest76105:OnSubFinish7610502(arg1)
    print("OnSubFinish7610502")
end

return Quest76105
