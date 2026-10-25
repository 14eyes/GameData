require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70049 = class("Quest70049", QuestActorProxy)
Quest70049.defaultAlias = "Quest70049"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70049:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70049:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7004901"] = self.OnSubStart7004901,
        ["7004902"] = self.OnSubStart7004902,
        ["7004903"] = self.OnSubStart7004903,
        ["7004904"] = self.OnSubStart7004904,
        ["7004905"] = self.OnSubStart7004905
    }
end

function Quest70049:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7004901"] = self.OnSubFinish7004901,
        ["7004902"] = self.OnSubFinish7004902,
        ["7004903"] = self.OnSubFinish7004903,
        ["7004904"] = self.OnSubFinish7004904,
        ["7004905"] = self.OnSubFinish7004905
    }
end

function Quest70049:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70049:OnSubStart7004901(arg1)
    print("OnSubStart7004901")
    this:CreateQuestNpc(arg1, npcs.Npc1019.id, 0, false, 0)
end

function Quest70049:OnSubFinish7004901(arg1)
    print("OnSubFinish7004901")
    this:SafeDestroyQuestNpc(npcs.Npc1019.alias, 36046)
end

function Quest70049:OnSubStart7004902(arg1)
    print("OnSubStart7004902")
    this:CreateQuestNpc(arg1, npcs.Xiangling.id, 0, false, 0)
end

function Quest70049:OnSubFinish7004902(arg1)
    print("OnSubFinish7004902")
    this:SafeDestroyQuestNpc(npcs.Xiangling.alias, 36047)
end

function Quest70049:OnSubStart7004903(arg1)
    print("OnSubStart7004903")
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0, false, 0)
end

function Quest70049:OnSubFinish7004903(arg1)
    print("OnSubFinish7004903")
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
end

function Quest70049:OnSubStart7004904(arg1)
    print("OnSubStart7004904")
    this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0, false, 0)
end

function Quest70049:OnSubFinish7004904(arg1)
    print("OnSubFinish7004904")
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 36049)
end

function Quest70049:OnSubStart7004905(arg1)
    print("OnSubStart7004905")
    this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
end

function Quest70049:OnSubFinish7004905(arg1)
    print("OnSubFinish7004905")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 36050)
end

return Quest70049
