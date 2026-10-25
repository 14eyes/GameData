require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74131 = class("Quest74131", QuestActorProxy)
Quest74131.defaultAlias = "Quest74131"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74131:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7413103"] = self.OnSubStart7413103,
        ["7413104"] = self.OnSubStart7413104,
        ["7413106"] = self.OnSubStart7413106,
        ["7413107"] = self.OnSubStart7413107,
        ["7413108"] = self.OnSubStart7413108,
        ["7413109"] = self.OnSubStart7413109,
        ["7413110"] = self.OnSubStart7413110,
        ["7413111"] = self.OnSubStart7413111,
        ["7413112"] = self.OnSubStart7413112,
        ["7413114"] = self.OnSubStart7413114,
        ["7413156"] = self.OnSubStart7413156,
        ["7413115"] = self.OnSubStart7413115,
        ["7413155"] = self.OnSubStart7413155,
        ["7413116"] = self.OnSubStart7413116,
        ["7413117"] = self.OnSubStart7413117,
        ["7413151"] = self.OnSubStart7413151,
        ["7413152"] = self.OnSubStart7413152,
        ["7413153"] = self.OnSubStart7413153,
        ["7413154"] = self.OnSubStart7413154,
        ["7413119"] = self.OnSubStart7413119,
        ["7413120"] = self.OnSubStart7413120,
        ["7413121"] = self.OnSubStart7413121,
        ["7413122"] = self.OnSubStart7413122,
        ["7413123"] = self.OnSubStart7413123,
        ["7413125"] = self.OnSubStart7413125,
        ["7413126"] = self.OnSubStart7413126,
        ["7413127"] = self.OnSubStart7413127,
        ["7413129"] = self.OnSubStart7413129,
        ["7413131"] = self.OnSubStart7413131,
        ["7413132"] = self.OnSubStart7413132,
        ["7413133"] = self.OnSubStart7413133,
        ["7413134"] = self.OnSubStart7413134,
        ["7413135"] = self.OnSubStart7413135,
        ["7413136"] = self.OnSubStart7413136,
        ["7413137"] = self.OnSubStart7413137,
        ["7413138"] = self.OnSubStart7413138,
        ["7413139"] = self.OnSubStart7413139,
        ["7413140"] = self.OnSubStart7413140,
        ["7413141"] = self.OnSubStart7413141,
        ["7413142"] = self.OnSubStart7413142,
        ["7413143"] = self.OnSubStart7413143,
        ["7413144"] = self.OnSubStart7413144,
        ["7413145"] = self.OnSubStart7413145,
        ["7413146"] = self.OnSubStart7413146,
        ["7413147"] = self.OnSubStart7413147,
        ["7413101"] = self.OnSubStart7413101,
        ["7413102"] = self.OnSubStart7413102,
        ["7413105"] = self.OnSubStart7413105,
        ["7413113"] = self.OnSubStart7413113,
        ["7413118"] = self.OnSubStart7413118,
        ["7413124"] = self.OnSubStart7413124,
        ["7413128"] = self.OnSubStart7413128,
        ["7413130"] = self.OnSubStart7413130,
        ["7413148"] = self.OnSubStart7413148,
        ["7413149"] = self.OnSubStart7413149,
        ["7413150"] = self.OnSubStart7413150
    }
end

