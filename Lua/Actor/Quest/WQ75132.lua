require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75132 = class("Quest75132", QuestActorProxy)
Quest75132.defaultAlias = "Quest75132"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75132:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513207"] = self.OnSubStart7513207,
        ["7513201"] = self.OnSubStart7513201,
        ["7513202"] = self.OnSubStart7513202,
        ["7513204"] = self.OnSubStart7513204,
        ["7513203"] = self.OnSubStart7513203,
        ["7513205"] = self.OnSubStart7513205,
        ["7513206"] = self.OnSubStart7513206
    }
end

function Quest75132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513207"] = self.OnSubFinish7513207,
        ["7513201"] = self.OnSubFinish7513201,
        ["7513202"] = self.OnSubFinish7513202,
        ["7513204"] = self.OnSubFinish7513204,
        ["7513203"] = self.OnSubFinish7513203,
        ["7513205"] = self.OnSubFinish7513205,
        ["7513206"] = self.OnSubFinish7513206
    }
end

function Quest75132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75132:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75132:OnSubStart7513207(arg1)
    print("OnSubStart7513207")
end

function Quest75132:OnSubFinish7513207(arg1)
    print("OnSubFinish7513207")
end

function Quest75132:OnSubStart7513201(arg1)
    print("OnSubStart7513201")
    this:NpcCreateWithNpcTrigger(npcs.Npc21755.id, 0, 35, 7513201)
end

function Quest75132:OnSubFinish7513201(arg1)
    print("OnSubFinish7513201")
end

function Quest75132:OnSubStart7513202(arg1)
    print("OnSubStart7513202")
end

function Quest75132:OnSubFinish7513202(arg1)
    print("OnSubFinish7513202")
end

function Quest75132:OnSubStart7513204(arg1)
    print("OnSubStart7513204")
end

function Quest75132:OnSubFinish7513204(arg1)
    print("OnSubFinish7513204")
end

function Quest75132:OnSubStart7513203(arg1)
    print("OnSubStart7513203")
end

function Quest75132:OnSubFinish7513203(arg1)
    print("OnSubFinish7513203")
end

function Quest75132:OnSubStart7513205(arg1)
    print("OnSubStart7513205")
    this:CreateQuestNpc(arg1, npcs.Npc21755.id, 0, false, 0)
end

function Quest75132:OnSubFinish7513205(arg1)
    print("OnSubFinish7513205")
end

function Quest75132:OnSubStart7513206(arg1)
    print("OnSubStart7513206")
    this:CreateQuestNpc(arg1, npcs.Npc21755.id, 0, false, 0)
end

function Quest75132:OnSubFinish7513206(arg1)
    print("OnSubFinish7513206")
    this:SafeDestroyQuestNpc(npcs.Npc21755.alias, 3)
end

return Quest75132
