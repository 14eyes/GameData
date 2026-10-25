require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73235 = class("Quest73235", QuestActorProxy)
Quest73235.defaultAlias = "Quest73235"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73235:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73235:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7323513"] = self.OnSubStart7323513,
        ["7323514"] = self.OnSubStart7323514,
        ["7323515"] = self.OnSubStart7323515,
        ["7323552"] = self.OnSubStart7323552,
        ["7323501"] = self.OnSubStart7323501,
        ["7323502"] = self.OnSubStart7323502,
        ["7323504"] = self.OnSubStart7323504,
        ["7323503"] = self.OnSubStart7323503,
        ["7323508"] = self.OnSubStart7323508,
        ["7323551"] = self.OnSubStart7323551,
        ["7323505"] = self.OnSubStart7323505,
        ["7323507"] = self.OnSubStart7323507,
        ["7323512"] = self.OnSubStart7323512,
        ["7323506"] = self.OnSubStart7323506,
        ["7323540"] = self.OnSubStart7323540,
        ["7323541"] = self.OnSubStart7323541,
        ["7323542"] = self.OnSubStart7323542,
        ["7323543"] = self.OnSubStart7323543,
        ["7323544"] = self.OnSubStart7323544,
        ["7323545"] = self.OnSubStart7323545,
        ["7323546"] = self.OnSubStart7323546,
        ["7323547"] = self.OnSubStart7323547,
        ["7323548"] = self.OnSubStart7323548,
        ["7323549"] = self.OnSubStart7323549,
        ["7323550"] = self.OnSubStart7323550,
        ["7323510"] = self.OnSubStart7323510,
        ["7323519"] = self.OnSubStart7323519,
        ["7323522"] = self.OnSubStart7323522,
        ["7323511"] = self.OnSubStart7323511,
        ["7323516"] = self.OnSubStart7323516,
        ["7323517"] = self.OnSubStart7323517,
        ["7323533"] = self.OnSubStart7323533,
        ["7323532"] = self.OnSubStart7323532,
        ["7323531"] = self.OnSubStart7323531,
        ["7323530"] = self.OnSubStart7323530,
        ["7323529"] = self.OnSubStart7323529,
        ["7323523"] = self.OnSubStart7323523,
        ["7323524"] = self.OnSubStart7323524,
        ["7323525"] = self.OnSubStart7323525,
        ["7323526"] = self.OnSubStart7323526,
        ["7323527"] = self.OnSubStart7323527,
        ["7323518"] = self.OnSubStart7323518,
        ["7323539"] = self.OnSubStart7323539,
        ["7323538"] = self.OnSubStart7323538,
        ["7323537"] = self.OnSubStart7323537,
        ["7323536"] = self.OnSubStart7323536,
        ["7323535"] = self.OnSubStart7323535,
        ["7323534"] = self.OnSubStart7323534,
        ["7323520"] = self.OnSubStart7323520,
        ["7323528"] = self.OnSubStart7323528,
        ["7323521"] = self.OnSubStart7323521,
        ["7323509"] = self.OnSubStart7323509
    }
end

function Quest73235:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7323513"] = self.OnSubFinish7323513,
        ["7323514"] = self.OnSubFinish7323514,
        ["7323515"] = self.OnSubFinish7323515,
        ["7323552"] = self.OnSubFinish7323552,
        ["7323501"] = self.OnSubFinish7323501,
        ["7323502"] = self.OnSubFinish7323502,
        ["7323504"] = self.OnSubFinish7323504,
        ["7323503"] = self.OnSubFinish7323503,
        ["7323508"] = self.OnSubFinish7323508,
        ["7323551"] = self.OnSubFinish7323551,
        ["7323505"] = self.OnSubFinish7323505,
        ["7323507"] = self.OnSubFinish7323507,
        ["7323512"] = self.OnSubFinish7323512,
        ["7323506"] = self.OnSubFinish7323506,
        ["7323540"] = self.OnSubFinish7323540,
        ["7323541"] = self.OnSubFinish7323541,
        ["7323542"] = self.OnSubFinish7323542,
        ["7323543"] = self.OnSubFinish7323543,
        ["7323544"] = self.OnSubFinish7323544,
        ["7323545"] = self.OnSubFinish7323545,
        ["7323546"] = self.OnSubFinish7323546,
        ["7323547"] = self.OnSubFinish7323547,
        ["7323548"] = self.OnSubFinish7323548,
        ["7323549"] = self.OnSubFinish7323549,
        ["7323550"] = self.OnSubFinish7323550,
        ["7323510"] = self.OnSubFinish7323510,
        ["7323519"] = self.OnSubFinish7323519,
        ["7323522"] = self.OnSubFinish7323522,
        ["7323511"] = self.OnSubFinish7323511,
        ["7323516"] = self.OnSubFinish7323516,
        ["7323517"] = self.OnSubFinish7323517,
        ["7323533"] = self.OnSubFinish7323533,
        ["7323532"] = self.OnSubFinish7323532,
        ["7323531"] = self.OnSubFinish7323531,
        ["7323530"] = self.OnSubFinish7323530,
        ["7323529"] = self.OnSubFinish7323529,
        ["7323523"] = self.OnSubFinish7323523,
        ["7323524"] = self.OnSubFinish7323524,
        ["7323525"] = self.OnSubFinish7323525,
        ["7323526"] = self.OnSubFinish7323526,
        ["7323527"] = self.OnSubFinish7323527,
        ["7323518"] = self.OnSubFinish7323518,
        ["7323539"] = self.OnSubFinish7323539,
        ["7323538"] = self.OnSubFinish7323538,
        ["7323537"] = self.OnSubFinish7323537,
        ["7323536"] = self.OnSubFinish7323536,
        ["7323535"] = self.OnSubFinish7323535,
        ["7323534"] = self.OnSubFinish7323534,
        ["7323520"] = self.OnSubFinish7323520,
        ["7323528"] = self.OnSubFinish7323528,
        ["7323521"] = self.OnSubFinish7323521,
        ["7323509"] = self.OnSubFinish7323509
    }
