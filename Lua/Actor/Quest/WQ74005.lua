require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74005 = class("Quest74005", QuestActorProxy)
Quest74005.defaultAlias = "Quest74005"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest74005:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400502"] = self.OnSubStart7400502,
        ["7400503"] = self.OnSubStart7400503,
        ["7400504"] = self.OnSubStart7400504,
        ["7400518"] = self.OnSubStart7400518,
        ["7400519"] = self.OnSubStart7400519,
        ["7400520"] = self.OnSubStart7400520,
        ["7400505"] = self.OnSubStart7400505,
        ["7400506"] = self.OnSubStart7400506,
        ["7400525"] = self.OnSubStart7400525,
        ["7400526"] = self.OnSubStart7400526,
        ["7400527"] = self.OnSubStart7400527,
        ["7400528"] = self.OnSubStart7400528,
        ["7400523"] = self.OnSubStart7400523,
        ["7400507"] = self.OnSubStart7400507,
        ["7400508"] = self.OnSubStart7400508,
        ["7400509"] = self.OnSubStart7400509,
        ["7400511"] = self.OnSubStart7400511,
        ["7400512"] = self.OnSubStart7400512,
        ["7400513"] = self.OnSubStart7400513,
        ["7400521"] = self.OnSubStart7400521,
        ["7400514"] = self.OnSubStart7400514,
        ["7400524"] = self.OnSubStart7400524,
        ["7400532"] = self.OnSubStart7400532,
        ["7400522"] = self.OnSubStart7400522,
        ["7400515"] = self.OnSubStart7400515,
        ["7400529"] = self.OnSubStart7400529,
        ["7400516"] = self.OnSubStart7400516,
        ["7400517"] = self.OnSubStart7400517,
        ["7400530"] = self.OnSubStart7400530,
        ["7400531"] = self.OnSubStart7400531,
        ["7400510"] = self.OnSubStart7400510
    }
end

function Quest74005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400502"] = self.OnSubFinish7400502,
        ["7400503"] = self.OnSubFinish7400503,
        ["7400504"] = self.OnSubFinish7400504,
        ["7400518"] = self.OnSubFinish7400518,
        ["7400519"] = self.OnSubFinish7400519,
        ["7400520"] = self.OnSubFinish7400520,
        ["7400505"] = self.OnSubFinish7400505,
        ["7400506"] = self.OnSubFinish7400506,
        ["7400525"] = self.OnSubFinish7400525,
        ["7400526"] = self.OnSubFinish7400526,
        ["7400527"] = self.OnSubFinish7400527,
        ["7400528"] = self.OnSubFinish7400528,
        ["7400523"] = self.OnSubFinish7400523,
        ["7400507"] = self.OnSubFinish7400507,
        ["7400508"] = self.OnSubFinish7400508,
        ["7400509"] = self.OnSubFinish7400509,
        ["7400511"] = self.OnSubFinish7400511,
        ["7400512"] = self.OnSubFinish7400512,
        ["7400513"] = self.OnSubFinish7400513,
        ["7400521"] = self.OnSubFinish7400521,
        ["7400514"] = self.OnSubFinish7400514,
        ["7400524"] = self.OnSubFinish7400524,
        ["7400532"] = self.OnSubFinish7400532,
        ["7400522"] = self.OnSubFinish7400522,
        ["7400515"] = self.OnSubFinish7400515,
        ["7400529"] = self.OnSubFinish7400529,
        ["7400516"] = self.OnSubFinish7400516,
        ["7400517"] = self.OnSubFinish7400517,
        ["7400530"] = self.OnSubFinish7400530,
        ["7400531"] = self.OnSubFinish7400531,
        ["7400510"] = self.OnSubFinish7400510
    }
end

function Quest74005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74005:Start()
    print("Start")
end

function Quest74005:OnDestroy()
    print("OnDestroy")
end

function Quest74005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74005:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7400529)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7400530)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7400531)
    end
end

function Quest74005:OnSubStart7400502(arg1)
    print("OnSubStart7400502")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5301Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21024Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21025Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21026Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20984Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400502Trigger", "Actor/Gadget/Q7400502Trigger", 70900002, 0, {x = 2679.505, y = 441.805, z = 4775.82}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q74005Trigger", "Actor/Gadget/Q74005Trigger", 70900002, 0, {x = 2675.693, y = 442.615, z = 4773.438}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400502(arg1)
    print("OnSubFinish7400502")
    this:SetNavigationByMainId(74005, true)
    this:SafeDestroyQuestNpc(npcs.Npc21024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21025Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21026Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20984Data.alias, 3)
end

function Quest74005:OnSubStart7400503(arg1)
    print("OnSubStart7400503")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5301Data.alias):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest74005:OnSubFinish7400503(arg1)
    print("OnSubFinish7400503")
