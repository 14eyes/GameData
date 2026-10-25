require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4015 = class("Quest4015", QuestActorProxy)
Quest4015.defaultAlias = "Quest4015"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4015:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401501"] = self.OnSubStart401501,
        ["401502"] = self.OnSubStart401502,
        ["401503"] = self.OnSubStart401503,
        ["401517"] = self.OnSubStart401517,
        ["401521"] = self.OnSubStart401521,
        ["401518"] = self.OnSubStart401518,
        ["401570"] = self.OnSubStart401570,
        ["401571"] = self.OnSubStart401571,
        ["401519"] = self.OnSubStart401519,
        ["401526"] = self.OnSubStart401526,
        ["401566"] = self.OnSubStart401566,
        ["401504"] = self.OnSubStart401504,
        ["401505"] = self.OnSubStart401505,
        ["401506"] = self.OnSubStart401506,
        ["401549"] = self.OnSubStart401549,
        ["401567"] = self.OnSubStart401567,
        ["401547"] = self.OnSubStart401547,
        ["401507"] = self.OnSubStart401507,
        ["401522"] = self.OnSubStart401522,
        ["401527"] = self.OnSubStart401527,
        ["401569"] = self.OnSubStart401569,
        ["401523"] = self.OnSubStart401523,
        ["401578"] = self.OnSubStart401578,
        ["401579"] = self.OnSubStart401579,
        ["401580"] = self.OnSubStart401580,
        ["401550"] = self.OnSubStart401550,
        ["401568"] = self.OnSubStart401568,
        ["401558"] = self.OnSubStart401558,
        ["401559"] = self.OnSubStart401559,
        ["401560"] = self.OnSubStart401560,
        ["401561"] = self.OnSubStart401561,
        ["401587"] = self.OnSubStart401587,
        ["401588"] = self.OnSubStart401588,
        ["401589"] = self.OnSubStart401589,
        ["401508"] = self.OnSubStart401508,
        ["401536"] = self.OnSubStart401536,
        ["401537"] = self.OnSubStart401537,
        ["401538"] = self.OnSubStart401538,
        ["401539"] = self.OnSubStart401539,
        ["401540"] = self.OnSubStart401540,
        ["401541"] = self.OnSubStart401541,
        ["401557"] = self.OnSubStart401557,
        ["401509"] = self.OnSubStart401509,
        ["401510"] = self.OnSubStart401510,
        ["401551"] = self.OnSubStart401551,
        ["401511"] = self.OnSubStart401511,
        ["401532"] = self.OnSubStart401532,
        ["401534"] = self.OnSubStart401534,
        ["401512"] = self.OnSubStart401512,
        ["401520"] = self.OnSubStart401520,
        ["401513"] = self.OnSubStart401513,
        ["401524"] = self.OnSubStart401524,
        ["401530"] = self.OnSubStart401530,
        ["401572"] = self.OnSubStart401572,
        ["401574"] = self.OnSubStart401574,
        ["401525"] = self.OnSubStart401525,
        ["401581"] = self.OnSubStart401581,
        ["401582"] = self.OnSubStart401582,
        ["401583"] = self.OnSubStart401583,
        ["401552"] = self.OnSubStart401552,
        ["401514"] = self.OnSubStart401514,
        ["401528"] = self.OnSubStart401528,
        ["401575"] = self.OnSubStart401575,
        ["401576"] = self.OnSubStart401576,
        ["401577"] = self.OnSubStart401577,
        ["401529"] = self.OnSubStart401529,
        ["401531"] = self.OnSubStart401531,
        ["401584"] = self.OnSubStart401584,
        ["401585"] = self.OnSubStart401585,
        ["401586"] = self.OnSubStart401586,
        ["401533"] = self.OnSubStart401533,
        ["401535"] = self.OnSubStart401535,
        ["401562"] = self.OnSubStart401562,
        ["401563"] = self.OnSubStart401563,
        ["401564"] = self.OnSubStart401564,
        ["401565"] = self.OnSubStart401565,
        ["401590"] = self.OnSubStart401590,
        ["401591"] = self.OnSubStart401591,
        ["401592"] = self.OnSubStart401592,
        ["401515"] = self.OnSubStart401515,
        ["401542"] = self.OnSubStart401542,
        ["401543"] = self.OnSubStart401543,
        ["401593"] = self.OnSubStart401593,
        ["401544"] = self.OnSubStart401544,
        ["401545"] = self.OnSubStart401545,
        ["401546"] = self.OnSubStart401546,
        ["401553"] = self.OnSubStart401553,
        ["401554"] = self.OnSubStart401554,
        ["401555"] = self.OnSubStart401555,
        ["401556"] = self.OnSubStart401556,
        ["401516"] = self.OnSubStart401516,
        ["401573"] = self.OnSubStart401573
    }