end

function Quest73235:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73235:Start()
    print("Start")
end

function Quest73235:OnDestroy()
    print("OnDestroy")
end

function Quest73235:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73235:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73235:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73235:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest73235:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73235:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73235:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7323551)
    end
end

function Quest73235:OnSubStart7323513(arg1)
    print("OnSubStart7323513")
end

function Quest73235:OnSubFinish7323513(arg1)
    print("OnSubFinish7323513")
end

function Quest73235:OnSubStart7323514(arg1)
    print("OnSubStart7323514")
end

function Quest73235:OnSubFinish7323514(arg1)
    print("OnSubFinish7323514")
end

function Quest73235:OnSubStart7323515(arg1)
    print("OnSubStart7323515")
end

function Quest73235:OnSubFinish7323515(arg1)
    print("OnSubFinish7323515")
end

function Quest73235:OnSubStart7323552(arg1)
    print("OnSubStart7323552")
end

function Quest73235:OnSubFinish7323552(arg1)
    print("OnSubFinish7323552")
end

function Quest73235:OnSubStart7323501(arg1)
    print("OnSubStart7323501")
    actorMgr:CreateActorWithPos("Q7323501Trigger", "Actor/Gadget/Q7323501Trigger", 70900002, 0, points.TPos_Q7323501Trigger.pos, points.TPos_Q7323501Trigger.rot, true, false, 3)
end

function Quest73235:OnSubFinish7323501(arg1)
    print("OnSubFinish7323501")
end

function Quest73235:OnSubStart7323502(arg1)
    print("OnSubStart7323502")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
    actorMgr:CreateActorWithPos("Q7323502Trigger", "Actor/Gadget/Q7323502Trigger", 70900002, 0, points.TPos_Q7323502Trigger.pos, points.TPos_Q7323502Trigger.rot, true, false, 3)
end

function Quest73235:OnSubFinish7323502(arg1)
    print("OnSubFinish7323502")
end

function Quest73235:OnSubStart7323504(arg1)
    print("OnSubStart7323504")
    this:CreateQuestNpc(arg1, npcs.Npc4283Data.id, 1)
    this:RequestInteraction(npcs.Npc4283Data.alias)
end

function Quest73235:OnSubFinish7323504(arg1)
    print("OnSubFinish7323504")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73235:OnSubStart7323503(arg1)
    print("OnSubStart7323503")
    actorMgr:CreateActorWithPos("Q7323503Trigger", "Actor/Gadget/Q7323503Trigger", 70900002, 0, points.TPos_Q7323503Trigger.pos, points.TPos_Q7323503Trigger.rot, true, false, 3)
end

function Quest73235:OnSubFinish7323503(arg1)
    print("OnSubFinish7323503")
end

function Quest73235:OnSubStart7323508(arg1)
    print("OnSubStart7323508")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73235:OnSubFinish7323508(arg1)
    print("OnSubFinish7323508")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73235:OnSubStart7323551(arg1)
    print("OnSubStart7323551")
end

function Quest73235:OnSubFinish7323551(arg1)
    print("OnSubFinish7323551")
end

function Quest73235:OnSubStart7323505(arg1)
    print("OnSubStart7323505")
    actorMgr:CreateActorWithPos("Q7323505Trigger", "Actor/Gadget/Q7323505Trigger", 70900002, 0, points.TPos_Q7323505Trigger.pos, points.TPos_Q7323505Trigger.rot, true, false)
end

function Quest73235:OnSubFinish7323505(arg1)
    print("OnSubFinish7323505")