function Quest74131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7413103"] = self.OnSubFinish7413103,
        ["7413104"] = self.OnSubFinish7413104,
        ["7413106"] = self.OnSubFinish7413106,
        ["7413107"] = self.OnSubFinish7413107,
        ["7413108"] = self.OnSubFinish7413108,
        ["7413109"] = self.OnSubFinish7413109,
        ["7413110"] = self.OnSubFinish7413110,
        ["7413111"] = self.OnSubFinish7413111,
        ["7413112"] = self.OnSubFinish7413112,
        ["7413114"] = self.OnSubFinish7413114,
        ["7413156"] = self.OnSubFinish7413156,
        ["7413115"] = self.OnSubFinish7413115,
        ["7413155"] = self.OnSubFinish7413155,
        ["7413116"] = self.OnSubFinish7413116,
        ["7413117"] = self.OnSubFinish7413117,
        ["7413151"] = self.OnSubFinish7413151,
        ["7413152"] = self.OnSubFinish7413152,
        ["7413153"] = self.OnSubFinish7413153,
        ["7413154"] = self.OnSubFinish7413154,
        ["7413119"] = self.OnSubFinish7413119,
        ["7413120"] = self.OnSubFinish7413120,
        ["7413121"] = self.OnSubFinish7413121,
        ["7413122"] = self.OnSubFinish7413122,
        ["7413123"] = self.OnSubFinish7413123,
        ["7413125"] = self.OnSubFinish7413125,
        ["7413126"] = self.OnSubFinish7413126,
        ["7413127"] = self.OnSubFinish7413127,
        ["7413129"] = self.OnSubFinish7413129,
        ["7413131"] = self.OnSubFinish7413131,
        ["7413132"] = self.OnSubFinish7413132,
        ["7413133"] = self.OnSubFinish7413133,
        ["7413134"] = self.OnSubFinish7413134,
        ["7413135"] = self.OnSubFinish7413135,
        ["7413136"] = self.OnSubFinish7413136,
        ["7413137"] = self.OnSubFinish7413137,
        ["7413138"] = self.OnSubFinish7413138,
        ["7413139"] = self.OnSubFinish7413139,
        ["7413140"] = self.OnSubFinish7413140,
        ["7413141"] = self.OnSubFinish7413141,
        ["7413142"] = self.OnSubFinish7413142,
        ["7413143"] = self.OnSubFinish7413143,
        ["7413144"] = self.OnSubFinish7413144,
        ["7413145"] = self.OnSubFinish7413145,
        ["7413146"] = self.OnSubFinish7413146,
        ["7413147"] = self.OnSubFinish7413147,
        ["7413101"] = self.OnSubFinish7413101,
        ["7413102"] = self.OnSubFinish7413102,
        ["7413105"] = self.OnSubFinish7413105,
        ["7413113"] = self.OnSubFinish7413113,
        ["7413118"] = self.OnSubFinish7413118,
        ["7413124"] = self.OnSubFinish7413124,
        ["7413128"] = self.OnSubFinish7413128,
        ["7413130"] = self.OnSubFinish7413130,
        ["7413148"] = self.OnSubFinish7413148,
        ["7413149"] = self.OnSubFinish7413149,
        ["7413150"] = self.OnSubFinish7413150
    }
end

function Quest74131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7413153"] = self.OnSubFailed7413153, ["7413126"] = self.OnSubFailed7413126}
end

function Quest74131:Start()
    print("Start")
end

function Quest74131:OnDestroy()
    print("OnDestroy")
end

function Quest74131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74131:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74131:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest74131:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest74131:OnSubStart7413103(arg1)
    print("OnSubStart7413103")
    this:CreateQuestNpc(arg1, npcs.Npc5275Data.id, 0)
end

function Quest74131:OnSubFinish7413103(arg1)
    print("OnSubFinish7413103")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5275Data.alias, 3)
end

