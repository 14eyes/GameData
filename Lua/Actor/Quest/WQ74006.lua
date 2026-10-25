require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74006 = class("Quest74006", QuestActorProxy)
Quest74006.defaultAlias = "Quest74006"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest74006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400624"] = self.OnSubStart7400624,
        ["7400601"] = self.OnSubStart7400601,
        ["7400602"] = self.OnSubStart7400602,
        ["7400603"] = self.OnSubStart7400603,
        ["7400604"] = self.OnSubStart7400604,
        ["7400605"] = self.OnSubStart7400605,
        ["7400606"] = self.OnSubStart7400606,
        ["7400607"] = self.OnSubStart7400607,
        ["7400608"] = self.OnSubStart7400608,
        ["7400609"] = self.OnSubStart7400609,
        ["7400622"] = self.OnSubStart7400622,
        ["7400610"] = self.OnSubStart7400610,
        ["7400612"] = self.OnSubStart7400612,
        ["7400613"] = self.OnSubStart7400613,
        ["7400614"] = self.OnSubStart7400614,
        ["7400615"] = self.OnSubStart7400615,
        ["7400616"] = self.OnSubStart7400616,
        ["7400617"] = self.OnSubStart7400617,
        ["7400625"] = self.OnSubStart7400625,
        ["7400618"] = self.OnSubStart7400618,
        ["7400619"] = self.OnSubStart7400619,
        ["7400620"] = self.OnSubStart7400620,
        ["7400621"] = self.OnSubStart7400621,
        ["7400626"] = self.OnSubStart7400626,
        ["7400623"] = self.OnSubStart7400623,
        ["7400611"] = self.OnSubStart7400611
    }
end

function Quest74006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400624"] = self.OnSubFinish7400624,
        ["7400601"] = self.OnSubFinish7400601,
        ["7400602"] = self.OnSubFinish7400602,
        ["7400603"] = self.OnSubFinish7400603,
        ["7400604"] = self.OnSubFinish7400604,
        ["7400605"] = self.OnSubFinish7400605,
        ["7400606"] = self.OnSubFinish7400606,
        ["7400607"] = self.OnSubFinish7400607,
        ["7400608"] = self.OnSubFinish7400608,
        ["7400609"] = self.OnSubFinish7400609,
        ["7400622"] = self.OnSubFinish7400622,
        ["7400610"] = self.OnSubFinish7400610,
        ["7400612"] = self.OnSubFinish7400612,
        ["7400613"] = self.OnSubFinish7400613,
        ["7400614"] = self.OnSubFinish7400614,
        ["7400615"] = self.OnSubFinish7400615,
        ["7400616"] = self.OnSubFinish7400616,
        ["7400617"] = self.OnSubFinish7400617,
        ["7400625"] = self.OnSubFinish7400625,
        ["7400618"] = self.OnSubFinish7400618,
        ["7400619"] = self.OnSubFinish7400619,
        ["7400620"] = self.OnSubFinish7400620,
        ["7400621"] = self.OnSubFinish7400621,
        ["7400626"] = self.OnSubFinish7400626,
        ["7400623"] = self.OnSubFinish7400623,
        ["7400611"] = self.OnSubFinish7400611
    }
end

function Quest74006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74006:Start()
    print("Start")
end

function Quest74006:OnDestroy()
    print("OnDestroy")
end

function Quest74006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74006:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7400626)
    end
end

function Quest74006:OnSubStart7400624(arg1)
    print("OnSubStart7400624")
end

function Quest74006:OnSubFinish7400624(arg1)
    print("OnSubFinish7400624")
end

function Quest74006:OnSubStart7400601(arg1)
    print("OnSubStart7400601")
end

function Quest74006:OnSubFinish7400601(arg1)
    print("OnSubFinish7400601")
end

function Quest74006:OnSubStart7400602(arg1)
    print("OnSubStart7400602")
end

function Quest74006:OnSubFinish7400602(arg1)
    print("OnSubFinish7400602")
end

function Quest74006:OnSubStart7400603(arg1)
    print("OnSubStart7400603")
end

function Quest74006:OnSubFinish7400603(arg1)
    print("OnSubFinish7400603")
end

function Quest74006:OnSubStart7400604(arg1)
    print("OnSubStart7400604")
end

function Quest74006:OnSubFinish7400604(arg1)
    print("OnSubFinish7400604")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
    this:SetNavigationByMainId(74006, true)
end

function Quest74006:OnSubStart7400605(arg1)
    print("OnSubStart7400605")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
end

function Quest74006:OnSubFinish7400605(arg1)
    print("OnSubFinish7400605")
    this:SafeDestroyQuestNpc(npcs.Npc5301Data.alias, 3)
end

