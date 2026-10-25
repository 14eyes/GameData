require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4005 = class("Quest4005", QuestActorProxy)
Quest4005.defaultAlias = "Quest4005"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4005:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400501"] = self.OnSubStart400501,
        ["400515"] = self.OnSubStart400515,
        ["400514"] = self.OnSubStart400514,
        ["400502"] = self.OnSubStart400502,
        ["400518"] = self.OnSubStart400518,
        ["400517"] = self.OnSubStart400517,
        ["400503"] = self.OnSubStart400503,
        ["400504"] = self.OnSubStart400504,
        ["400505"] = self.OnSubStart400505,
        ["400506"] = self.OnSubStart400506,
        ["400507"] = self.OnSubStart400507,
        ["400508"] = self.OnSubStart400508,
        ["400509"] = self.OnSubStart400509,
        ["400510"] = self.OnSubStart400510,
        ["400511"] = self.OnSubStart400511,
        ["400516"] = self.OnSubStart400516,
        ["400512"] = self.OnSubStart400512,
        ["400513"] = self.OnSubStart400513
    }
end

function Quest4005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400501"] = self.OnSubFinish400501,
        ["400515"] = self.OnSubFinish400515,
        ["400514"] = self.OnSubFinish400514,
        ["400502"] = self.OnSubFinish400502,
        ["400518"] = self.OnSubFinish400518,
        ["400517"] = self.OnSubFinish400517,
        ["400503"] = self.OnSubFinish400503,
        ["400504"] = self.OnSubFinish400504,
        ["400505"] = self.OnSubFinish400505,
        ["400506"] = self.OnSubFinish400506,
        ["400507"] = self.OnSubFinish400507,
        ["400508"] = self.OnSubFinish400508,
        ["400509"] = self.OnSubFinish400509,
        ["400510"] = self.OnSubFinish400510,
        ["400511"] = self.OnSubFinish400511,
        ["400516"] = self.OnSubFinish400516,
        ["400512"] = self.OnSubFinish400512,
        ["400513"] = self.OnSubFinish400513
    }
end

function Quest4005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["400518"] = self.OnSubFailed400518, ["400517"] = self.OnSubFailed400517}
end

function Quest4005:Start()
    print("Start")
end

function Quest4005:OnDestroy()
    print("OnDestroy")
end

function Quest4005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4005:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest400515")
        actorUtils.FinishQuestID(false, 400515)
    elseif arg1 == 2 then
        print("FinishSubQuest400514")
        actorUtils.FinishQuestID(false, 400514)
    elseif arg1 == 3 then
        print("FinishSubQuest400516")
        actorUtils.FinishQuestID(false, 400516)
    elseif arg1 == 4 then
        this:GetQuestNpcActor(npcs.Npc10200Data.alias):ChangeNpcAvatarPendantVisual(true)
    elseif arg1 == 5 then
        this:GetQuestNpcActor(npcs.Npc10200Data.alias):ChangeNpcAvatarPendantVisual(false)
    end
end

