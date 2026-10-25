require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76673 = class("Quest76673", QuestActorProxy)
Quest76673.defaultAlias = "Quest76673"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76673:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76673:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7667314"] = self.OnSubStart7667314,
        ["7667301"] = self.OnSubStart7667301,
        ["7667302"] = self.OnSubStart7667302,
        ["7667303"] = self.OnSubStart7667303,
        ["7667304"] = self.OnSubStart7667304,
        ["7667305"] = self.OnSubStart7667305,
        ["7667306"] = self.OnSubStart7667306,
        ["7667307"] = self.OnSubStart7667307,
        ["7667308"] = self.OnSubStart7667308,
        ["7667309"] = self.OnSubStart7667309,
        ["7667312"] = self.OnSubStart7667312,
        ["7667313"] = self.OnSubStart7667313,
        ["7667315"] = self.OnSubStart7667315,
        ["7667310"] = self.OnSubStart7667310,
        ["7667311"] = self.OnSubStart7667311
    }
end

function Quest76673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7667314"] = self.OnSubFinish7667314,
        ["7667301"] = self.OnSubFinish7667301,
        ["7667302"] = self.OnSubFinish7667302,
        ["7667303"] = self.OnSubFinish7667303,
        ["7667304"] = self.OnSubFinish7667304,
        ["7667305"] = self.OnSubFinish7667305,
        ["7667306"] = self.OnSubFinish7667306,
        ["7667307"] = self.OnSubFinish7667307,
        ["7667308"] = self.OnSubFinish7667308,
        ["7667309"] = self.OnSubFinish7667309,
        ["7667312"] = self.OnSubFinish7667312,
        ["7667313"] = self.OnSubFinish7667313,
        ["7667315"] = self.OnSubFinish7667315,
        ["7667310"] = self.OnSubFinish7667310,
        ["7667311"] = self.OnSubFinish7667311
    }
end

function Quest76673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7667310"] = self.OnSubFailed7667310}
end

function Quest76673:Start()
    print("Start")
end

function Quest76673:OnDestroy()
    print("OnDestroy")
end

function Quest76673:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76673:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76673:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76673:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7667301Trigger")
    this:ActorDestroy("Q7667304Trigger")
    this:ActorDestroy("Q7667306Trigger")
    this:ActorDestroy("Q7667314Trigger")
end

function Quest76673:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7667315)
    end
end

function Quest76673:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76673:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest76673:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76673:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76673:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76673:OnSubStart7667314(arg1)
    print("OnSubStart7667314")
    actorMgr:CreateActorWithPos("Q7667314Trigger", "Actor/Gadget/Q7667314Trigger", 70900002, 0, points._Q7667314TriggerPoint_.pos, points._Q7667314TriggerPoint_.rot, true, false, 3)
end

function Quest76673:OnSubFinish7667314(arg1)
    print("OnSubFinish7667314")
end

function Quest76673:OnSubStart7667301(arg1)
    print("OnSubStart7667301")
    this:NpcCreateWithNoBlackData(7667301, 0, npcs.Npc15982.id, 0, 5, 7667308, datas.NoBlackData)
end

function Quest76673:OnSubFinish7667301(arg1)
    print("OnSubFinish7667301")
    this:SafeDestroyQuestNpc(npcs.Npc15982.alias, 3)
end

function Quest76673:OnSubStart7667302(arg1)
    print("OnSubStart7667302")
    this:DeployStoryByQuest(117667300)
end

function Quest76673:OnSubFinish7667302(arg1)
    print("OnSubFinish7667302")
    this:CancelStoryByQuest(117667300)
end

function Quest76673:OnSubStart7667303(arg1)
    print("OnSubStart7667303")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(147667301)
    end)
end

function Quest76673:OnSubFinish7667303(arg1)
    print("OnSubFinish7667303")
    this:CancelStoryByQuest(147667301)
end

function Quest76673:OnSubStart7667304(arg1)
    print("OnSubStart7667304")
    this:CreateQuestNpc(arg1, npcs.Npc15982.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14923.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14924.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15983.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16494.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16495.id, 0, false, 0)
    this:CreateLocalGadget(74031002, "1", points.Q7667304_Gadget74031002_1_Point.pos, points.Q7667304_Gadget74031002_1_Point.rot, 3, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q7667304Trigger", "Actor/Gadget/Q7667304Trigger", 70900002, 0, points._Q7667304TriggerPoint_.pos, points._Q7667304TriggerPoint_.rot, true, false, 3)
end

function Quest76673:OnSubFinish7667304(arg1)
    print("OnSubFinish7667304")
    this:ActorDestroy("Q7667304Trigger")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_7667303, nil)
end