function Quest74131:OnSubStart7413104(arg1)
    print("OnSubStart7413104")
    actorMgr:CreateActorWithPos("Q7413104Trigger", "Actor/Gadget/Q7413104Trigger", 70900002, 0, {x = 3213.786, y = 345.574, z = 2808.034}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413104(arg1)
    print("OnSubFinish7413104")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413106(arg1)
    print("OnSubStart7413106")
    this:CreateQuestNpc(arg1, npcs.Npc5275Data.id, 0)
    this:RequestInteraction(npcs.Npc5275Data.alias, "", true)
end

function Quest74131:OnSubFinish7413106(arg1)
    print("OnSubFinish7413106")
    this:SafeDestroyQuestNpc(npcs.Npc5275Data.alias, 3)
end

function Quest74131:OnSubStart7413107(arg1)
    print("OnSubStart7413107")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21208Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    actorMgr:CreateActorWithPos("Q7413107Trigger", "Actor/Gadget/Q7413107Trigger", 70900002, 0, {x = 3226.672, y = 340.433, z = 2779.383}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7413106Trigger", "Actor/Gadget/Q7413106Trigger", 70900002, 0, {x = 3225.251, y = 343.438, z = 2784.698}, {x = 0.0, y = 359.901, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413107(arg1)
    print("OnSubFinish7413107")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413108(arg1)
    print("OnSubStart7413108")
    this:RequestInteraction(npcs.Npc5273Data.alias, "", true)
    this:ActorDestroy("Q7413106Trigger")
end

function Quest74131:OnSubFinish7413108(arg1)
    print("OnSubFinish7413108")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21208Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5274Data.alias, 3)
    this:NarratorOnlyTaskByData(datas.Narrator_7413104)
end

function Quest74131:OnSubStart7413109(arg1)
    print("OnSubStart7413109")
end

function Quest74131:OnSubFinish7413109(arg1)
    print("OnSubFinish7413109")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413110(arg1)
    print("OnSubStart7413110")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74131:OnSubFinish7413110(arg1)
    print("OnSubFinish7413110")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413111(arg1)
    print("OnSubStart7413111")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21209Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21210Data.id, 0)
    actorMgr:CreateActorWithPos("Q7413111Trigger", "Actor/Gadget/Q7413111Trigger", 70900002, 0, {x = 3133.623, y = 441.926, z = 2923.086}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413111(arg1)
    print("OnSubFinish7413111")
end

function Quest74131:OnSubStart7413112(arg1)
    print("OnSubStart7413112")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74131:OnSubFinish7413112(arg1)
    print("OnSubFinish7413112")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 2, nil, nil)
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21209Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21210Data.alias, 3)
end

function Quest74131:OnSubStart7413114(arg1)
    print("OnSubStart7413114")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21207Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21211Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21212Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21213Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21214Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21209Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21210Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21207Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21211Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21212Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21213Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21214Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21209Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21210Data.id, 0)
        actorMgr:CreateActorWithPos("Q7413113Trigger", "Actor/Gadget/Q7413113Trigger", 70900002, 0, {x = 3326.502, y = 440.204, z = 3082.761}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:GetQuestNpcActor(npcs.Npc21207Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc21213Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc21214Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc21212Data.alias):DisableInteeHeadCtrl(false)
        this:NotifyTo(npcs.Npc5196Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc21214Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc21211Data.alias):SitOnChair(8073, false)
        this:GetQuestNpcActor(npcs.Npc21212Data.alias):SitOnChair(8020, false)
        this:NotifyTo(npcs.Npc5197Data.alias, 1, true)
    end)
end

function Quest74131:OnSubFinish7413114(arg1)
    print("OnSubFinish7413114")
    this:NarratorOnlyTaskByData(datas.Narrator_7413105)
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74131:OnSubStart7413156(arg1)
    print("OnSubStart7413156")
end

function Quest74131:OnSubFinish7413156(arg1)
    print("OnSubFinish7413156")
end