end

function Quest4015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401501"] = self.OnSubFinish401501,
        ["401502"] = self.OnSubFinish401502,
        ["401503"] = self.OnSubFinish401503,
        ["401517"] = self.OnSubFinish401517,
        ["401521"] = self.OnSubFinish401521,
        ["401518"] = self.OnSubFinish401518,
        ["401570"] = self.OnSubFinish401570,
        ["401571"] = self.OnSubFinish401571,
        ["401519"] = self.OnSubFinish401519,
        ["401526"] = self.OnSubFinish401526,
        ["401566"] = self.OnSubFinish401566,
        ["401504"] = self.OnSubFinish401504,
        ["401505"] = self.OnSubFinish401505,
        ["401506"] = self.OnSubFinish401506,
        ["401549"] = self.OnSubFinish401549,
        ["401567"] = self.OnSubFinish401567,
        ["401547"] = self.OnSubFinish401547,
        ["401507"] = self.OnSubFinish401507,
        ["401522"] = self.OnSubFinish401522,
        ["401527"] = self.OnSubFinish401527,
        ["401569"] = self.OnSubFinish401569,
        ["401523"] = self.OnSubFinish401523,
        ["401578"] = self.OnSubFinish401578,
        ["401579"] = self.OnSubFinish401579,
        ["401580"] = self.OnSubFinish401580,
        ["401550"] = self.OnSubFinish401550,
        ["401568"] = self.OnSubFinish401568,
        ["401558"] = self.OnSubFinish401558,
        ["401559"] = self.OnSubFinish401559,
        ["401560"] = self.OnSubFinish401560,
        ["401561"] = self.OnSubFinish401561,
        ["401587"] = self.OnSubFinish401587,
        ["401588"] = self.OnSubFinish401588,
        ["401589"] = self.OnSubFinish401589,
        ["401508"] = self.OnSubFinish401508,
        ["401536"] = self.OnSubFinish401536,
        ["401537"] = self.OnSubFinish401537,
        ["401538"] = self.OnSubFinish401538,
        ["401539"] = self.OnSubFinish401539,
        ["401540"] = self.OnSubFinish401540,
        ["401541"] = self.OnSubFinish401541,
        ["401557"] = self.OnSubFinish401557,
        ["401509"] = self.OnSubFinish401509,
        ["401510"] = self.OnSubFinish401510,
        ["401551"] = self.OnSubFinish401551,
        ["401511"] = self.OnSubFinish401511,
        ["401532"] = self.OnSubFinish401532,
        ["401534"] = self.OnSubFinish401534,
        ["401512"] = self.OnSubFinish401512,
        ["401520"] = self.OnSubFinish401520,
        ["401513"] = self.OnSubFinish401513,
        ["401524"] = self.OnSubFinish401524,
        ["401530"] = self.OnSubFinish401530,
        ["401572"] = self.OnSubFinish401572,
        ["401574"] = self.OnSubFinish401574,
        ["401525"] = self.OnSubFinish401525,
        ["401581"] = self.OnSubFinish401581,
        ["401582"] = self.OnSubFinish401582,
        ["401583"] = self.OnSubFinish401583,
        ["401552"] = self.OnSubFinish401552,
        ["401514"] = self.OnSubFinish401514,
        ["401528"] = self.OnSubFinish401528,
        ["401575"] = self.OnSubFinish401575,
        ["401576"] = self.OnSubFinish401576,
        ["401577"] = self.OnSubFinish401577,
        ["401529"] = self.OnSubFinish401529,
        ["401531"] = self.OnSubFinish401531,
        ["401584"] = self.OnSubFinish401584,
        ["401585"] = self.OnSubFinish401585,
        ["401586"] = self.OnSubFinish401586,
        ["401533"] = self.OnSubFinish401533,
        ["401535"] = self.OnSubFinish401535,
        ["401562"] = self.OnSubFinish401562,
        ["401563"] = self.OnSubFinish401563,
        ["401564"] = self.OnSubFinish401564,
        ["401565"] = self.OnSubFinish401565,
        ["401590"] = self.OnSubFinish401590,
        ["401591"] = self.OnSubFinish401591,
        ["401592"] = self.OnSubFinish401592,
        ["401515"] = self.OnSubFinish401515,
        ["401542"] = self.OnSubFinish401542,
        ["401543"] = self.OnSubFinish401543,
        ["401593"] = self.OnSubFinish401593,
        ["401544"] = self.OnSubFinish401544,
        ["401545"] = self.OnSubFinish401545,
        ["401546"] = self.OnSubFinish401546,
        ["401553"] = self.OnSubFinish401553,
        ["401554"] = self.OnSubFinish401554,
        ["401555"] = self.OnSubFinish401555,
        ["401556"] = self.OnSubFinish401556,
        ["401516"] = self.OnSubFinish401516,
        ["401573"] = self.OnSubFinish401573
    }