end

function Quest74005:OnSubStart7400504(arg1)
    print("OnSubStart7400504")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    this:RequestInteraction(npcs.Npc5301Data.alias)
end

function Quest74005:OnSubFinish7400504(arg1)
    print("OnSubFinish7400504")
end

function Quest74005:OnSubStart7400518(arg1)
    print("OnSubStart7400518")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400518Trigger", "Actor/Gadget/Q7400518Trigger", 70900002, 0, points.TPos_Q7400518Trigger.pos, points.TPos_Q7400518Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74005:OnSubFinish7400518(arg1)
    print("OnSubFinish7400518")
end

function Quest74005:OnSubStart7400519(arg1)
    print("OnSubStart7400519")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400519Trigger", "Actor/Gadget/Q7400519Trigger", 70900002, 0, points.TPos_Q7400519Trigger.pos, points.TPos_Q7400519Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74005:OnSubFinish7400519(arg1)
    print("OnSubFinish7400519")
end

function Quest74005:OnSubStart7400520(arg1)
    print("OnSubStart7400520")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400520Trigger", "Actor/Gadget/Q7400520Trigger", 70900002, 0, points.TPos_Q7400520Trigger.pos, points.TPos_Q7400520Trigger.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7400520Trigger1", "Actor/Gadget/Q7400520Trigger1", 70900002, 0, {x = 2452.598, y = 245.602, z = 4869.247}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400520(arg1)
    print("OnSubFinish7400520")
end

function Quest74005:OnSubStart7400505(arg1)
    print("OnSubStart7400505")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400505Trigger", "Actor/Gadget/Q7400505Trigger", 70900002, 0, {x = 2436.598, y = 242.506, z = 4894.602}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400505(arg1)
    print("OnSubFinish7400505")
    this:SafeDestroyQuestNpc(npcs.Npc5301Data.alias, 3)
end

function Quest74005:OnSubStart7400506(arg1)
    print("OnSubStart7400506")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400506Trigger", "Actor/Gadget/Q7400506Trigger", 70900002, 0, points.TPos_Q7400506Trigger.pos, points.TPos_Q7400506Trigger.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7400506Trigger01", "Actor/Gadget/Q7400506Trigger01", 70900002, 0, {x = 2414.278, y = 240.776, z = 4928.485}, {x = 0, y = 0, z = 0}, true, false)
    actorMgr:CreateActorWithPos("Q7400506Trigger02", "Actor/Gadget/Q7400506Trigger02", 70900002, 0, {x = 2407.584, y = 247.747, z = 4974.695}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400506(arg1)
    print("OnSubFinish7400506")
end

function Quest74005:OnSubStart7400525(arg1)
    print("OnSubStart7400525")
    this:CreateQuestNpc(arg1, npcs.Npc21175Data.id, 0)
end

function Quest74005:OnSubFinish7400525(arg1)
    print("OnSubFinish7400525")
    this:SafeDestroyQuestNpc(npcs.Npc21175Data.alias, 3)
end

function Quest74005:OnSubStart7400526(arg1)
    print("OnSubStart7400526")
    this:CreateQuestNpc(arg1, npcs.Npc21177Data.id, 0)
end

function Quest74005:OnSubFinish7400526(arg1)
    print("OnSubFinish7400526")
    this:SafeDestroyQuestNpc(npcs.Npc21177Data.alias, 3)
end

function Quest74005:OnSubStart7400527(arg1)
    print("OnSubStart7400527")
    this:CreateQuestNpc(arg1, npcs.Npc21176Data.id, 0)
end

function Quest74005:OnSubFinish7400527(arg1)
    print("OnSubFinish7400527")
    this:SafeDestroyQuestNpc(npcs.Npc21176Data.alias, 3)
end

function Quest74005:OnSubStart7400528(arg1)
    print("OnSubStart7400528")
    this:CreateQuestNpc(arg1, npcs.Npc21174Data.id, 0)
end

function Quest74005:OnSubFinish7400528(arg1)
    print("OnSubFinish7400528")
    this:SafeDestroyQuestNpc(npcs.Npc21174Data.alias, 3)
end

function Quest74005:OnSubStart7400523(arg1)
    print("OnSubStart7400523")
    this:CreateQuestNpc(arg1, npcs.Npc21178Data.id, 0)
end

function Quest74005:OnSubFinish7400523(arg1)
    print("OnSubFinish7400523")
    this:SafeDestroyQuestNpc(npcs.Npc21178Data.alias, 3)
end

function Quest74005:OnSubStart7400507(arg1)
    print("OnSubStart7400507")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400507Trigger", "Actor/Gadget/Q7400507Trigger", 70900002, 0, points.TPos_Q7400507Trigger.pos, points.TPos_Q7400507Trigger.rot, true, false, 3, nil, 0, 0)
end

function Quest74005:OnSubFinish7400507(arg1)
    print("OnSubFinish7400507")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_03)
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74005:OnSubStart7400508(arg1)
    print("OnSubStart7400508")
    actorMgr:CreateActorWithPos("Q7400508Trigger", "Actor/Gadget/Q7400508Trigger", 70900002, 0, {x = 2668.166, y = 214.544, z = 5021.487}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400508(arg1)
    print("OnSubFinish7400508")
end

function Quest74005:OnSubStart7400509(arg1)
    print("OnSubStart7400509")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    this:RequestInteraction(npcs.Npc20985Data.alias)
end

function Quest74005:OnSubFinish7400509(arg1)
    print("OnSubFinish7400509")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74005:OnSubStart7400511(arg1)
    print("OnSubStart7400511")
end

function Quest74005:OnSubFinish7400511(arg1)
    print("OnSubFinish7400511")
end

function Quest74005:OnSubStart7400512(arg1)
    print("OnSubStart7400512")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
end

function Quest74005:OnSubFinish7400512(arg1)
    print("OnSubFinish7400512")
    this:SafeDestroyQuestNpc(npcs.Npc5301Data.alias, 3)
end

function Quest74005:OnSubStart7400513(arg1)
    print("OnSubStart7400513")
end

function Quest74005:OnSubFinish7400513(arg1)
    print("OnSubFinish7400513")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_05)