function Quest74131:OnSubStart7413115(arg1)
    print("OnSubStart7413115")
    this:CreateQuestNpc(arg1, npcs.Npc21207Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21211Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21212Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21213Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21214Data.id, 0)
    this:NotifyTo(npcs.Npc5196Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc21211Data.alias):SitOnChair(8073, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21212Data.alias)
    questNpcActor:SitOnChair(8020, false)
    this:NotifyTo(npcs.Npc5197Data.alias, 1, true)
    questNpcActor:DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21214Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21213Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21207Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21211Data.alias):DoFreeStyle(8073, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21212Data.alias):DoFreeStyle(8020, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21214Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest74131:OnSubFinish7413115(arg1)
    print("OnSubFinish7413115")
    this:NarratorOnlyTaskByData(datas.Narrator_7413107)
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21207Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21212Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21213Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21214Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc21212Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21214Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74131:OnSubStart7413155(arg1)
    print("OnSubStart7413155")
    this:CreateQuestNpc(arg1, npcs.Npc21207Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21211Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21212Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21213Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21214Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21212Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc21214Data.alias):DisableInteeHeadCtrl(false)
    this:NotifyTo(npcs.Npc5196Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc21211Data.alias):SitOnChair(8073, false)
    this:GetQuestNpcActor(npcs.Npc21212Data.alias):SitOnChair(8020, false)
    this:NotifyTo(npcs.Npc5197Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc21213Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21207Data.alias):DoFreeStyle(4130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21211Data.alias):DoFreeStyle(8073, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21212Data.alias):DoFreeStyle(8020, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21214Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest74131:OnSubFinish7413155(arg1)
    print("OnSubFinish7413155")
    this:NarratorOnlyTaskByData(datas.Narrator_7413107)
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21207Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21212Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21213Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21214Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc21212Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc21214Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74131:OnSubStart7413116(arg1)
    print("OnSubStart7413116")
end

function Quest74131:OnSubFinish7413116(arg1)
    print("OnSubFinish7413116")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413117(arg1)
    print("OnSubStart7413117")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    actorMgr:CreateActorWithPos("Q7413117Trigger", "Actor/Gadget/Q7413117Trigger", 70900002, 0, {x = 3302.912, y = 441.272, z = 3130.127}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413117(arg1)
    print("OnSubFinish7413117")
    this:TransmitPlayerWithDialogTextById(arg1, 4, datas.DialogsId_01, 2, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74131:OnSubStart7413151(arg1)
    print("OnSubStart7413151")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
        actorMgr:CreateActorWithPos("Q7413118Trigger", "Actor/Gadget/Q7413118Trigger", 70900002, 0, {x = 3293.463, y = 442.12, z = 3066.011}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74131:OnSubFinish7413151(arg1)
    print("OnSubFinish7413151")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId_02, 2, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21210Data.alias, 3)
    actorMgr:CreateActorWithPos("Q7413152Triggerrmd", "Actor/Gadget/Q7413152Triggerrmd", 70900002, 0, {x = 2727.305, y = 441.46, z = 3140.512}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:LightNotifyTo(npcs.Npc5196Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5197Data.alias, 0, true)
end

function Quest74131:OnSubStart7413152(arg1)
    print("OnSubStart7413152")
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21209Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q7413152Trigger", "Actor/Gadget/Q7413152Trigger", 70900002, 0, {x = 2698.998, y = 440.0, z = 3173.725}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc21209Data.id, 0)
    end)
end

function Quest74131:OnSubFinish7413152(arg1)
    print("OnSubFinish7413152")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413153(arg1)
    print("OnSubStart7413153")
    this:CreateQuestNpc(arg1, npcs.Npc21207Data.id, 0)
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q7413153Trigger1", "Actor/Gadget/Q7413153Trigger1", 70900002, 0, {x = 2698.418, y = 440.166, z = 3174.141}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        this:CreateQuestNpc(arg1, npcs.Npc21207Data.id, 0)
        this:CallDelay(1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21207Data.alias, 74131)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData, 4, 2, -1, nil, nil, nil, function(arg1) end, nil, function(arg1) end, true)
            this:NpcForceAvatarWalkByDist(questNpcActor, 3, 5)
        end)

        actorMgr:CreateActorWithPos("Q7413153Trigger", "Actor/Gadget/Q7413153Trigger", 70900002, 0, {x = 2669.19, y = 440.042, z = 3222.705}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q7413153TriggerFail", "Actor/Gadget/Q7413153TriggerFail", 70900002, 0, {x = 2686.157, y = 440.0, z = 3192.186}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q7413153Trigger3", "Actor/Gadget/Q7413153Trigger3", 70900002, 0, {x = 2682.196, y = 440.0, z = 3212.621}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q7413153Trigger2", "Actor/Gadget/Q7413153Trigger2", 70900002, 0, {x = 2687.446, y = 440.011, z = 3186.633}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74131:OnSubFinish7413153(arg1)
    print("OnSubFinish7413153")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21207Data.alias, 74131)
    questNpcActor:ClearFollowTask()
    this:GetQuestNpcActor(npcs.Npc21207Data.alias):Standby()
    this:NpcResetForceAvatarWalk(questNpcActor)
    this:ActorDestroy("Q7413153TriggerFail")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:ActorDestroy("Q7413153Trigger")
    this:ActorDestroy("Q7413153Trigger2")
    this:ActorDestroy("Q7413153Trigger3")
    this:ActorDestroy("Q7413153Trigger1")
end

function Quest74131:OnSubFailed7413153(arg1)
    print("OnSubFailed7413153")
    this:NpcDestroy(npcs.Npc21207Data.alias, 3)
    this:ActorDestroy("Q7413153Trigger")
    this:ActorDestroy("Q7413153Trigger2")
    this:ActorDestroy("Q7413153Trigger3")
    this:ActorDestroy("Q7413153Trigger1")
    this:ActorDestroy("Q7413153TriggerFail")
end

function Quest74131:OnSubStart7413154(arg1)
    print("OnSubStart7413154")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
    this:NpcCreate(arg1, npcs.Npc21207Data.id, 0)
end

function Quest74131:OnSubFinish7413154(arg1)
    print("OnSubFinish7413154")
    this:NarratorOnlyTaskByData(datas.Narrator_7413110)
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21207Data.alias, 3)
end

function Quest74131:OnSubStart7413119(arg1)
    print("OnSubStart7413119")
end

function Quest74131:OnSubFinish7413119(arg1)
    print("OnSubFinish7413119")
    this:NarratorOnlyTaskByData(datas.Narrator_7413111)
end

function Quest74131:OnSubStart7413120(arg1)
    print("OnSubStart7413120")
    actorMgr:CreateActorWithPos("Q7413120Trigger", "Actor/Gadget/Q7413120Trigger", 70900002, 0, {x = 2727.552, y = 441.496, z = 3138.348}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:NpcCreate(arg1, npcs.Npc5274Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5274Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:NpcCreate(arg1, npcs.Npc21209Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21209Data.alias):DoFreeStyle(4121, true, nil, true, true, false, false)
end

function Quest74131:OnSubFinish7413120(arg1)
    print("OnSubFinish7413120")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5274Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21209Data.alias, 3)
end

function Quest74131:OnSubStart7413121(arg1)
    print("OnSubStart7413121")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74131:OnSubFinish7413121(arg1)
    print("OnSubFinish7413121")
end

function Quest74131:OnSubStart7413122(arg1)
    print("OnSubStart7413122")
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74131:OnSubFinish7413122(arg1)
    print("OnSubFinish7413122")
    this:TransmitPlayerWithDialogTextById(arg1, 3, datas.DialogsId_03, 2, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74131:OnSubStart7413123(arg1)
    print("OnSubStart7413123")
    actorMgr:CreateActorWithPos("Q7413123Trigger", "Actor/Gadget/Q7413123Trigger", 70900002, 0, {x = 3562.035, y = 440.16, z = 2843.171}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413123(arg1)
    print("OnSubFinish7413123")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74131:OnSubStart7413125(arg1)
    print("OnSubStart7413125")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    actorMgr:CreateActorWithPos("Q7413125Trigger", "Actor/Gadget/Q7413125Trigger", 70900002, 0, {x = 3562.844, y = 440.198, z = 2842.127}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413125(arg1)
    print("OnSubFinish7413125")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74131:OnSubStart7413126(arg1)
    print("OnSubStart7413126")
    actorMgr:CreateActorWithPos("Q7413127Trigger", "Actor/Gadget/Q7413127Trigger", 70900002, 0, {x = 3496.222, y = 441.905, z = 2950.989}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7413126Trigger", "Actor/Gadget/Q7413126Trigger", 70900002, 0, {x = 3527.38, y = 440.94, z = 2894.557}, {x = 0.0, y = 41.572, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7413126TriggerFail", "Actor/Gadget/Q7413126TriggerFail", 70900002, 0, {x = 3526.563, y = 440.828, z = 2899.769}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413126(arg1)
    print("OnSubFinish7413126")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:ActorDestroy("Q7413126Trigger")
    this:ActorDestroy("Q7413126TriggerFail")
    self:ExitCombatSneakMode()
end

function Quest74131:OnSubFailed7413126(arg1)
    print("OnSubFailed7413126")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74131:OnSubStart7413127(arg1)
    print("OnSubStart7413127")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias, "", true)
end

function Quest74131:OnSubFinish7413127(arg1)
    print("OnSubFinish7413127")
    this:NarratorOnlyTaskByData(datas.Narrator_7413112)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74131:OnSubStart7413129(arg1)
    print("OnSubStart7413129")
end

function Quest74131:OnSubFinish7413129(arg1)
    print("OnSubFinish7413129")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74131:OnSubStart7413131(arg1)
    print("OnSubStart7413131")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74131:OnSubFinish7413131(arg1)
    print("OnSubFinish7413131")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5273Data.alias, 3)
end

function Quest74131:OnSubStart7413132(arg1)
    print("OnSubStart7413132")
    actorMgr:CreateActorWithPos("Q74131Trigger5", "Actor/Gadget/Q74131Trigger5", 70900002, 0, points.TPos_Q74131Trigger5.pos, points.TPos_Q74131Trigger5.rot, true, false, 3)
end

function Quest74131:OnSubFinish7413132(arg1)
    print("OnSubFinish7413132")
    this:ActorDestroy("Q74131Trigger5")
end

function Quest74131:OnSubStart7413133(arg1)
    print("OnSubStart7413133")
    actorMgr:CreateActorWithPos("Q74131Trigger1", "Actor/Gadget/Q74131Trigger1", 70900002, 0, points.TPos_Q74131Trigger1.pos, points.TPos_Q74131Trigger1.rot, true, false, 3)
end

function Quest74131:OnSubFinish7413133(arg1)
    print("OnSubFinish7413133")
    this:ActorDestroy("Q74131Trigger1")
end

function Quest74131:OnSubStart7413134(arg1)
    print("OnSubStart7413134")
    actorMgr:CreateActorWithPos("Q74131Trigger2", "Actor/Gadget/Q74131Trigger2", 70900002, 0, points.TPos_Q74131Trigger2.pos, points.TPos_Q74131Trigger2.rot, true, false, 3)
end

function Quest74131:OnSubFinish7413134(arg1)
    print("OnSubFinish7413134")
end

function Quest74131:OnSubStart7413135(arg1)
    print("OnSubStart7413135")
    actorMgr:CreateActorWithPos("Q74131Trigger3", "Actor/Gadget/Q74131Trigger3", 70900002, 0, {x = 3567.649, y = 511.59, z = 3215.245}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413135(arg1)
    print("OnSubFinish7413135")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74131:OnSubStart7413136(arg1)
    print("OnSubStart7413136")
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5276Data.id, 0)
    this:RequestInteraction(npcs.Npc5276Data.alias)
end

function Quest74131:OnSubFinish7413136(arg1)
    print("OnSubFinish7413136")
end

function Quest74131:OnSubStart7413137(arg1)
    print("OnSubStart7413137")
    actorMgr:CreateActorWithPos("Q74131Trigger4", "Actor/Gadget/Q74131Trigger4", 70900002, 0, {x = 2600.363, y = 271.863, z = 3559.162}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413137(arg1)
    print("OnSubFinish7413137")
end

function Quest74131:OnSubStart7413138(arg1)
    print("OnSubStart7413138")
end

function Quest74131:OnSubFinish7413138(arg1)
    print("OnSubFinish7413138")
end

function Quest74131:OnSubStart7413139(arg1)
    print("OnSubStart7413139")
    actorMgr:CreateActorWithPos("Q7413139Trigger", "Actor/Gadget/Q7413139Trigger", 70900002, 0, {x = 2579.767, y = 272.045, z = 3528.721}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413139(arg1)
    print("OnSubFinish7413139")
end

function Quest74131:OnSubStart7413140(arg1)
    print("OnSubStart7413140")
    this:CreateQuestNpc(arg1, npcs.Npc5273Data.id, 0)
    this:RequestInteraction(npcs.Npc5273Data.alias)
end

function Quest74131:OnSubFinish7413140(arg1)
    print("OnSubFinish7413140")
end

function Quest74131:OnSubStart7413141(arg1)
    print("OnSubStart7413141")
end

function Quest74131:OnSubFinish7413141(arg1)
    print("OnSubFinish7413141")
end

function Quest74131:OnSubStart7413142(arg1)
    print("OnSubStart7413142")
end

function Quest74131:OnSubFinish7413142(arg1)
    print("OnSubFinish7413142")
end

function Quest74131:OnSubStart7413143(arg1)
    print("OnSubStart7413143")
end

function Quest74131:OnSubFinish7413143(arg1)
    print("OnSubFinish7413143")
end

function Quest74131:OnSubStart7413144(arg1)
    print("OnSubStart7413144")
end

function Quest74131:OnSubFinish7413144(arg1)
    print("OnSubFinish7413144")
end

function Quest74131:OnSubStart7413145(arg1)
    print("OnSubStart7413145")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias)
end

function Quest74131:OnSubFinish7413145(arg1)
    print("OnSubFinish7413145")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
end

function Quest74131:OnSubStart7413146(arg1)
    print("OnSubStart7413146")
end

function Quest74131:OnSubFinish7413146(arg1)
    print("OnSubFinish7413146")
    this:SafeDestroyQuestNpc(npcs.Npc5274Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5276Data.alias, 3)
end

function Quest74131:OnSubStart7413147(arg1)
    print("OnSubStart7413147")
end

function Quest74131:OnSubFinish7413147(arg1)
    print("OnSubFinish7413147")
end

function Quest74131:OnSubStart7413101(arg1)
    print("OnSubStart7413101")
end

function Quest74131:OnSubFinish7413101(arg1)
    print("OnSubFinish7413101")
end

function Quest74131:OnSubStart7413102(arg1)
    print("OnSubStart7413102")
    this:CreateQuestNpc(arg1, npcs.Npc5275Data.id, 0)
end

function Quest74131:OnSubFinish7413102(arg1)
    print("OnSubFinish7413102")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc5275Data.alias, 3)
end

function Quest74131:OnSubStart7413105(arg1)
    print("OnSubStart7413105")
end

function Quest74131:OnSubFinish7413105(arg1)
    print("OnSubFinish7413105")
end

function Quest74131:OnSubStart7413113(arg1)
    print("OnSubStart7413113")
    actorMgr:CreateActorWithPos("Q7413113Trigger", "Actor/Gadget/Q7413113Trigger", 70900002, 0, {x = 3326.502, y = 440.204, z = 3082.761}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74131:OnSubFinish7413113(arg1)
    print("OnSubFinish7413113")
end

function Quest74131:OnSubStart7413118(arg1)
    print("OnSubStart7413118")
end

function Quest74131:OnSubFinish7413118(arg1)
    print("OnSubFinish7413118")
end

function Quest74131:OnSubStart7413124(arg1)
    print("OnSubStart7413124")
    this:CreateQuestNpc(arg1, npcs.Npc5274Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21209Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21209Data.alias):DoFreeStyle(0, true, nil, true, true, false, false)
end

function Quest74131:OnSubFinish7413124(arg1)
    print("OnSubFinish7413124")
    this:SafeDestroyQuestNpc(npcs.Npc5274Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21209Data.alias, 3)
end

function Quest74131:OnSubStart7413128(arg1)
    print("OnSubStart7413128")
end

function Quest74131:OnSubFinish7413128(arg1)
    print("OnSubFinish7413128")
end

function Quest74131:OnSubStart7413130(arg1)
    print("OnSubStart7413130")
end

function Quest74131:OnSubFinish7413130(arg1)
    print("OnSubFinish7413130")
end

function Quest74131:OnSubStart7413148(arg1)
    print("OnSubStart7413148")
end

function Quest74131:OnSubFinish7413148(arg1)
    print("OnSubFinish7413148")
end

function Quest74131:OnSubStart7413149(arg1)
    print("OnSubStart7413149")
end

function Quest74131:OnSubFinish7413149(arg1)
    print("OnSubFinish7413149")
end

function Quest74131:OnSubStart7413150(arg1)
    print("OnSubStart7413150")
end

function Quest74131:OnSubFinish7413150(arg1)
    print("OnSubFinish7413150")
end

return Quest74131