end

function Quest4015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["401537"] = self.OnSubFailed401537,
        ["401540"] = self.OnSubFailed401540,
        ["401514"] = self.OnSubFailed401514,
        ["401543"] = self.OnSubFailed401543,
        ["401545"] = self.OnSubFailed401545
    }
end

function Quest4015:Start()
    print("Start")
end

function Quest4015:OnDestroy()
    print("OnDestroy")
end

function Quest4015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4015:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4015:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest4015:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4015:OnSubStart401501(arg1)
    print("OnSubStart401501")
end

function Quest4015:OnSubFinish401501(arg1)
    print("OnSubFinish401501")
end

function Quest4015:OnSubStart401502(arg1)
    print("OnSubStart401502")
end

function Quest4015:OnSubFinish401502(arg1)
    print("OnSubFinish401502")
end

function Quest4015:OnSubStart401503(arg1)
    print("OnSubStart401503")
end

function Quest4015:OnSubFinish401503(arg1)
    print("OnSubFinish401503")
end

function Quest4015:OnSubStart401517(arg1)
    print("OnSubStart401517")
end

function Quest4015:OnSubFinish401517(arg1)
    print("OnSubFinish401517")
end

function Quest4015:OnSubStart401521(arg1)
    print("OnSubStart401521")
end

function Quest4015:OnSubFinish401521(arg1)
    print("OnSubFinish401521")
end

function Quest4015:OnSubStart401518(arg1)
    print("OnSubStart401518")
end

function Quest4015:OnSubFinish401518(arg1)
    print("OnSubFinish401518")
end

function Quest4015:OnSubStart401570(arg1)
    print("OnSubStart401570")
end

function Quest4015:OnSubFinish401570(arg1)
    print("OnSubFinish401570")
end

function Quest4015:OnSubStart401571(arg1)
    print("OnSubStart401571")
end

function Quest4015:OnSubFinish401571(arg1)
    print("OnSubFinish401571")
end

function Quest4015:OnSubStart401519(arg1)
    print("OnSubStart401519")
end

function Quest4015:OnSubFinish401519(arg1)
    print("OnSubFinish401519")
end

function Quest4015:OnSubStart401526(arg1)
    print("OnSubStart401526")
end

function Quest4015:OnSubFinish401526(arg1)
    print("OnSubFinish401526")
end

function Quest4015:OnSubStart401566(arg1)
    print("OnSubStart401566")
end

function Quest4015:OnSubFinish401566(arg1)
    print("OnSubFinish401566")
end

function Quest4015:OnSubStart401504(arg1)
    print("OnSubStart401504")
    this:CreateQuestNpc(arg1, npcs.Npc13512Data.id, 0)
    actorMgr:CreateActorWithPos("Q401504zaoqiTrigger", "Actor/Gadget/Q401504zaoqiTrigger", 70900002, 0, points.TPos_Q401504zaoqiTrigger.pos, points.TPos_Q401504zaoqiTrigger.rot, true, false, 3)
end

function Quest4015:OnSubFinish401504(arg1)
    print("OnSubFinish401504")
    this:ActorDestroy("Q401504zaoqiTrigger")
    this:NpcDestroy(npcs.Npc13512Data.alias, 3)
end

function Quest4015:OnSubStart401505(arg1)
    print("OnSubStart401505")
end

function Quest4015:OnSubFinish401505(arg1)
    print("OnSubFinish401505")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId13qudagong, 4, nil, nil)
end

function Quest4015:OnSubStart401506(arg1)
    print("OnSubStart401506")
end

function Quest4015:OnSubFinish401506(arg1)
    print("OnSubFinish401506")
end

function Quest4015:OnSubStart401549(arg1)
    print("OnSubStart401549")
end

function Quest4015:OnSubFinish401549(arg1)
    print("OnSubFinish401549")
end

function Quest4015:OnSubStart401567(arg1)
    print("OnSubStart401567")
end

function Quest4015:OnSubFinish401567(arg1)
    print("OnSubFinish401567")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId13qudagong, 4, nil, nil)
end

function Quest4015:OnSubStart401547(arg1)
    print("OnSubStart401547")
end

function Quest4015:OnSubFinish401547(arg1)
    print("OnSubFinish401547")
end

function Quest4015:OnSubStart401507(arg1)
    print("OnSubStart401507")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    actorMgr:CreateActorWithPos("Q401507Triggerdagong", "Actor/Gadget/Q401507Triggerdagong", 70900002, 0, points.TPos_Q401507Triggerdagong.pos, points.TPos_Q401507Triggerdagong.rot, true, false, 3)