function Quest4005:OnSubStart400501(arg1)
    print("OnSubStart400501")
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    actorMgr:CreateActorWithPos("Q4005Trigger", "Actor/Gadget/Q4005Trigger", 70900002, 0, {x = 3491.996, y = 432.369, z = 4611.081}, {x = 0.0, y = 315.626, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1074Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest4005:OnSubFinish400501(arg1)
    print("OnSubFinish400501")
    this:ActorDestroy("Q4005Trigger")
end

function Quest4005:OnSubStart400515(arg1)
    print("OnSubStart400515")
end

function Quest4005:OnSubFinish400515(arg1)
    print("OnSubFinish400515")
end

function Quest4005:OnSubStart400514(arg1)
    print("OnSubStart400514")
end

function Quest4005:OnSubFinish400514(arg1)
    print("OnSubFinish400514")
end

function Quest4005:OnSubStart400502(arg1)
    print("OnSubStart400502")
    this:CreateQuestNpc(arg1, npcs.Npc5033Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5033Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5079Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005Trigger5", "Actor/Gadget/Q4005Trigger5", 70900002, 0, points.TPos_Q4005Trigger5.pos, points.TPos_Q4005Trigger5.rot, true, false, 3)
end

function Quest4005:OnSubFinish400502(arg1)
    print("OnSubFinish400502")
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:ActorDestroy("Q4005Trigger5")
end

function Quest4005:OnSubStart400518(arg1)
    print("OnSubStart400518")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1026Data_01.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1026Data.alias)
        questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
        questNpcActor:SetPlayerNpcEnergy()
        this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest4005:OnSubFinish400518(arg1)
    print("OnSubFinish400518")
    this:SafeDestroyQuestNpc(npcs.Npc1026Data_01.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest4005:OnSubFailed400518(arg1)
    print("OnSubFailed400518")
    this:SafeDestroyQuestNpc(npcs.Npc1026Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest4005:OnSubStart400517(arg1)
    print("OnSubStart400517")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1025Data_01.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1025Data.alias)
        questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, false)
        questNpcActor:SetPlayerNpcEnergy()
        this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    end)
end

function Quest4005:OnSubFinish400517(arg1)
    print("OnSubFinish400517")
    this:SafeDestroyQuestNpc(npcs.Npc1025Data_01.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest4005:OnSubFailed400517(arg1)
    print("OnSubFailed400517")
    this:SafeDestroyQuestNpc(npcs.Npc1025Data_01.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest4005:OnSubStart400503(arg1)
    print("OnSubStart400503")
    this:NotifyTo(npcs.Npc5079Data.alias, 1, true)
end

function Quest4005:OnSubFinish400503(arg1)
    print("OnSubFinish400503")
end

function Quest4005:OnSubStart400504(arg1)
    print("OnSubStart400504")
    this:CallDelayByQuest("400504", 2, function(arg1)
        this:CreateQuestNpcWithTriggerBlack("400504tri", 400504, 10200, 0, 30, 1)
    end)

    this:NotifyTo(npcs.Npc5079Data.alias, 1, true)
end

function Quest4005:OnSubFinish400504(arg1)
    print("OnSubFinish400504")
    this:ActorDestroy("400504tri")
    this:DestroyQuestNpcActor(npcs.Npc10200Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc5033Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5079Data.alias, 0, true)
    this:TransmitPlayerWithDialogTextByQuestId(400504, 1, datas.DialogsId, 5)
end

function Quest4005:OnSubStart400505(arg1)
    print("OnSubStart400505")
    this:CreateQuestNpcWithTriggerBlack("400505tri", 400505, 1005, 0, 10, 1)
end

function Quest4005:OnSubFinish400505(arg1)
    print("OnSubFinish400505")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)

    this:ActorDestroy("400505tri")
end

function Quest4005:OnSubStart400506(arg1)
    print("OnSubStart400506")
    actorMgr:CreateActorWithPos("Q4005Trigger8", "Actor/Gadget/Q4005Trigger8", 70900002, 0, points.TPos_Q4005Trigger8.pos, points.TPos_Q4005Trigger8.rot, true, false, 3)
end

function Quest4005:OnSubFinish400506(arg1)
    print("OnSubFinish400506")
    this:ActorDestroy("Q4005Trigger8")
end

function Quest4005:OnSubStart400507(arg1)
    print("OnSubStart400507")
    actorMgr:CreateActorWithPos("Q4005Trigger3", "Actor/Gadget/Q4005Trigger3", 70900002, 0, points.TPos_Q4005Trigger3.pos, points.TPos_Q4005Trigger3.rot, true, false, 3)
end

function Quest4005:OnSubFinish400507(arg1)
    print("OnSubFinish400507")
    this:ActorDestroy("Q4005Trigger3")
end

function Quest4005:OnSubStart400508(arg1)
    print("OnSubStart400508")
    actorMgr:CreateActorWithPos("Q4005Trigger4", "Actor/Gadget/Q4005Trigger4", 70900002, 0, points.TPos_Q4005Trigger4.pos, points.TPos_Q4005Trigger4.rot, true, false, 3)
end

function Quest4005:OnSubFinish400508(arg1)
    print("OnSubFinish400508")
    this:ActorDestroy("Q4005Trigger4")
end

function Quest4005:OnSubStart400509(arg1)
    print("OnSubStart400509")
    this:CreateQuestNpc(arg1, npcs.Npc5104Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5105Data.id, 0)
    actorMgr:CreateActorWithPos("Q4005Trigger1", "Actor/Gadget/Q4005Trigger1", 70900002, 0, {x = 3474.203, y = 459.364, z = 3661.642}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5104Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5105Data.alias):DoFreeStyle(4000, true, nil, true, true, false, false)
end

function Quest4005:OnSubFinish400509(arg1)
    print("OnSubFinish400509")
    this:ActorDestroy("Q4005Trigger1")
    this:SafeDestroyQuestNpc(npcs.Npc5104Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5105Data.alias, 3)
end

function Quest4005:OnSubStart400510(arg1)
    print("OnSubStart400510")
    this:CreateQuestNpcWithTriggerBlackEx("400510tri", 400510, 1071, 0, 30, 0, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4005:OnSubFinish400510(arg1)
    print("OnSubFinish400510")
    this:ActorDestroy("400510tri")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 1085)
end

function Quest4005:OnSubStart400511(arg1)
    print("OnSubStart400511")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):SitOnChair(0, true)
    actorMgr:CreateActorWithPos("Q4005Trigger2", "Actor/Gadget/Q4005Trigger2", 70900002, 0, points.TPos_Q4005Trigger2.pos, points.TPos_Q4005Trigger2.rot, true, false, 1085)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4005:OnSubFinish400511(arg1)
    print("OnSubFinish400511")
    this:ActorDestroy("Q4005Trigger2")
end

function Quest4005:OnSubStart400516(arg1)
    print("OnSubStart400516")
end

function Quest4005:OnSubFinish400516(arg1)
    print("OnSubFinish400516")
end

function Quest4005:OnSubStart400512(arg1)
    print("OnSubStart400512")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):SitOnChair(0, true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005Trigger6", "Actor/Gadget/Q4005Trigger6", 70900002, 0, points.TPos_Q4005Trigger6.pos, points.TPos_Q4005Trigger6.rot, true, false, 1085)
end

function Quest4005:OnSubFinish400512(arg1)
    print("OnSubFinish400512")
    this:ActorDestroy("400512tri")
    this:ActorDestroy("Q4005Trigger6")
end

function Quest4005:OnSubStart400513(arg1)
    print("OnSubStart400513")
    this:CreateQuestNpc(arg1, npcs.Npc1076Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):SitOnChair(0, true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4005Trigger7", "Actor/Gadget/Q4005Trigger7", 70900002, 0, points.TPos_Q4005Trigger7.pos, points.TPos_Q4005Trigger7.rot, true, false, 1085)
end

function Quest4005:OnSubFinish400513(arg1)
    print("OnSubFinish400513")
    this:ActorDestroy("400512tri")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 1085)
    this:ActorDestroy("Q4005Trigger7")
end

return Quest4005