end

function Quest73235:OnSubStart7323507(arg1)
    print("OnSubStart7323507")
end

function Quest73235:OnSubFinish7323507(arg1)
    print("OnSubFinish7323507")
end

function Quest73235:OnSubStart7323512(arg1)
    print("OnSubStart7323512")
end

function Quest73235:OnSubFinish7323512(arg1)
    print("OnSubFinish7323512")
end

function Quest73235:OnSubStart7323506(arg1)
    print("OnSubStart7323506")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73235:OnSubFinish7323506(arg1)
    print("OnSubFinish7323506")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
end

function Quest73235:OnSubStart7323540(arg1)
    print("OnSubStart7323540")
end

function Quest73235:OnSubFinish7323540(arg1)
    print("OnSubFinish7323540")
end

function Quest73235:OnSubStart7323541(arg1)
    print("OnSubStart7323541")
end

function Quest73235:OnSubFinish7323541(arg1)
    print("OnSubFinish7323541")
end

function Quest73235:OnSubStart7323542(arg1)
    print("OnSubStart7323542")
end

function Quest73235:OnSubFinish7323542(arg1)
    print("OnSubFinish7323542")
end

function Quest73235:OnSubStart7323543(arg1)
    print("OnSubStart7323543")
end

function Quest73235:OnSubFinish7323543(arg1)
    print("OnSubFinish7323543")
end

function Quest73235:OnSubStart7323544(arg1)
    print("OnSubStart7323544")
end

function Quest73235:OnSubFinish7323544(arg1)
    print("OnSubFinish7323544")
end

function Quest73235:OnSubStart7323545(arg1)
    print("OnSubStart7323545")
end

function Quest73235:OnSubFinish7323545(arg1)
    print("OnSubFinish7323545")
end

function Quest73235:OnSubStart7323546(arg1)
    print("OnSubStart7323546")
end

function Quest73235:OnSubFinish7323546(arg1)
    print("OnSubFinish7323546")
end

function Quest73235:OnSubStart7323547(arg1)
    print("OnSubStart7323547")
end

function Quest73235:OnSubFinish7323547(arg1)
    print("OnSubFinish7323547")
end

function Quest73235:OnSubStart7323548(arg1)
    print("OnSubStart7323548")
end

function Quest73235:OnSubFinish7323548(arg1)
    print("OnSubFinish7323548")
end

function Quest73235:OnSubStart7323549(arg1)
    print("OnSubStart7323549")
end

function Quest73235:OnSubFinish7323549(arg1)
    print("OnSubFinish7323549")
end

function Quest73235:OnSubStart7323550(arg1)
    print("OnSubStart7323550")
end

function Quest73235:OnSubFinish7323550(arg1)
    print("OnSubFinish7323550")
end

function Quest73235:OnSubStart7323510(arg1)
    print("OnSubStart7323510")
    actorMgr:CreateActorWithPos("Q7323513Trigger", "Actor/Gadget/Q7323513Trigger", 70900002, 0, points.TPos_Q7323513Trigger.pos, points.TPos_Q7323513Trigger.rot, true, false)
end

function Quest73235:OnSubFinish7323510(arg1)
    print("OnSubFinish7323510")
    this:ActorDestroy("Q7323513Trigger")
end

function Quest73235:OnSubStart7323519(arg1)
    print("OnSubStart7323519")
    actorMgr:CreateActorWithPos("Q7323514Trigger", "Actor/Gadget/Q7323514Trigger", 70900002, 0, points.TPos_Q7323514Trigger.pos, points.TPos_Q7323514Trigger.rot, true, false)
end

function Quest73235:OnSubFinish7323519(arg1)
    print("OnSubFinish7323519")
    this:ActorDestroy("Q7323514Trigger")
end

function Quest73235:OnSubStart7323522(arg1)
    print("OnSubStart7323522")
    actorMgr:CreateActorWithPos("Q7323515Trigger", "Actor/Gadget/Q7323515Trigger", 70900002, 0, points.TPos_Q7323515Trigger.pos, points.TPos_Q7323515Trigger.rot, true, false)
end

function Quest73235:OnSubFinish7323522(arg1)
    print("OnSubFinish7323522")
    this:ActorDestroy("Q7323515Trigger")
end

function Quest73235:OnSubStart7323511(arg1)
    print("OnSubStart7323511")
end

function Quest73235:OnSubFinish7323511(arg1)
    print("OnSubFinish7323511")
end

function Quest73235:OnSubStart7323516(arg1)
    print("OnSubStart7323516")
    actorMgr:CreateActorWithPos("Q7323516Trigger", "Actor/Gadget/Q7323516Trigger", 70900002, 0, {x = 996.157, y = 410.333, z = 6035.836}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73235:OnSubFinish7323516(arg1)
    print("OnSubFinish7323516")
end

function Quest73235:OnSubStart7323517(arg1)
    print("OnSubStart7323517")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4283Data.id, 1, npcs.Npc4283Data.alias)