end

function Quest4015:OnSubFinish401507(arg1)
    print("OnSubFinish401507")
    this:ActorDestroy("Q401507Triggerdagong")
end

function Quest4015:OnSubStart401522(arg1)
    print("OnSubStart401522")
end

function Quest4015:OnSubFinish401522(arg1)
    print("OnSubFinish401522")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 4015)
end

function Quest4015:OnSubStart401527(arg1)
    print("OnSubStart401527")
end

function Quest4015:OnSubFinish401527(arg1)
    print("OnSubFinish401527")
end

function Quest4015:OnSubStart401569(arg1)
    print("OnSubStart401569")
end

function Quest4015:OnSubFinish401569(arg1)
    print("OnSubFinish401569")
end

function Quest4015:OnSubStart401523(arg1)
    print("OnSubStart401523")
end

function Quest4015:OnSubFinish401523(arg1)
    print("OnSubFinish401523")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId15huishitang, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
end

function Quest4015:OnSubStart401578(arg1)
    print("OnSubStart401578")
end

function Quest4015:OnSubFinish401578(arg1)
    print("OnSubFinish401578")
end

function Quest4015:OnSubStart401579(arg1)
    print("OnSubStart401579")
end

function Quest4015:OnSubFinish401579(arg1)
    print("OnSubFinish401579")
end

function Quest4015:OnSubStart401580(arg1)
    print("OnSubStart401580")
end

function Quest4015:OnSubFinish401580(arg1)
    print("OnSubFinish401580")
end

function Quest4015:OnSubStart401550(arg1)
    print("OnSubStart401550")
    actorMgr:CreateActorWithPos("Q401550SWtoulanTrigger", "Actor/Gadget/Q401550SWtoulanTrigger", 70900002, 0, points.TPos_Q401550SWtoulanTrigger.pos, points.TPos_Q401550SWtoulanTrigger.rot, true, false, 3)
end

function Quest4015:OnSubFinish401550(arg1)
    print("OnSubFinish401550")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId15huishitang, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13512Data.alias, 3)
end

function Quest4015:OnSubStart401568(arg1)
    print("OnSubStart401568")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    actorMgr:CreateActorWithPos("Q401568Triggerdagong", "Actor/Gadget/Q401568Triggerdagong", 70900002, 0, points.TPos_Q401568Triggerdagong.pos, points.TPos_Q401568Triggerdagong.rot, true, false, 3)
end

function Quest4015:OnSubFinish401568(arg1)
    print("OnSubFinish401568")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId15huishitang, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
end

function Quest4015:OnSubStart401558(arg1)
    print("OnSubStart401558")
end

function Quest4015:OnSubFinish401558(arg1)
    print("OnSubFinish401558")
end

function Quest4015:OnSubStart401559(arg1)
    print("OnSubStart401559")
end

function Quest4015:OnSubFinish401559(arg1)
    print("OnSubFinish401559")
end

function Quest4015:OnSubStart401560(arg1)
    print("OnSubStart401560")
end

function Quest4015:OnSubFinish401560(arg1)
    print("OnSubFinish401560")
end

function Quest4015:OnSubStart401561(arg1)
    print("OnSubStart401561")
end

function Quest4015:OnSubFinish401561(arg1)
    print("OnSubFinish401561")
end

function Quest4015:OnSubStart401587(arg1)
    print("OnSubStart401587")
end

function Quest4015:OnSubFinish401587(arg1)
    print("OnSubFinish401587")
end

function Quest4015:OnSubStart401588(arg1)
    print("OnSubStart401588")
end

function Quest4015:OnSubFinish401588(arg1)
    print("OnSubFinish401588")
end

function Quest4015:OnSubStart401589(arg1)
    print("OnSubStart401589")
end

function Quest4015:OnSubFinish401589(arg1)
    print("OnSubFinish401589")
end

function Quest4015:OnSubStart401508(arg1)
    print("OnSubStart401508")
    this:CreateQuestNpc(arg1, npcs.Npc13515Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13516Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13518Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13519Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13520Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13548Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13548Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13462Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13546Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5215Data.alias, 1, true)
    if this:GetQuestGlobalVar(401522) == 2 then
        this:CreateQuestNpcById(401508, npcs.Npc13551Data.id, 0)
    end

    if this:GetQuestGlobalVar(401502) ~= 0 then
        this:CreateQuestNpcById(401508, npcs.Npc13514Data.id, 0)
    end
end

function Quest4015:OnSubFinish401508(arg1)
    print("OnSubFinish401508")
    this:LightNotifyTo(npcs.Npc5215Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13514Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13515Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13520Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13552Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13550Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13553Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13551Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13548Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13462Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13546Data.alias, 3)
end

function Quest4015:OnSubStart401536(arg1)
    print("OnSubStart401536")
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
end

