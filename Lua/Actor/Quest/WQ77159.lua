require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77159 = class("Quest77159", QuestActorProxy)
Quest77159.defaultAlias = "Quest77159"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77159:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77159:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715901"] = self.OnSubStart7715901,
        ["7715902"] = self.OnSubStart7715902,
        ["7715903"] = self.OnSubStart7715903,
        ["7715904"] = self.OnSubStart7715904,
        ["7715905"] = self.OnSubStart7715905
    }
end

function Quest77159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715901"] = self.OnSubFinish7715901,
        ["7715902"] = self.OnSubFinish7715902,
        ["7715903"] = self.OnSubFinish7715903,
        ["7715904"] = self.OnSubFinish7715904,
        ["7715905"] = self.OnSubFinish7715905
    }
end

function Quest77159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7715901"] = self.OnSubFailed7715901}
end

function Quest77159:Start()
    print("Start")
end

function Quest77159:OnDestroy()
    print("OnDestroy")
end

function Quest77159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77159:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7715901N22416Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc22416.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22417.alias, 3)
    this:RecycleAllRes()
end

function Quest77159:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77159:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77159:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest77159:OnSubStart7715901(arg1)
    print("OnSubStart7715901")
    this:NpcCreateWithNpcTrigger(npcs.Npc22416.id, 0, 10, 7715901)
    this:CreateQuestNpc(arg1, npcs.Npc22417.id, 0, false, 0)
end

function Quest77159:OnSubFinish7715901(arg1)
    print("OnSubFinish7715901")
end

function Quest77159:OnSubFailed7715901(arg1)
    print("OnSubFailed7715901")
    this:RecycleAllRes()
end

function Quest77159:OnSubStart7715902(arg1)
    print("OnSubStart7715902")
    this:CreateQuestNpc(arg1, npcs.Npc22416.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22417.id, 0, false, 0)
end

function Quest77159:OnSubFinish7715902(arg1)
    print("OnSubFinish7715902")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22416.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22417.alias)
end

function Quest77159:OnSubStart7715903(arg1)
    print("OnSubStart7715903")
    this:CreateQuestNpc(arg1, npcs.Npc22416.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22417.id, 0, false, 0)
end

function Quest77159:OnSubFinish7715903(arg1)
    print("OnSubFinish7715903")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22416.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22417.alias)
end

function Quest77159:OnSubStart7715904(arg1)
    print("OnSubStart7715904")
end

function Quest77159:OnSubFinish7715904(arg1)
    print("OnSubFinish7715904")
end

function Quest77159:OnSubStart7715905(arg1)
    print("OnSubStart7715905")
end

function Quest77159:OnSubFinish7715905(arg1)
    print("OnSubFinish7715905")
end

return Quest77159
