require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13024 = class("Quest13024", QuestActorProxy)
Quest13024.defaultAlias = "Quest13024"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest13024:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1302401"] = self.OnSubStart1302401,
        ["1302402"] = self.OnSubStart1302402,
        ["1302403"] = self.OnSubStart1302403,
        ["1302406"] = self.OnSubStart1302406,
        ["1302404"] = self.OnSubStart1302404,
        ["1302405"] = self.OnSubStart1302405,
        ["1302407"] = self.OnSubStart1302407,
        ["1302408"] = self.OnSubStart1302408
    }
end

function Quest13024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1302401"] = self.OnSubFinish1302401,
        ["1302402"] = self.OnSubFinish1302402,
        ["1302403"] = self.OnSubFinish1302403,
        ["1302406"] = self.OnSubFinish1302406,
        ["1302404"] = self.OnSubFinish1302404,
        ["1302405"] = self.OnSubFinish1302405,
        ["1302407"] = self.OnSubFinish1302407,
        ["1302408"] = self.OnSubFinish1302408
    }
end

function Quest13024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13024:Start()
    print("Start")
end

function Quest13024:OnDestroy()
    print("OnDestroy")
end

function Quest13024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13024:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13024:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest13024:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1302403 then
        actorUtils.FinishQuestID(false, 1302406)
    elseif arg1 == 1302407 then
        actorUtils.FinishQuestID(false, 1302408)
    end
end

function Quest13024:OnSubStart1302401(arg1)
    print("OnSubStart1302401")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1052Data.id, 1302401, 1, 16, 1)
end

function Quest13024:OnSubFinish1302401(arg1)
    print("OnSubFinish1302401")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest13024:OnSubStart1302402(arg1)
    print("OnSubStart1302402")
    this:CreateQuestNpc(arg1, npcs.Npc13013Data.id, 2)
    this:NpcCreateWithNpcTrigger(npcs.Npc13063Data.id, 1302402, 3, 10)
end

function Quest13024:OnSubFinish1302402(arg1)
    print("OnSubFinish1302402")
    this:SafeDestroyQuestNpc(npcs.Npc13013Data.alias, 3)
end

function Quest13024:OnSubStart1302403(arg1)
    print("OnSubStart1302403")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1052Data.id, 1302403, 1, 15, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13063Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13104Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13105Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc13063Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13104Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13105Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13063Data.alias):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13104Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13105Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest13024:OnSubFinish1302403(arg1)
    print("OnSubFinish1302403")
    this:GetQuestNpcActor(npcs.Npc13063Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13104Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13105Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13063Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13104Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13105Data.alias, 3)
end

function Quest13024:OnSubStart1302406(arg1)
    print("OnSubStart1302406")
end

function Quest13024:OnSubFinish1302406(arg1)
    print("OnSubFinish1302406")
end

function Quest13024:OnSubStart1302404(arg1)
    print("OnSubStart1302404")
end

function Quest13024:OnSubFinish1302404(arg1)
    print("OnSubFinish1302404")
end

function Quest13024:OnSubStart1302405(arg1)
    print("OnSubStart1302405")
    this:CallDelay(2, function(arg1)
        this:CreateQuestNpcWithTriggerBlack("Q1302405NPCTrigger", 1302405, 1052, 1, 20, 1)
    end)
end

function Quest13024:OnSubFinish1302405(arg1)
    print("OnSubFinish1302405")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest13024:OnSubStart1302407(arg1)
    print("OnSubStart1302407")
    this:DestroyQuestNpcActor(npcs.Npc13106Data.alias, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13106Data.id, 2)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13106Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4121, true, nil, true, true, true, true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
end

function Quest13024:OnSubFinish1302407(arg1)
    print("OnSubFinish1302407")
end

function Quest13024:OnSubStart1302408(arg1)
    print("OnSubStart1302408")
end

function Quest13024:OnSubFinish1302408(arg1)
    print("OnSubFinish1302408")
end

return Quest13024
