require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71105 = class("Quest71105", QuestActorProxy)
Quest71105.defaultAlias = "Quest71105"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71105:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71105:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110512"] = self.OnSubStart7110512,
        ["7110501"] = self.OnSubStart7110501,
        ["7110502"] = self.OnSubStart7110502,
        ["7110503"] = self.OnSubStart7110503,
        ["7110504"] = self.OnSubStart7110504,
        ["7110505"] = self.OnSubStart7110505,
        ["7110506"] = self.OnSubStart7110506,
        ["7110507"] = self.OnSubStart7110507,
        ["7110508"] = self.OnSubStart7110508,
        ["7110509"] = self.OnSubStart7110509,
        ["7110510"] = self.OnSubStart7110510,
        ["7110511"] = self.OnSubStart7110511
    }
end

function Quest71105:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110512"] = self.OnSubFinish7110512,
        ["7110501"] = self.OnSubFinish7110501,
        ["7110502"] = self.OnSubFinish7110502,
        ["7110503"] = self.OnSubFinish7110503,
        ["7110504"] = self.OnSubFinish7110504,
        ["7110505"] = self.OnSubFinish7110505,
        ["7110506"] = self.OnSubFinish7110506,
        ["7110507"] = self.OnSubFinish7110507,
        ["7110508"] = self.OnSubFinish7110508,
        ["7110509"] = self.OnSubFinish7110509,
        ["7110510"] = self.OnSubFinish7110510,
        ["7110511"] = self.OnSubFinish7110511
    }
end

function Quest71105:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7110501"] = self.OnSubFailed7110501}
end

function Quest71105:Start()
    print("Start")
end

function Quest71105:OnDestroy()
    print("OnDestroy")
end

function Quest71105:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71105:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71105:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71105:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest71105:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71105:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71105:OnSubStart7110512(arg1)
    print("OnSubStart7110512")
end

function Quest71105:OnSubFinish7110512(arg1)
    print("OnSubFinish7110512")
end

function Quest71105:OnSubStart7110501(arg1)
    print("OnSubStart7110501")
    this:CreateQuestNpc(arg1, npcs.Npc21219Data.id, 0)
end

function Quest71105:OnSubFinish7110501(arg1)
    print("OnSubFinish7110501")
    this:QuestNarratorTask(datas.Narrator_7110501)
end

function Quest71105:OnSubFailed7110501(arg1)
    print("OnSubFailed7110501")
    this:NpcDestroyWithDither(npcs.Npc21219Data.alias, 3)
end

function Quest71105:OnSubStart7110502(arg1)
    print("OnSubStart7110502")
    this:CreateQuestNpc(arg1, npcs.Npc21220Data.id, 0)
    actorMgr:CreateActorWithPos("Q7110502Trigger", "Actor/Gadget/Q7110502Trigger", 70900002, 0, points.TPos_Q7110502Trigger.pos, points.TPos_Q7110502Trigger.rot, true, false, 3)
end

function Quest71105:OnSubFinish7110502(arg1)
    print("OnSubFinish7110502")
    this:SafeDestroyQuestNpc(npcs.Npc21220Data.alias, 3)
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest71105:OnSubStart7110503(arg1)
    print("OnSubStart7110503")
    actorMgr:CreateActorWithPos("Q7110503Trigger", "Actor/Gadget/Q7110503Trigger", 70900002, 0, points.TPos_Q7110503Trigger.pos, points.TPos_Q7110503Trigger.rot, true, false, 3)
end

function Quest71105:OnSubFinish7110503(arg1)
    print("OnSubFinish7110503")
    this:QuestNarratorTask(datas.Narrator_7110503)
end

function Quest71105:OnSubStart7110504(arg1)
    print("OnSubStart7110504")
    actorMgr:CreateActorWithPos("Q7110504Trigger", "Actor/Gadget/Q7110504Trigger", 70900002, 0, points.TPos_Q7110504Trigger.pos, points.TPos_Q7110504Trigger.rot, true, false, 3)
end

function Quest71105:OnSubFinish7110504(arg1)
    print("OnSubFinish7110504")
end

function Quest71105:OnSubStart7110505(arg1)
    print("OnSubStart7110505")
    this:CreateQuestNpc(arg1, npcs.Npc21220Data.id, 0)
end

function Quest71105:OnSubFinish7110505(arg1)
    print("OnSubFinish7110505")
    this:SafeDestroyQuestNpc(npcs.Npc21220Data.alias, 3)
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest71105:OnSubStart7110506(arg1)
    print("OnSubStart7110506")
    actorMgr:CreateActorWithPos("Q7110506Trigger", "Actor/Gadget/Q7110506Trigger", 70900002, 0, points.TPos_Q7110506Trigger.pos, points.TPos_Q7110506Trigger.rot, true, false, 3)
end

function Quest71105:OnSubFinish7110506(arg1)
    print("OnSubFinish7110506")
end

function Quest71105:OnSubStart7110507(arg1)
    print("OnSubStart7110507")
end

function Quest71105:OnSubFinish7110507(arg1)
    print("OnSubFinish7110507")
    this:QuestNarratorTask(datas.Narrator_7110505)
end

function Quest71105:OnSubStart7110508(arg1)
    print("OnSubStart7110508")
    this:CreateQuestNpc(arg1, npcs.Npc2491Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
end

function Quest71105:OnSubFinish7110508(arg1)
    print("OnSubFinish7110508")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2491Data.alias)
    this:QuestNarratorTask(datas.Narrator_7110506)
end

function Quest71105:OnSubStart7110509(arg1)
    print("OnSubStart7110509")
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110509Trigger", "Actor/Gadget/Q7110509Trigger", 70900002, 0, points.TPos_Q7110509Trigger.pos, points.TPos_Q7110509Trigger.rot, true, false, 3)
end

function Quest71105:OnSubFinish7110509(arg1)
    print("OnSubFinish7110509")
    this:QuestNarratorTask(datas.Narrator_7110509)
end

function Quest71105:OnSubStart7110510(arg1)
    print("OnSubStart7110510")
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
end

function Quest71105:OnSubFinish7110510(arg1)
    print("OnSubFinish7110510")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest71105:OnSubStart7110511(arg1)
    print("OnSubStart7110511")
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
end

function Quest71105:OnSubFinish7110511(arg1)
    print("OnSubFinish7110511")
    this:LightNotifyTo(npcs.Npc2491Data.alias, 0, true)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2491Data.alias)
end

return Quest71105
