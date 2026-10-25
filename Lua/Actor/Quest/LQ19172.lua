require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19172 = class("Quest19172", QuestActorProxy)
Quest19172.defaultAlias = "Quest19172"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest19172:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19172:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1917201"] = self.OnSubStart1917201,
        ["1917202"] = self.OnSubStart1917202,
        ["1917203"] = self.OnSubStart1917203,
        ["1917209"] = self.OnSubStart1917209,
        ["1917204"] = self.OnSubStart1917204,
        ["1917205"] = self.OnSubStart1917205,
        ["1917206"] = self.OnSubStart1917206,
        ["1917207"] = self.OnSubStart1917207,
        ["1917208"] = self.OnSubStart1917208
    }
end

function Quest19172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1917201"] = self.OnSubFinish1917201,
        ["1917202"] = self.OnSubFinish1917202,
        ["1917203"] = self.OnSubFinish1917203,
        ["1917209"] = self.OnSubFinish1917209,
        ["1917204"] = self.OnSubFinish1917204,
        ["1917205"] = self.OnSubFinish1917205,
        ["1917206"] = self.OnSubFinish1917206,
        ["1917207"] = self.OnSubFinish1917207,
        ["1917208"] = self.OnSubFinish1917208
    }
end

function Quest19172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19172:Start()
    print("Start")
end

function Quest19172:OnDestroy()
    print("OnDestroy")
end

function Quest19172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19172:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12922Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12925Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4022Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30212Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4134Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4162Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1917201Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917202N513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917203N30212Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917204N513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917206N513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917208N513Trigger", 3, false)
end

function Quest19172:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest19172:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest19172:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 191720901 then
        actorUtils.FinishQuestID(false, 1917209)
    elseif arg1 == 191720902 then
        actorUtils.FinishQuestID(true, 1917209)
    end
end

function Quest19172:OnSubStart1917201(arg1)
    print("OnSubStart1917201")
    this:CreateQuestNpc(arg1, npcs.Npc12922Data.id, 2)
    actorMgr:CreateActorWithPos("Q1917201Trigger", "Actor/Gadget/Q1917201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917202_guide").pos, sceneData:GetDummyPoint(3, "Q1917202_guide").rot, true, false, 3)
end

function Quest19172:OnSubFinish1917201(arg1)
    print("OnSubFinish1917201")
end

function Quest19172:OnSubStart1917202(arg1)
    print("OnSubStart1917202")
    this:NpcCreateWithTriggerBlack(npcs.Coop_FaruzanData.id, 1917202, 1)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917202)
end

function Quest19172:OnSubFinish1917202(arg1)
    print("OnSubFinish1917202")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12922Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12925Data.alias, 3)
end

function Quest19172:OnSubStart1917203(arg1)
    print("OnSubStart1917203")
    this:NpcCreateWithTrigger(npcs.Npc30212Data.id, 1917203, 3)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917203)
end

function Quest19172:OnSubFinish1917203(arg1)
    print("OnSubFinish1917203")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19172:OnSubStart1917209(arg1)
    print("OnSubStart1917209")
end

function Quest19172:OnSubFinish1917209(arg1)
    print("OnSubFinish1917209")
end

function Quest19172:OnSubStart1917204(arg1)
    print("OnSubStart1917204")
    this:NpcCreateWithTriggerBlack(npcs.Coop_FaruzanData.id, 1917204, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12925Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc30212Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc30216Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc30214Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc30215Data.id, 6)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917204)
end

function Quest19172:OnSubFinish1917204(arg1)
    print("OnSubFinish1917204")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12925Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30212Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
end

function Quest19172:OnSubStart1917205(arg1)
    print("OnSubStart1917205")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19172:OnSubFinish1917205(arg1)
    print("OnSubFinish1917205")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19172:OnSubStart1917206(arg1)
    print("OnSubStart1917206")
    this:NpcCreateWithTrigger(npcs.Coop_FaruzanData.id, 1917206, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12925Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc30212Data.id, 4)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917205)
end

function Quest19172:OnSubFinish1917206(arg1)
    print("OnSubFinish1917206")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12925Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4022Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30212Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4134Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4162Data.alias, 3)
end

function Quest19172:OnSubStart1917207(arg1)
    print("OnSubStart1917207")
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest19172:OnSubFinish1917207(arg1)
    print("OnSubFinish1917207")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19172:OnSubStart1917208(arg1)
    print("OnSubStart1917208")
    this:NpcCreateWithTrigger(npcs.Coop_FaruzanData.id, 1917208, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12925Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc30212Data.id, 4)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917206)
end

function Quest19172:OnSubFinish1917208(arg1)
    print("OnSubFinish1917208")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12925Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4022Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30212Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4134Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4162Data.alias, 3)
end

return Quest19172
