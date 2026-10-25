require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5032 = class("Quest5032", QuestActorProxy)
Quest5032.defaultAlias = "Quest5032"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest5032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest5032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["503204"] = self.OnSubStart503204,
        ["503201"] = self.OnSubStart503201,
        ["503202"] = self.OnSubStart503202,
        ["503203"] = self.OnSubStart503203,
        ["503205"] = self.OnSubStart503205,
        ["503208"] = self.OnSubStart503208,
        ["503206"] = self.OnSubStart503206,
        ["503207"] = self.OnSubStart503207
    }
end

function Quest5032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["503204"] = self.OnSubFinish503204,
        ["503201"] = self.OnSubFinish503201,
        ["503202"] = self.OnSubFinish503202,
        ["503203"] = self.OnSubFinish503203,
        ["503205"] = self.OnSubFinish503205,
        ["503208"] = self.OnSubFinish503208,
        ["503206"] = self.OnSubFinish503206,
        ["503207"] = self.OnSubFinish503207
    }
end

function Quest5032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5032:Start()
    print("Start")
end

function Quest5032:OnDestroy()
    print("OnDestroy")
end

function Quest5032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5032:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5032:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5032:OnSubStart503204(arg1)
    print("OnSubStart503204")
    self:CreateNpcWithCameraLookTrigger("Q503204N1096", 503204, 1096, 0, 6, 503204, true)
end

function Quest5032:OnSubFinish503204(arg1)
    print("OnSubFinish503204")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1095)
end

function Quest5032:OnSubStart503201(arg1)
    print("OnSubStart503201")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 80, 503201)
    this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
end

function Quest5032:OnSubFinish503201(arg1)
    print("OnSubFinish503201")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1095)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1095)
end

function Quest5032:OnSubStart503202(arg1)
    print("OnSubStart503202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503202, 0, 30, 1, npcs.Npc1089.id)
end

function Quest5032:OnSubFinish503202(arg1)
    print("OnSubFinish503202")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
end

function Quest5032:OnSubStart503203(arg1)
    print("OnSubStart503203")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1096.id, 0, 15, 503203)
        this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5032):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5032):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5032):DisableInteeHeadCtrl(true)
    end)
end

function Quest5032:OnSubFinish503203(arg1)
    print("OnSubFinish503203")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
end

function Quest5032:OnSubStart503205(arg1)
    print("OnSubStart503205")
    this:NpcCreateWithNpcTrigger(npcs.Npc1094.id, 0, 15, 503205)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
end

function Quest5032:OnSubFinish503205(arg1)
    print("OnSubFinish503205")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc14977.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    end)
end

function Quest5032:OnSubStart503208(arg1)
    print("OnSubStart503208")
end

function Quest5032:OnSubFinish503208(arg1)
    print("OnSubFinish503208")
end

function Quest5032:OnSubStart503206(arg1)
    print("OnSubStart503206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503206, 0, 10, 1, npcs.Npc1092.id)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5032):DoFreeStyle(4100, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5032):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 5032):DisableInteeHeadCtrl(true)
    end)
end

function Quest5032:OnSubFinish503206(arg1)
    print("OnSubFinish503206")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
end

function Quest5032:OnSubStart503207(arg1)
    print("OnSubStart503207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(503207, 0, 5, 1, npcs.Npc1089.id)
end

function Quest5032:OnSubFinish503207(arg1)
    print("OnSubFinish503207")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
end

return Quest5032
