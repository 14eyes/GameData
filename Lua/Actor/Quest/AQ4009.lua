require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4009 = class("Quest4009", QuestActorProxy)
Quest4009.defaultAlias = "Quest4009"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4009:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4009:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400901"] = self.OnSubStart400901,
        ["400902"] = self.OnSubStart400902,
        ["400903"] = self.OnSubStart400903,
        ["400913"] = self.OnSubStart400913,
        ["400904"] = self.OnSubStart400904,
        ["400906"] = self.OnSubStart400906,
        ["400907"] = self.OnSubStart400907,
        ["400916"] = self.OnSubStart400916,
        ["400917"] = self.OnSubStart400917,
        ["400918"] = self.OnSubStart400918,
        ["400919"] = self.OnSubStart400919,
        ["400908"] = self.OnSubStart400908,
        ["400909"] = self.OnSubStart400909,
        ["400914"] = self.OnSubStart400914,
        ["400915"] = self.OnSubStart400915,
        ["400912"] = self.OnSubStart400912
    }
end

function Quest4009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400901"] = self.OnSubFinish400901,
        ["400902"] = self.OnSubFinish400902,
        ["400903"] = self.OnSubFinish400903,
        ["400913"] = self.OnSubFinish400913,
        ["400904"] = self.OnSubFinish400904,
        ["400906"] = self.OnSubFinish400906,
        ["400907"] = self.OnSubFinish400907,
        ["400916"] = self.OnSubFinish400916,
        ["400917"] = self.OnSubFinish400917,
        ["400918"] = self.OnSubFinish400918,
        ["400919"] = self.OnSubFinish400919,
        ["400908"] = self.OnSubFinish400908,
        ["400909"] = self.OnSubFinish400909,
        ["400914"] = self.OnSubFinish400914,
        ["400915"] = self.OnSubFinish400915,
        ["400912"] = self.OnSubFinish400912
    }
end

function Quest4009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["400907"] = self.OnSubFailed400907, ["400908"] = self.OnSubFailed400908}
end

function Quest4009:Start()
    print("Start")
end

function Quest4009:OnDestroy()
    print("OnDestroy")
end

function Quest4009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4009:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4009:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 400904 then
        this:PlayerEnterDungeonPointWithDialogs(3, 1185, 400904, 1, datas.DialogsId, 0.5, nil, nil)
    elseif arg1 == 400914 then
        actorUtils.FinishQuestID(false, 400914)
    elseif arg1 == 400915 then
        actorUtils.FinishQuestID(false, 400915)
    elseif arg1 == 400916 then
        actorUtils.FinishQuestID(false, 400916)
    elseif arg1 == 400917 then
        actorUtils.FinishQuestID(false, 400917)
    elseif arg1 == 400918 then
        actorUtils.FinishQuestID(false, 400918)
    elseif arg1 == 400919 then
        actorUtils.FinishQuestID(false, 400919)
    elseif arg1 == 400913 then
        actorUtils.FinishQuestID(false, 400913)
    end
end

function Quest4009:OnSubStart400901(arg1)
    print("OnSubStart400901")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4009:OnSubFinish400901(arg1)
    print("OnSubFinish400901")
end

function Quest4009:OnSubStart400902(arg1)
    print("OnSubStart400902")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DoFreeStyle(1171, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q400902_TriggerIn", "Actor/Gadget/Q400902_TriggerIn", 70900002, 0, {x = 0.0, y = 21.768, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4009:OnSubFinish400902(arg1)
    print("OnSubFinish400902")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 1086)
end

function Quest4009:OnSubStart400903(arg1)
    print("OnSubStart400903")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4009:OnSubFinish400903(arg1)
    print("OnSubFinish400903")
end

function Quest4009:OnSubStart400913(arg1)
    print("OnSubStart400913")
end

function Quest4009:OnSubFinish400913(arg1)
    print("OnSubFinish400913")
end

function Quest4009:OnSubStart400904(arg1)
    print("OnSubStart400904")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4009:OnSubFinish400904(arg1)
    print("OnSubFinish400904")
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 1086)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:RemoveLocalGadget(70291004, "1")
end

function Quest4009:OnSubStart400906(arg1)
    print("OnSubStart400906")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    actorMgr:CreateActorWithPos("Q400906_TriggerIn", "Actor/Gadget/Q400906_TriggerIn", 70900002, 0, {x = 19.96, y = 2.0, z = 19.01}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20196)
end

function Quest4009:OnSubFinish400906(arg1)
    print("OnSubFinish400906")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 20196)
end