function Quest76673:OnSubStart7667305(arg1)
    print("OnSubStart7667305")
    this:CreateQuestNpc(arg1, npcs.Npc16142.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16143.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15983.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc16496.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16497.id, 0, false, 0)
    this:CreateLocalGadget(74031002, "1", points.Q7667304_Gadget74031002_1_Point.pos, points.Q7667304_Gadget74031002_1_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest76673:OnSubFinish7667305(arg1)
    print("OnSubFinish7667305")
    this:SafeDestroyQuestNpc(npcs.Npc14923.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14924.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16494.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16495.alias, 3)
end

function Quest76673:OnSubStart7667306(arg1)
    print("OnSubStart7667306")
    this:NpcCreateWithNpcTrigger(npcs.Npc15983.id, 0, 20, 7667306)
    this:CreateQuestNpc(arg1, npcs.Npc16015.id, 0, false, 0)
    this:CreateLocalGadget(74031002, "1", points.Q7667304_Gadget74031002_1_Point.pos, points.Q7667304_Gadget74031002_1_Point.rot, 3, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q7667306Trigger", "Actor/Gadget/Q7667306Trigger", 70900002, 0, points._Q7667306TriggerPoint_.pos, points._Q7667306TriggerPoint_.rot, true, false, 3)
end

function Quest76673:OnSubFinish7667306(arg1)
    print("OnSubFinish7667306")
    this:SafeDestroyQuestNpc(npcs.Npc16143.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16142.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15983.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16496.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16497.alias, 3)
    this:ClearNarratorTask()
end

function Quest76673:OnSubStart7667307(arg1)
    print("OnSubStart7667307")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7667307, 0, 20, 1, npcs.Npc15981.id)
    this:CreateLocalGadget(74031002, "1", points.Q7667304_Gadget74031002_1_Point.pos, points.Q7667304_Gadget74031002_1_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest76673:OnSubFinish7667307(arg1)
    print("OnSubFinish7667307")
    this:SafeDestroyQuestNpc(npcs.Npc16015.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15981.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7667305, nil)
    end)
end

function Quest76673:OnSubStart7667308(arg1)
    print("OnSubStart7667308")
    this:CreateLocalGadget(74031002, "1", points.Q7667304_Gadget74031002_1_Point.pos, points.Q7667304_Gadget74031002_1_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest76673:OnSubFinish7667308(arg1)
    print("OnSubFinish7667308")
    this:SafeDestroyQuestNpc(npcs.Npc15982.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_7667306, nil)
end

function Quest76673:OnSubStart7667309(arg1)
    print("OnSubStart7667309")
    this:NpcCreateWithNpcTrigger(npcs.Npc15981.id, 0, 3, 7667309)
    this:CreateLocalGadget(74031002, "1", points.Q7667304_Gadget74031002_1_Point.pos, points.Q7667304_Gadget74031002_1_Point.rot, 3, nil, nil, false, 0, true)
end

function Quest76673:OnSubFinish7667309(arg1)
    print("OnSubFinish7667309")
    this:SafeDestroyQuestNpc(npcs.Npc15981.alias, 3)
    this:RemoveLocalGadget(74031002, "1")
end

function Quest76673:OnSubStart7667312(arg1)
    print("OnSubStart7667312")
end

function Quest76673:OnSubFinish7667312(arg1)
    print("OnSubFinish7667312")
end

function Quest76673:OnSubStart7667313(arg1)
    print("OnSubStart7667313")
    this:NpcCreateWithNpcTrigger(npcs.Npc1322.id, 0, 5, 7667313)
end

function Quest76673:OnSubFinish7667313(arg1)
    print("OnSubFinish7667313")
end

function Quest76673:OnSubStart7667315(arg1)
    print("OnSubStart7667315")
end

function Quest76673:OnSubFinish7667315(arg1)
    print("OnSubFinish7667315")
end

function Quest76673:OnSubStart7667310(arg1)
    print("OnSubStart7667310")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1322.id, arg1)
    if 0 == this:GetQuestVar(7667310, 0) then
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:ShowTutorialDialog(2523, function(arg1)
                this:DeployStoryByQuest(117667302)
                this:SetQuestVarByMainId(0, 1)
            end)
        end)
    else
        this:DeployStoryByQuest(117667302)
    end
end

function Quest76673:OnSubFinish7667310(arg1)
    print("OnSubFinish7667310")
    this:CancelStoryByQuest(117667302)
end

function Quest76673:OnSubFailed7667310(arg1)
    print("OnSubFailed7667310")
    this:CancelStoryByQuest(117667302)
end

function Quest76673:OnSubStart7667311(arg1)
    print("OnSubStart7667311")
    this:NpcCreateWithNpcTrigger(npcs.Npc1322.id, 0, 5, 7667311)
end

function Quest76673:OnSubFinish7667311(arg1)
    print("OnSubFinish7667311")
    this:SafeDestroyQuestNpc(npcs.Npc1322.alias, 3)
end

return Quest76673