end

function Quest73235:OnSubFinish7323517(arg1)
    print("OnSubFinish7323517")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4283Data.alias)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId20)
    end)
end

function Quest73235:OnSubStart7323533(arg1)
    print("OnSubStart7323533")
end

function Quest73235:OnSubFinish7323533(arg1)
    print("OnSubFinish7323533")
end

function Quest73235:OnSubStart7323532(arg1)
    print("OnSubStart7323532")
end

function Quest73235:OnSubFinish7323532(arg1)
    print("OnSubFinish7323532")
end

function Quest73235:OnSubStart7323531(arg1)
    print("OnSubStart7323531")
end

function Quest73235:OnSubFinish7323531(arg1)
    print("OnSubFinish7323531")
end

function Quest73235:OnSubStart7323530(arg1)
    print("OnSubStart7323530")
end

function Quest73235:OnSubFinish7323530(arg1)
    print("OnSubFinish7323530")
end

function Quest73235:OnSubStart7323529(arg1)
    print("OnSubStart7323529")
end

function Quest73235:OnSubFinish7323529(arg1)
    print("OnSubFinish7323529")
end

function Quest73235:OnSubStart7323523(arg1)
    print("OnSubStart7323523")
end

function Quest73235:OnSubFinish7323523(arg1)
    print("OnSubFinish7323523")
end

function Quest73235:OnSubStart7323524(arg1)
    print("OnSubStart7323524")
end

function Quest73235:OnSubFinish7323524(arg1)
    print("OnSubFinish7323524")
end

function Quest73235:OnSubStart7323525(arg1)
    print("OnSubStart7323525")
end

function Quest73235:OnSubFinish7323525(arg1)
    print("OnSubFinish7323525")
end

function Quest73235:OnSubStart7323526(arg1)
    print("OnSubStart7323526")
end

function Quest73235:OnSubFinish7323526(arg1)
    print("OnSubFinish7323526")
end

function Quest73235:OnSubStart7323527(arg1)
    print("OnSubStart7323527")
end

function Quest73235:OnSubFinish7323527(arg1)
    print("OnSubFinish7323527")
end

function Quest73235:OnSubStart7323518(arg1)
    print("OnSubStart7323518")
end

function Quest73235:OnSubFinish7323518(arg1)
    print("OnSubFinish7323518")
end

function Quest73235:OnSubStart7323539(arg1)
    print("OnSubStart7323539")
end

function Quest73235:OnSubFinish7323539(arg1)
    print("OnSubFinish7323539")
end

function Quest73235:OnSubStart7323538(arg1)
    print("OnSubStart7323538")
end

function Quest73235:OnSubFinish7323538(arg1)
    print("OnSubFinish7323538")
end

function Quest73235:OnSubStart7323537(arg1)
    print("OnSubStart7323537")
end

function Quest73235:OnSubFinish7323537(arg1)
    print("OnSubFinish7323537")
end

function Quest73235:OnSubStart7323536(arg1)
    print("OnSubStart7323536")
end

function Quest73235:OnSubFinish7323536(arg1)
    print("OnSubFinish7323536")
end

function Quest73235:OnSubStart7323535(arg1)
    print("OnSubStart7323535")
end

function Quest73235:OnSubFinish7323535(arg1)
    print("OnSubFinish7323535")
end

function Quest73235:OnSubStart7323534(arg1)
    print("OnSubStart7323534")
end

function Quest73235:OnSubFinish7323534(arg1)
    print("OnSubFinish7323534")
end

function Quest73235:OnSubStart7323520(arg1)
    print("OnSubStart7323520")
    this:PlayCutsceneIndex(7323520, function(arg1)
        actorUtils.FinishQuestID(false, 7323520)
    end, nil, nil, false)
end

function Quest73235:OnSubFinish7323520(arg1)
    print("OnSubFinish7323520")
end

function Quest73235:OnSubStart7323528(arg1)
    print("OnSubStart7323528")
end

function Quest73235:OnSubFinish7323528(arg1)
    print("OnSubFinish7323528")
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
end

function Quest73235:OnSubStart7323521(arg1)
    print("OnSubStart7323521")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20892Data.id, 1, npcs.Npc20892Data.alias)
end

function Quest73235:OnSubFinish7323521(arg1)
    print("OnSubFinish7323521")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20892Data.alias)
end

function Quest73235:OnSubStart7323509(arg1)
    print("OnSubStart7323509")
    this:CallDelay(1, function(arg1)
        actorUtils.FinishQuestID(false, 7323509)
    end)
end

function Quest73235:OnSubFinish7323509(arg1)
    print("OnSubFinish7323509")
end

return Quest73235