function Quest4015:OnSubFinish401536(arg1)
    print("OnSubFinish401536")
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
end

function Quest4015:OnSubStart401537(arg1)
    print("OnSubStart401537")
    this:CreateQuestNpc(arg1, npcs.Npc13552Data.id, 0)
    this:CreateLocalGadget(70711328, "1", {x = 4546.567, y = 158.024, z = 4612.905}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    actorMgr:CreateActorWithPos("Q4015Triggerdgxs02", "Actor/Gadget/Q4015Triggerdgxs02", 70900002, 0, points.TPos_Q4015Triggerdgxs02.pos, points.TPos_Q4015Triggerdgxs02.rot, true, false, 3)
end

function Quest4015:OnSubFinish401537(arg1)
    print("OnSubFinish401537")
    this:RemoveLocalGadget(70711328, "1")
    this:SafeDestroyQuestNpc(npcs.Npc13552Data.alias, 3)
end

function Quest4015:OnSubFailed401537(arg1)
    print("OnSubFailed401537")
    this:ActorDestroy("Q4015Triggerdgxs02")
    this:RemoveLocalGadget(70711328, "1")
end

function Quest4015:OnSubStart401538(arg1)
    print("OnSubStart401538")
    this:CreateQuestNpc(arg1, npcs.Npc13550Data.id, 0)
end

function Quest4015:OnSubFinish401538(arg1)
    print("OnSubFinish401538")
    this:SafeDestroyQuestNpc(npcs.Npc13550Data.alias, 3)
end

function Quest4015:OnSubStart401539(arg1)
    print("OnSubStart401539")
    this:CreateQuestNpc(arg1, npcs.Npc13514Data.id, 0)
end

function Quest4015:OnSubFinish401539(arg1)
    print("OnSubFinish401539")
end

function Quest4015:OnSubStart401540(arg1)
    print("OnSubStart401540")
    this:CreateQuestNpc(arg1, npcs.Npc13553Data.id, 0)
    this:CreateLocalGadget(70711328, "2", {x = 4317.234, y = 98.011, z = 4734.486}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    actorMgr:CreateActorWithPos("Q4015Triggerhqxs02", "Actor/Gadget/Q4015Triggerhqxs02", 70900002, 0, points.TPos_Q4015Triggerhqxs02.pos, points.TPos_Q4015Triggerhqxs02.rot, true, false, 3)
end

function Quest4015:OnSubFinish401540(arg1)
    print("OnSubFinish401540")
    this:RemoveLocalGadget(70711328, "2")
    this:SafeDestroyQuestNpc(npcs.Npc13553Data.alias, 3)
end

function Quest4015:OnSubFailed401540(arg1)
    print("OnSubFailed401540")
    this:ActorDestroy("Q4015Triggerhqxs02")
    this:RemoveLocalGadget(70711328, "2")
end

function Quest4015:OnSubStart401541(arg1)
    print("OnSubStart401541")
    this:CreateQuestNpc(arg1, npcs.Npc13551Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13551Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest4015:OnSubFinish401541(arg1)
    print("OnSubFinish401541")
end

function Quest4015:OnSubStart401557(arg1)
    print("OnSubStart401557")
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest4015:OnSubFinish401557(arg1)
    print("OnSubFinish401557")
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

function Quest4015:OnSubStart401509(arg1)
    print("OnSubStart401509")
    this:CreateQuestNpc(arg1, npcs.Npc13516Data.id, 0)
    actorMgr:CreateActorWithPos("Q401509zhongwuTrigger", "Actor/Gadget/Q401509zhongwuTrigger", 70900002, 0, points.TPos_Q401509zhongwuTrigger.pos, points.TPos_Q401509zhongwuTrigger.rot, true, false, 3)
end

function Quest4015:OnSubFinish401509(arg1)
    print("OnSubFinish401509")
    this:ActorDestroy("Q401509zhongwuTrigger")
    this:NpcDestroy(npcs.Npc13516Data.alias, 3)
end

function Quest4015:OnSubStart401510(arg1)
    print("OnSubStart401510")
end

function Quest4015:OnSubFinish401510(arg1)
    print("OnSubFinish401510")
    if 1 <= this:GetQuestGlobalVar(401501) then
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId13qudagong, 4, nil, nil)
    end
end

function Quest4015:OnSubStart401551(arg1)
    print("OnSubStart401551")
end

function Quest4015:OnSubFinish401551(arg1)
    print("OnSubFinish401551")
end

function Quest4015:OnSubStart401511(arg1)
    print("OnSubStart401511")
end

function Quest4015:OnSubFinish401511(arg1)
    print("OnSubFinish401511")
    if 1 <= this:GetQuestGlobalVar(401502) then
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId14quheiquan, 4, nil, nil)
    end
end

function Quest4015:OnSubStart401532(arg1)
    print("OnSubStart401532")
end

function Quest4015:OnSubFinish401532(arg1)
    print("OnSubFinish401532")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId14quheiquan, 4, nil, nil)
