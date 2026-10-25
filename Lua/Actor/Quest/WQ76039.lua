require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76039 = class("Quest76039", QuestActorProxy)
Quest76039.defaultAlias = "Quest76039"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76039:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7603901"] = self.OnSubStart7603901,
        ["7603903"] = self.OnSubStart7603903,
        ["7603902"] = self.OnSubStart7603902,
        ["7603904"] = self.OnSubStart7603904
    }
end

function Quest76039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7603901"] = self.OnSubFinish7603901,
        ["7603903"] = self.OnSubFinish7603903,
        ["7603902"] = self.OnSubFinish7603902,
        ["7603904"] = self.OnSubFinish7603904
    }
end

function Quest76039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76039:Start()
    print("Start")
end

function Quest76039:OnDestroy()
    print("OnDestroy")
end

function Quest76039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76039:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7603904Trigger")
end

function Quest76039:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76039:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76039:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76039:OnSubStart7603901(arg1)
    print("OnSubStart7603901")
end

function Quest76039:OnSubFinish7603901(arg1)
    print("OnSubFinish7603901")
end

function Quest76039:OnSubStart7603903(arg1)
    print("OnSubStart7603903")
    this:CreateQuestNpc(arg1, npcs.Npc7137.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7137.alias, 76039):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7138.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7138.alias, 76039):DoFreeStyle(1070, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7139.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7139.alias, 76039):DoFreeStyle(1080, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc7137.alias, 76039):SwitchPhantom(false)
    this:GetQuestNpcActor(npcs.Npc7138.alias, 76039):SwitchPhantom(false)
    this:GetQuestNpcActor(npcs.Npc7139.alias, 76039):SwitchPhantom(false)
end

function Quest76039:OnSubFinish7603903(arg1)
    print("OnSubFinish7603903")
end

function Quest76039:OnSubStart7603902(arg1)
    print("OnSubStart7603902")
    this:GetQuestNpcActor(npcs.Npc7137.alias, 76039):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7138.alias, 76039):DoFreeStyle(1070, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7139.alias, 76039):DoFreeStyle(1080, true, nil, true, true, false, false)
    this:DeployStoryByQuest(117603900)
end

function Quest76039:OnSubFinish7603902(arg1)
    print("OnSubFinish7603902")
    this:SafeDestroyQuestNpc(npcs.Npc7137.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7138.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7139.alias, 3)
    this:GetQuestNpcActor(npcs.Npc7137.alias, 76039):SwitchPhantom(false)
    this:GetQuestNpcActor(npcs.Npc7138.alias, 76039):SwitchPhantom(false)
    this:GetQuestNpcActor(npcs.Npc7139.alias, 76039):SwitchPhantom(false)
    this:CancelStoryByQuest(117603900)
end

function Quest76039:OnSubStart7603904(arg1)
    print("OnSubStart7603904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7603904, 0, 15, 1, npcs.Npc15838.id)
end

function Quest76039:OnSubFinish7603904(arg1)
    print("OnSubFinish7603904")
    this:NpcDestroyImmediately(3, npcs.Npc15838.alias)
end

return Quest76039
