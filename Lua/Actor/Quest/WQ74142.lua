require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74142 = class("Quest74142", QuestActorProxy)
Quest74142.defaultAlias = "Quest74142"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74142:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7414201"] = self.OnSubStart7414201,
        ["7414202"] = self.OnSubStart7414202,
        ["7414203"] = self.OnSubStart7414203,
        ["7414204"] = self.OnSubStart7414204,
        ["7414205"] = self.OnSubStart7414205,
        ["7414206"] = self.OnSubStart7414206,
        ["7414207"] = self.OnSubStart7414207,
        ["7414208"] = self.OnSubStart7414208,
        ["7414209"] = self.OnSubStart7414209,
        ["7414211"] = self.OnSubStart7414211,
        ["7414212"] = self.OnSubStart7414212,
        ["7414213"] = self.OnSubStart7414213,
        ["7414215"] = self.OnSubStart7414215,
        ["7414214"] = self.OnSubStart7414214,
        ["7414210"] = self.OnSubStart7414210
    }
end

function Quest74142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7414201"] = self.OnSubFinish7414201,
        ["7414202"] = self.OnSubFinish7414202,
        ["7414203"] = self.OnSubFinish7414203,
        ["7414204"] = self.OnSubFinish7414204,
        ["7414205"] = self.OnSubFinish7414205,
        ["7414206"] = self.OnSubFinish7414206,
        ["7414207"] = self.OnSubFinish7414207,
        ["7414208"] = self.OnSubFinish7414208,
        ["7414209"] = self.OnSubFinish7414209,
        ["7414211"] = self.OnSubFinish7414211,
        ["7414212"] = self.OnSubFinish7414212,
        ["7414213"] = self.OnSubFinish7414213,
        ["7414215"] = self.OnSubFinish7414215,
        ["7414214"] = self.OnSubFinish7414214,
        ["7414210"] = self.OnSubFinish7414210
    }
end

function Quest74142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74142:Start()
    print("Start")
end

function Quest74142:OnDestroy()
    print("OnDestroy")
end

function Quest74142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74142:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest74142:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74142:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74142:OnSubStart7414201(arg1)
    print("OnSubStart7414201")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414201(arg1)
    print("OnSubFinish7414201")
end

function Quest74142:OnSubStart7414202(arg1)
    print("OnSubStart7414202")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414202(arg1)
    print("OnSubFinish7414202")
end

function Quest74142:OnSubStart7414203(arg1)
    print("OnSubStart7414203")
    this:CreateQuestNpc(arg1, npcs.Npc21147Data.id, 0)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414203(arg1)
    print("OnSubFinish7414203")
    this:TransmitPlayerUseCustomizedTplByQuestId(7414203, 1, 15)
    this:SafeDestroyQuestNpc(npcs.Npc21147Data.alias, 3)
    this:CallDelayByQuest("", 8, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest74142:OnSubStart7414204(arg1)
    print("OnSubStart7414204")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74142:OnSubFinish7414204(arg1)
    print("OnSubFinish7414204")
    this:NpcDestroyWithDither(npcs.Npc5311Data.alias, 3)
    this:CallDelayByQuest("", 2, function(arg1)
        this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
    end)
end

function Quest74142:OnSubStart7414205(arg1)
    print("OnSubStart7414205")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414205Trigger", "Actor/Gadget/Q7414205Trigger", 70900002, 0, points.TPos_Q7414205Trigger.pos, points.TPos_Q7414205Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414205(arg1)
    print("OnSubFinish7414205")
    this:NpcDestroyWithDither(npcs.Npc21048Data.alias, 3)
end

function Quest74142:OnSubStart7414206(arg1)
    print("OnSubStart7414206")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414206(arg1)
    print("OnSubFinish7414206")
end

function Quest74142:OnSubStart7414207(arg1)
    print("OnSubStart7414207")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
end

function Quest74142:OnSubFinish7414207(arg1)
    print("OnSubFinish7414207")
    this:NpcDestroyWithDither(npcs.Npc5311Data.alias, 3)
    this:CallDelayByQuest("", 2, function(arg1)
        this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
    end)
end

function Quest74142:OnSubStart7414208(arg1)
    print("OnSubStart7414208")
    this:CreateQuestNpc(arg1, npcs.Npc21048Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414208Trigger", "Actor/Gadget/Q7414208Trigger", 70900002, 0, points.TPos_Q7414208Trigger.pos, points.TPos_Q7414208Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414208(arg1)
    print("OnSubFinish7414208")
    this:NpcDestroyWithDither(npcs.Npc21048Data.alias, 3)
end

function Quest74142:OnSubStart7414209(arg1)
    print("OnSubStart7414209")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414209(arg1)
    print("OnSubFinish7414209")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
end

function Quest74142:OnSubStart7414211(arg1)
    print("OnSubStart7414211")
    this:CreateQuestNpc(arg1, npcs.Npc5311Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21098Data.id, 0)
    actorMgr:CreateActorWithPos("Q7414211Trigger", "Actor/Gadget/Q7414211Trigger", 70900002, 0, points.TPos_Q7414211Trigger.pos, points.TPos_Q7414211Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest74142:OnSubFinish7414211(arg1)
    print("OnSubFinish7414211")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_02)
end

function Quest74142:OnSubStart7414212(arg1)
    print("OnSubStart7414212")
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest74142:OnSubFinish7414212(arg1)
    print("OnSubFinish7414212")
end

function Quest74142:OnSubStart7414213(arg1)
    print("OnSubStart7414213")
    this:RequestInteraction(npcs.Npc5311Data.alias, "", true)
    this:GetQuestNpcActor(npcs.Npc5311Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest74142:OnSubFinish7414213(arg1)
    print("OnSubFinish7414213")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5311Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21098Data.alias, 3)
    this:CallDelayByQuest("", 2, function(arg1)
        this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
    end)
end

function Quest74142:OnSubStart7414215(arg1)
    print("OnSubStart7414215")
    this:NotifyTo(npcs.Npc5311Data.alias, 1, true)
end

function Quest74142:OnSubFinish7414215(arg1)
    print("OnSubFinish7414215")
end

function Quest74142:OnSubStart7414214(arg1)
    print("OnSubStart7414214")
    this:NpcCreateWithNpcTrigger(npcs.Npc5311Data.id, 7414214, 0, 30)
end

function Quest74142:OnSubFinish7414214(arg1)
    print("OnSubFinish7414214")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5311Data.alias)
    this:LightNotifyTo(npcs.Npc5311Data.alias, 0, true)
end

function Quest74142:OnSubStart7414210(arg1)
    print("OnSubStart7414210")
    this:RequestInteraction(npcs.Npc5311Data.alias, "", true)
end

function Quest74142:OnSubFinish7414210(arg1)
    print("OnSubFinish7414210")
end

return Quest74142