end

function Quest4015:OnSubStart401534(arg1)
    print("OnSubStart401534")
end

function Quest4015:OnSubFinish401534(arg1)
    print("OnSubFinish401534")
end

function Quest4015:OnSubStart401512(arg1)
    print("OnSubStart401512")
end

function Quest4015:OnSubFinish401512(arg1)
    print("OnSubFinish401512")
end

function Quest4015:OnSubStart401520(arg1)
    print("OnSubStart401520")
end

function Quest4015:OnSubFinish401520(arg1)
    print("OnSubFinish401520")
end

function Quest4015:OnSubStart401513(arg1)
    print("OnSubStart401513")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    actorMgr:CreateActorWithPos("Q401507Triggerdagong", "Actor/Gadget/Q401507Triggerdagong", 70900002, 0, points.TPos_Q401507Triggerdagong.pos, points.TPos_Q401507Triggerdagong.rot, true, false, 3)
end

function Quest4015:OnSubFinish401513(arg1)
    print("OnSubFinish401513")
    this:ActorDestroy("Q401507Triggerdagong")
end

function Quest4015:OnSubStart401524(arg1)
    print("OnSubStart401524")
end

function Quest4015:OnSubFinish401524(arg1)
    print("OnSubFinish401524")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 4015)
end

function Quest4015:OnSubStart401530(arg1)
    print("OnSubStart401530")
end

function Quest4015:OnSubFinish401530(arg1)
    print("OnSubFinish401530")
end

function Quest4015:OnSubStart401572(arg1)
    print("OnSubStart401572")
end

function Quest4015:OnSubFinish401572(arg1)
    print("OnSubFinish401572")
end

function Quest4015:OnSubStart401574(arg1)
    print("OnSubStart401574")
end

function Quest4015:OnSubFinish401574(arg1)
    print("OnSubFinish401574")
end

function Quest4015:OnSubStart401525(arg1)
    print("OnSubStart401525")
end

function Quest4015:OnSubFinish401525(arg1)
    print("OnSubFinish401525")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId16huilaofang01, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
end

function Quest4015:OnSubStart401581(arg1)
    print("OnSubStart401581")
end

function Quest4015:OnSubFinish401581(arg1)
    print("OnSubFinish401581")
end

function Quest4015:OnSubStart401582(arg1)
    print("OnSubStart401582")
end

function Quest4015:OnSubFinish401582(arg1)
    print("OnSubFinish401582")
end

function Quest4015:OnSubStart401583(arg1)
    print("OnSubStart401583")
end

function Quest4015:OnSubFinish401583(arg1)
    print("OnSubFinish401583")
end

function Quest4015:OnSubStart401552(arg1)
    print("OnSubStart401552")
    actorMgr:CreateActorWithPos("Q401552XWtoulanTrigger", "Actor/Gadget/Q401552XWtoulanTrigger", 70900002, 0, points.TPos_Q401552XWtoulanTrigger.pos, points.TPos_Q401552XWtoulanTrigger.rot, true, false, 3)
end

function Quest4015:OnSubFinish401552(arg1)
    print("OnSubFinish401552")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId20block, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13516Data.alias, 3)
end

function Quest4015:OnSubStart401514(arg1)
    print("OnSubStart401514")
    this:CreateQuestNpc(arg1, npcs.Npc13514Data.id, 0)
    actorMgr:CreateActorWithPos("Q401514Triggerheiquan", "Actor/Gadget/Q401514Triggerheiquan", 70900002, 0, points.TPos_Q401514Triggerheiquan.pos, points.TPos_Q401514Triggerheiquan.rot, true, false, 3)
end

function Quest4015:OnSubFinish401514(arg1)
    print("OnSubFinish401514")
    this:ActorDestroy("Q401514Triggerheiquan")
end

function Quest4015:OnSubFailed401514(arg1)
    print("OnSubFailed401514")
    this:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 4015)
end

function Quest4015:OnSubStart401528(arg1)
    print("OnSubStart401528")
end

function Quest4015:OnSubFinish401528(arg1)
    print("OnSubFinish401528")
    this:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 4015)
end

function Quest4015:OnSubStart401575(arg1)
    print("OnSubStart401575")
end

function Quest4015:OnSubFinish401575(arg1)
    print("OnSubFinish401575")
end

function Quest4015:OnSubStart401576(arg1)
    print("OnSubStart401576")
end

function Quest4015:OnSubFinish401576(arg1)
    print("OnSubFinish401576")
