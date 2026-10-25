require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77199 = class("Quest77199", QuestActorProxy)
Quest77199.defaultAlias = "Quest77199"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77199:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77199:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7719901"] = self.OnSubStart7719901,
        ["7719902"] = self.OnSubStart7719902,
        ["7719903"] = self.OnSubStart7719903,
        ["7719904"] = self.OnSubStart7719904
    }
end

function Quest77199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7719901"] = self.OnSubFinish7719901,
        ["7719902"] = self.OnSubFinish7719902,
        ["7719903"] = self.OnSubFinish7719903,
        ["7719904"] = self.OnSubFinish7719904
    }
end

function Quest77199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77199:Start()
    print("Start")
end

function Quest77199:OnDestroy()
    print("OnDestroy")
end

function Quest77199:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77199:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77199:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77199:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77199:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77199:OnSubStart7719901(arg1)
    print("OnSubStart7719901")
    actorUtils.FinishQuestWithParam({false}, {7719901})
end

function Quest77199:OnSubFinish7719901(arg1)
    print("OnSubFinish7719901")
end

function Quest77199:OnSubStart7719902(arg1)
    print("OnSubStart7719902")
end

function Quest77199:OnSubFinish7719902(arg1)
    print("OnSubFinish7719902")
end

function Quest77199:OnSubStart7719903(arg1)
    print("OnSubStart7719903")
    this:CreateQuestNpc(arg1, npcs.Npc22673.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22673.alias, 77199):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest77199:OnSubFinish7719903(arg1)
    print("OnSubFinish7719903")
    this:NpcDestroyImmediately(3, npcs.Npc22673.alias)
end

function Quest77199:OnSubStart7719904(arg1)
    print("OnSubStart7719904")
end

function Quest77199:OnSubFinish7719904(arg1)
    print("OnSubFinish7719904")
end

return Quest77199