end

function Quest74005:OnSubStart7400521(arg1)
    print("OnSubStart7400521")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    this:RequestInteraction(npcs.Npc20985Data.alias)
    actorMgr:CreateActorWithPos("Q7400521Trigger", "Actor/Gadget/Q7400521Trigger", 70900002, 0, {x = 2548.018, y = 245.124, z = 4808.807}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400521(arg1)
    print("OnSubFinish7400521")
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74005:OnSubStart7400514(arg1)
    print("OnSubStart7400514")
end

function Quest74005:OnSubFinish7400514(arg1)
    print("OnSubFinish7400514")
end

function Quest74005:OnSubStart7400524(arg1)
    print("OnSubStart7400524")
end

function Quest74005:OnSubFinish7400524(arg1)
    print("OnSubFinish7400524")
end

function Quest74005:OnSubStart7400532(arg1)
    print("OnSubStart7400532")
end

function Quest74005:OnSubFinish7400532(arg1)
    print("OnSubFinish7400532")
end

function Quest74005:OnSubStart7400522(arg1)
    print("OnSubStart7400522")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
end

function Quest74005:OnSubFinish7400522(arg1)
    print("OnSubFinish7400522")
end

function Quest74005:OnSubStart7400515(arg1)
    print("OnSubStart7400515")
    this:CreateQuestNpc(arg1, npcs.Npc20985Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400515Trigger", "Actor/Gadget/Q7400515Trigger", 70900002, 0, {x = 2445.806, y = 242.093, z = 4988.826}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest74005:OnSubFinish7400515(arg1)
    print("OnSubFinish7400515")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_jakobbattle)
    this:SafeDestroyQuestNpc(npcs.Npc20985Data.alias, 3)
end

function Quest74005:OnSubStart7400529(arg1)
    print("OnSubStart7400529")
end

function Quest74005:OnSubFinish7400529(arg1)
    print("OnSubFinish7400529")
end

function Quest74005:OnSubStart7400516(arg1)
    print("OnSubStart7400516")
end

function Quest74005:OnSubFinish7400516(arg1)
    print("OnSubFinish7400516")
end

function Quest74005:OnSubStart7400517(arg1)
    print("OnSubStart7400517")
    this:CreateQuestNpc(arg1, npcs.Npc5301Data.id, 0)
    this:RequestInteraction(npcs.Npc5301Data.alias)
end

function Quest74005:OnSubFinish7400517(arg1)
    print("OnSubFinish7400517")
    this:SafeDestroyQuestNpc(npcs.Npc5301Data.alias, 3)
end

function Quest74005:OnSubStart7400530(arg1)
    print("OnSubStart7400530")
end

function Quest74005:OnSubFinish7400530(arg1)
    print("OnSubFinish7400530")
end

function Quest74005:OnSubStart7400531(arg1)
    print("OnSubStart7400531")
end

function Quest74005:OnSubFinish7400531(arg1)
    print("OnSubFinish7400531")
end

function Quest74005:OnSubStart7400510(arg1)
    print("OnSubStart7400510")
end

function Quest74005:OnSubFinish7400510(arg1)
    print("OnSubFinish7400510")
end

return Quest74005