function Quest74006:OnSubStart7400606(arg1)
    print("OnSubStart7400606")
    actorMgr:CreateActorWithPos("Q7400606Trigger", "Actor/Gadget/Q7400606Trigger", 70900002, 0, points.TPos_Q7400606Trigger.pos, points.TPos_Q7400606Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400606(arg1)
    print("OnSubFinish7400606")
end

function Quest74006:OnSubStart7400607(arg1)
    print("OnSubStart7400607")
    actorMgr:CreateActorWithPos("Q7400607Trigger", "Actor/Gadget/Q7400607Trigger", 70900002, 0, points.TPos_Q7400607Trigger.pos, points.TPos_Q7400607Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400607(arg1)
    print("OnSubFinish7400607")
end

function Quest74006:OnSubStart7400608(arg1)
    print("OnSubStart7400608")
    actorMgr:CreateActorWithPos("Q7400608Trigger", "Actor/Gadget/Q7400608Trigger", 70900002, 0, points.TPos_Q7400608Trigger.pos, points.TPos_Q7400608Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400608(arg1)
    print("OnSubFinish7400608")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_dogencounter)
end

function Quest74006:OnSubStart7400609(arg1)
    print("OnSubStart7400609")
end

function Quest74006:OnSubFinish7400609(arg1)
    print("OnSubFinish7400609")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_whynomelusine)
end

function Quest74006:OnSubStart7400622(arg1)
    print("OnSubStart7400622")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400622Trigger", "Actor/Gadget/Q7400622Trigger", 70900002, 0, points.TPos_Q7400622Trigger.pos, points.TPos_Q7400622Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400622(arg1)
    print("OnSubFinish7400622")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74006:OnSubStart7400610(arg1)
    print("OnSubStart7400610")
    this:CreateQuestNpc(arg1, npcs.Npc5322Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5322Data.alias):DoFreeStyle(301160, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7400610Trigger", "Actor/Gadget/Q7400610Trigger", 70900002, 0, points.TPos_Q7400610Trigger.pos, points.TPos_Q7400610Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400610(arg1)
    print("OnSubFinish7400610")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_foundmelusine)
end

function Quest74006:OnSubStart7400612(arg1)
    print("OnSubStart7400612")
    this:CreateQuestNpc(arg1, npcs.Npc5322Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5322Data.alias):DoFreeStyle(301160, true, nil, true, true, false, false)
end

function Quest74006:OnSubFinish7400612(arg1)
    print("OnSubFinish7400612")
end

function Quest74006:OnSubStart7400613(arg1)
    print("OnSubStart7400613")
    this:CreateQuestNpc(arg1, npcs.Npc5322Data.id, 0)
    this:RequestInteraction(npcs.Npc5322Data.alias)
end

function Quest74006:OnSubFinish7400613(arg1)
    print("OnSubFinish7400613")
    this:SafeDestroyQuestNpc(npcs.Npc5322Data.alias, 3)
end

function Quest74006:OnSubStart7400614(arg1)
    print("OnSubStart7400614")
    actorMgr:CreateActorWithPos("Q7400614Trigger", "Actor/Gadget/Q7400614Trigger", 70900002, 0, {x = 2195.195, y = 146.769, z = 4715.19}, {x = 0, y = 0, z = 0}, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400614(arg1)
    print("OnSubFinish7400614")
end

function Quest74006:OnSubStart7400615(arg1)
    print("OnSubStart7400615")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400615Trigger", "Actor/Gadget/Q7400615Trigger", 70900002, 0, points.TPos_Q7400615Trigger.pos, points.TPos_Q7400615Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400615(arg1)
    print("OnSubFinish7400615")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74006:OnSubStart7400616(arg1)
    print("OnSubStart7400616")
    actorMgr:CreateActorWithPos("Q7400616Trigger", "Actor/Gadget/Q7400616Trigger", 70900002, 0, {x = 2424.963, y = 238.43, z = 4959.595}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74006:OnSubFinish7400616(arg1)
    print("OnSubFinish7400616")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_breakrock)
end

function Quest74006:OnSubStart7400617(arg1)
    print("OnSubStart7400617")
end

function Quest74006:OnSubFinish7400617(arg1)
    print("OnSubFinish7400617")
end

function Quest74006:OnSubStart7400625(arg1)
    print("OnSubStart7400625")
end

function Quest74006:OnSubFinish7400625(arg1)
    print("OnSubFinish7400625")
end

function Quest74006:OnSubStart7400618(arg1)
    print("OnSubStart7400618")
    actorMgr:CreateActorWithPos("Q7400618Trigger", "Actor/Gadget/Q7400618Trigger", 70900002, 0, points.TPos_Q7400618Trigger.pos, points.TPos_Q7400618Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74006:OnSubFinish7400618(arg1)
    print("OnSubFinish7400618")
end

function Quest74006:OnSubStart7400619(arg1)
    print("OnSubStart7400619")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    this:RequestInteraction(npcs.Npc20985Data.alias)
end

function Quest74006:OnSubFinish7400619(arg1)
    print("OnSubFinish7400619")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74006:OnSubStart7400620(arg1)
    print("OnSubStart7400620")
end

function Quest74006:OnSubFinish7400620(arg1)
    print("OnSubFinish7400620")
end

function Quest74006:OnSubStart7400621(arg1)
    print("OnSubStart7400621")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    this:RequestInteraction(npcs.Npc20985Data.alias)
end

function Quest74006:OnSubFinish7400621(arg1)
    print("OnSubFinish7400621")
end

function Quest74006:OnSubStart7400626(arg1)
    print("OnSubStart7400626")
end

function Quest74006:OnSubFinish7400626(arg1)
    print("OnSubFinish7400626")
end

function Quest74006:OnSubStart7400623(arg1)
    print("OnSubStart7400623")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
end

function Quest74006:OnSubFinish7400623(arg1)
    print("OnSubFinish7400623")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74006:OnSubStart7400611(arg1)
    print("OnSubStart7400611")
end

function Quest74006:OnSubFinish7400611(arg1)
    print("OnSubFinish7400611")
end

return Quest74006