end

function Quest4015:OnSubStart401577(arg1)
    print("OnSubStart401577")
end

function Quest4015:OnSubFinish401577(arg1)
    print("OnSubFinish401577")
end

function Quest4015:OnSubStart401529(arg1)
    print("OnSubStart401529")
end

function Quest4015:OnSubFinish401529(arg1)
    print("OnSubFinish401529")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId17huilaofang02, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13514Data.alias, 3)
end

function Quest4015:OnSubStart401531(arg1)
    print("OnSubStart401531")
end

function Quest4015:OnSubFinish401531(arg1)
    print("OnSubFinish401531")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId17huilaofang02, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13514Data.alias, 3)
end

function Quest4015:OnSubStart401584(arg1)
    print("OnSubStart401584")
end

function Quest4015:OnSubFinish401584(arg1)
    print("OnSubFinish401584")
end

function Quest4015:OnSubStart401585(arg1)
    print("OnSubStart401585")
end

function Quest4015:OnSubFinish401585(arg1)
    print("OnSubFinish401585")
end

function Quest4015:OnSubStart401586(arg1)
    print("OnSubStart401586")
end

function Quest4015:OnSubFinish401586(arg1)
    print("OnSubFinish401586")
end

function Quest4015:OnSubStart401533(arg1)
    print("OnSubStart401533")
    this:CreateQuestNpc(arg1, npcs.Npc13514Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    actorMgr:CreateActorWithPos("Q401533Trigger3000", "Actor/Gadget/Q401533Trigger3000", 70900002, 0, {x = 4319.177, y = 97.88, z = 4718.245}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4015:OnSubFinish401533(arg1)
    print("OnSubFinish401533")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId17huilaofang02, 4, nil, nil)
    this:ActorDestroy("Q401533Trigger3000")
    this:SafeDestroyQuestNpc(npcs.Npc13514Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest4015:OnSubStart401535(arg1)
    print("OnSubStart401535")
    actorMgr:CreateActorWithPos("Q401535XWtoulanTrigger", "Actor/Gadget/Q401535XWtoulanTrigger", 70900002, 0, points.TPos_Q401535XWtoulanTrigger.pos, points.TPos_Q401535XWtoulanTrigger.rot, true, false, 3)
end

function Quest4015:OnSubFinish401535(arg1)
    print("OnSubFinish401535")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId20block, 4, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13516Data.alias, 3)
end

function Quest4015:OnSubStart401562(arg1)
    print("OnSubStart401562")
end

function Quest4015:OnSubFinish401562(arg1)
    print("OnSubFinish401562")
end

function Quest4015:OnSubStart401563(arg1)
    print("OnSubStart401563")
end

function Quest4015:OnSubFinish401563(arg1)
    print("OnSubFinish401563")
end

function Quest4015:OnSubStart401564(arg1)
    print("OnSubStart401564")
end

function Quest4015:OnSubFinish401564(arg1)
    print("OnSubFinish401564")
end

function Quest4015:OnSubStart401565(arg1)
    print("OnSubStart401565")
end

function Quest4015:OnSubFinish401565(arg1)
    print("OnSubFinish401565")
end

function Quest4015:OnSubStart401590(arg1)
    print("OnSubStart401590")
end

function Quest4015:OnSubFinish401590(arg1)
    print("OnSubFinish401590")
end

function Quest4015:OnSubStart401591(arg1)
    print("OnSubStart401591")
end

function Quest4015:OnSubFinish401591(arg1)
    print("OnSubFinish401591")
end

function Quest4015:OnSubStart401592(arg1)
    print("OnSubStart401592")
end

function Quest4015:OnSubFinish401592(arg1)
    print("OnSubFinish401592")
end

function Quest4015:OnSubStart401515(arg1)
    print("OnSubStart401515")
    this:CreateQuestNpc(arg1, npcs.Npc13515Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13518Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13518Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13519Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13519Data.alias):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13520Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13548Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13548Data.alias):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13462Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13546Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5215Data.alias, 1, true)
    if this:GetQuestGlobalVar(401522) == 2 then
        this:CreateQuestNpcById(401515, npcs.Npc13551Data.id, 0)
    end

    if this:GetQuestGlobalVar(401502) ~= 0 then
        this:CreateQuestNpcById(401515, npcs.Npc13514Data.id, 0)
    end
end

function Quest4015:OnSubFinish401515(arg1)
    print("OnSubFinish401515")
    this:LightNotifyTo(npcs.Npc5215Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13514Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13515Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13518Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13519Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13520Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13552Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13553Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13551Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13548Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13462Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13546Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13550Data.alias, 3)
end

function Quest4015:OnSubStart401542(arg1)
    print("OnSubStart401542")
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
end

function Quest4015:OnSubFinish401542(arg1)
    print("OnSubFinish401542")
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
end