function Quest4009:OnSubStart400907(arg1)
    print("OnSubStart400907")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400907_TriggerIn", "Actor/Gadget/Q400907_TriggerIn", 70900002, 0, points.TPos_Q400907_TriggerIn.pos, points.TPos_Q400907_TriggerIn.rot, true, false, 20196)
end

function Quest4009:OnSubFinish400907(arg1)
    print("OnSubFinish400907")
end

function Quest4009:OnSubFailed400907(arg1)
    print("OnSubFailed400907")
    this:ActorDestroy(datas.Q400907_TriggerIn.alias)
end

function Quest4009:OnSubStart400916(arg1)
    print("OnSubStart400916")
end

function Quest4009:OnSubFinish400916(arg1)
    print("OnSubFinish400916")
end

function Quest4009:OnSubStart400917(arg1)
    print("OnSubStart400917")
end

function Quest4009:OnSubFinish400917(arg1)
    print("OnSubFinish400917")
end

function Quest4009:OnSubStart400918(arg1)
    print("OnSubStart400918")
end

function Quest4009:OnSubFinish400918(arg1)
    print("OnSubFinish400918")
end

function Quest4009:OnSubStart400919(arg1)
    print("OnSubStart400919")
end

function Quest4009:OnSubFinish400919(arg1)
    print("OnSubFinish400919")
end

function Quest4009:OnSubStart400908(arg1)
    print("OnSubStart400908")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400908_TriggerIn", "Actor/Gadget/Q400908_TriggerIn", 70900002, 0, points.TPos_Q400908_TriggerIn.pos, points.TPos_Q400908_TriggerIn.rot, true, false, 20196)
end

function Quest4009:OnSubFinish400908(arg1)
    print("OnSubFinish400908")
end

function Quest4009:OnSubFailed400908(arg1)
    print("OnSubFailed400908")
    this:ActorDestroy(datas.Q400908_TriggerIn.alias)
end

function Quest4009:OnSubStart400909(arg1)
    print("OnSubStart400909")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    actorMgr:CreateActorWithPos("Q400909_TriggerIn", "Actor/Gadget/Q400909_TriggerIn", 70900002, 0, {x = 20.033, y = -3.8, z = 110.903}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20196)
    actorMgr:CreateActorWithPos("Q400909_TriggerIn_2", "Actor/Gadget/Q400909_TriggerIn_2", 70900002, 0, {x = 10.35, y = 2.744, z = -0.085}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4009:OnSubFinish400909(arg1)
    print("OnSubFinish400909")
    this:ActorDestroy(datas.Q400909_TriggerIn.alias)
    this:ActorDestroy(datas.Q400909_TriggerIn_2.alias)
end

function Quest4009:OnSubStart400914(arg1)
    print("OnSubStart400914")
end

function Quest4009:OnSubFinish400914(arg1)
    print("OnSubFinish400914")
end

function Quest4009:OnSubStart400915(arg1)
    print("OnSubStart400915")
end

function Quest4009:OnSubFinish400915(arg1)
    print("OnSubFinish400915")
end

function Quest4009:OnSubStart400912(arg1)
    print("OnSubStart400912")
    this:CreateQuestNpc(arg1, npcs.Npc13477Data.id, 0)
    actorMgr:CreateActorWithPos("Q400912_TriggerIn", "Actor/Gadget/Q400912_TriggerIn", 70900002, 0, {x = 15.163, y = 0.338, z = -0.823}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1086)
    actorMgr:CreateActorWithPos("Q400912_TriggerIn_2", "Actor/Gadget/Q400912_TriggerIn_2", 70900002, 0, points.TPos_Q400912_TriggerIn_2.pos, points.TPos_Q400912_TriggerIn_2.rot, true, false, 3)
    this:CreateLocalGadget(70291004, "1", {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):SitOnTargetChair(8010, {x = 4580.848, y = 154.176, z = 4630.853}, {x = 0.0, y = 190.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "2", {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):SitOnTargetChair(8010, {x = 4580.296, y = 154.176, z = 4628.667}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:CreateLocalGadget(70291004, "3", {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):SitOnTargetChair(8010, {x = 4581.034, y = 154.176, z = 4628.516}, {x = 0.0, y = 10.0, z = 0.0}, 0, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
end

function Quest4009:OnSubFinish400912(arg1)
    print("OnSubFinish400912")
    this:ActorDestroy(datas.Q400912_TriggerIn.alias)
    this:ActorDestroy(datas.Q400912_TriggerIn_2.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13477Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:RemoveLocalGadget(70291004, "1")
end

return Quest4009