function Quest4015:OnSubStart401543(arg1)
    print("OnSubStart401543")
    this:CreateQuestNpc(arg1, npcs.Npc13552Data.id, 0)
    this:CreateLocalGadget(70711328, "3", {x = 4546.567, y = 158.024, z = 4612.905}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    actorMgr:CreateActorWithPos("Q4015Triggerdgxs02", "Actor/Gadget/Q4015Triggerdgxs02", 70900002, 0, points.TPos_Q4015Triggerdgxs02.pos, points.TPos_Q4015Triggerdgxs02.rot, true, false, 3)
end

function Quest4015:OnSubFinish401543(arg1)
    print("OnSubFinish401543")
    this:RemoveLocalGadget(70711328, "3")
    this:SafeDestroyQuestNpc(npcs.Npc13552Data.alias, 3)
end

function Quest4015:OnSubFailed401543(arg1)
    print("OnSubFailed401543")
    this:ActorDestroy("Q4015Triggerdgxs02")
    this:RemoveLocalGadget(70711328, "3")
end

function Quest4015:OnSubStart401593(arg1)
    print("OnSubStart401593")
    this:CreateQuestNpc(arg1, npcs.Npc13550Data.id, 0)
end

function Quest4015:OnSubFinish401593(arg1)
    print("OnSubFinish401593")
    this:SafeDestroyQuestNpc(npcs.Npc13550Data.alias, 3)
end

function Quest4015:OnSubStart401544(arg1)
    print("OnSubStart401544")
    this:CreateQuestNpc(arg1, npcs.Npc13514Data.id, 0)
end

function Quest4015:OnSubFinish401544(arg1)
    print("OnSubFinish401544")
end

function Quest4015:OnSubStart401545(arg1)
    print("OnSubStart401545")
    this:CreateQuestNpc(arg1, npcs.Npc13553Data.id, 0)
    this:CreateLocalGadget(70711328, "4", {x = 4317.234, y = 98.011, z = 4734.486}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    actorMgr:CreateActorWithPos("Q4015Triggerhqxs02", "Actor/Gadget/Q4015Triggerhqxs02", 70900002, 0, points.TPos_Q4015Triggerhqxs02.pos, points.TPos_Q4015Triggerhqxs02.rot, true, false, 3)
end

function Quest4015:OnSubFinish401545(arg1)
    print("OnSubFinish401545")
    this:RemoveLocalGadget(70711328, "4")
    this:SafeDestroyQuestNpc(npcs.Npc13553Data.alias, 3)
end

function Quest4015:OnSubFailed401545(arg1)
    print("OnSubFailed401545")
    this:ActorDestroy("Q4015Triggerhqxs02")
    this:RemoveLocalGadget(70711328, "4")
end

function Quest4015:OnSubStart401546(arg1)
    print("OnSubStart401546")
    this:CreateQuestNpc(arg1, npcs.Npc13551Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13551Data.alias):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest4015:OnSubFinish401546(arg1)
    print("OnSubFinish401546")
end

function Quest4015:OnSubStart401553(arg1)
    print("OnSubStart401553")
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1220, true, nil, true, true, false, true)
end

function Quest4015:OnSubFinish401553(arg1)
    print("OnSubFinish401553")
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

function Quest4015:OnSubStart401554(arg1)
    print("OnSubStart401554")
end

function Quest4015:OnSubFinish401554(arg1)
    print("OnSubFinish401554")
end

function Quest4015:OnSubStart401555(arg1)
    print("OnSubStart401555")
end

function Quest4015:OnSubFinish401555(arg1)
    print("OnSubFinish401555")
end

function Quest4015:OnSubStart401556(arg1)
    print("OnSubStart401556")
end

function Quest4015:OnSubFinish401556(arg1)
    print("OnSubFinish401556")
end

function Quest4015:OnSubStart401516(arg1)
    print("OnSubStart401516")
    this:CreateQuestNpc(arg1, npcs.Npc13517Data.id, 0)
    actorMgr:CreateActorWithPos("Q401516shuijiaoTrigger", "Actor/Gadget/Q401516shuijiaoTrigger", 70900002, 0, points.TPos_Q401516shuijiaoTrigger.pos, points.TPos_Q401516shuijiaoTrigger.rot, true, false, 3)
end

function Quest4015:OnSubFinish401516(arg1)
    print("OnSubFinish401516")
    this:ActorDestroy("Q401516shuijiaoTrigger")
    this:SafeDestroyQuestNpc(npcs.Npc13517Data.alias, 3)
end

function Quest4015:OnSubStart401573(arg1)
    print("OnSubStart401573")
end

function Quest4015:OnSubFinish401573(arg1)
    print("OnSubFinish401573")
end

return Quest4015
