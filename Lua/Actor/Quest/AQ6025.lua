require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6025 = class("Quest6025", QuestActorProxy)
Quest6025.defaultAlias = "Quest6025"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest6025:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest6025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602501"] = self.OnSubStart602501,
        ["602502"] = self.OnSubStart602502,
        ["602503"] = self.OnSubStart602503,
        ["602504"] = self.OnSubStart602504,
        ["602505"] = self.OnSubStart602505,
        ["602507"] = self.OnSubStart602507,
        ["602508"] = self.OnSubStart602508,
        ["602509"] = self.OnSubStart602509,
        ["602510"] = self.OnSubStart602510,
        ["602513"] = self.OnSubStart602513,
        ["602514"] = self.OnSubStart602514,
        ["602515"] = self.OnSubStart602515,
        ["602511"] = self.OnSubStart602511,
        ["602512"] = self.OnSubStart602512,
        ["602506"] = self.OnSubStart602506
    }
end

function Quest6025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602501"] = self.OnSubFinish602501,
        ["602502"] = self.OnSubFinish602502,
        ["602503"] = self.OnSubFinish602503,
        ["602504"] = self.OnSubFinish602504,
        ["602505"] = self.OnSubFinish602505,
        ["602507"] = self.OnSubFinish602507,
        ["602508"] = self.OnSubFinish602508,
        ["602509"] = self.OnSubFinish602509,
        ["602510"] = self.OnSubFinish602510,
        ["602513"] = self.OnSubFinish602513,
        ["602514"] = self.OnSubFinish602514,
        ["602515"] = self.OnSubFinish602515,
        ["602511"] = self.OnSubFinish602511,
        ["602512"] = self.OnSubFinish602512,
        ["602506"] = self.OnSubFinish602506
    }
end

function Quest6025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest6025:Start()
    print("Start")
end

function Quest6025:OnDestroy()
    print("OnDestroy")
end

function Quest6025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6025:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6025:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest6025:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6025:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6025:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6025:OnMainPaused(arg1) end

function Quest6025:OnSubStart602501(arg1)
    print("OnSubStart602501")
    this:NpcCreateWithNpcTrigger(npcs.Npc7000.id, 0, 8, 602501)
end

function Quest6025:OnSubFinish602501(arg1)
    print("OnSubFinish602501")
end

function Quest6025:OnSubStart602502(arg1)
    print("OnSubStart602502")
    this:RequestInteractionWithCameraLookTrigger("Q602502T602502", 602502, npcs.Npc1318.alias, 3, {x = 2146.809, y = 111.994, z = 11212.58}, 35, 602502, true, false)
    this:DeployStoryByQuest(110602502)
end

function Quest6025:OnSubFinish602502(arg1)
    print("OnSubFinish602502")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7000.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_Black_6025, 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId602501, nil)
    end, nil, nil)

    this:CancelStoryByQuest(110602502)
end

function Quest6025:OnSubStart602503(arg1)
    print("OnSubStart602503")
    this:RequestInteractionWithCameraLookTrigger("Q602503T602503", 602503, npcs.Npc1315.alias, 3, {x = 1766.11, y = 222.35, z = 10423.76}, 15, 602503, true, false)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 6025):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1310.alias, 6025):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7096.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7098.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7099.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7100.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc7105.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16268.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16268.alias, 6025):DisableInteeHeadCtrl(true)
end

function Quest6025:OnSubFinish602503(arg1)
    print("OnSubFinish602503")
    this:ClearNarratorTask()
end

function Quest6025:OnSubStart602504(arg1)
    print("OnSubStart602504")
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16268.alias, 6025):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602504)
end

function Quest6025:OnSubFinish602504(arg1)
    print("OnSubFinish602504")
    this:CancelStoryByQuest(110602504)
end

function Quest6025:OnSubStart602505(arg1)
    print("OnSubStart602505")
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16268.alias, 6025):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602505)
end

function Quest6025:OnSubFinish602505(arg1)
    print("OnSubFinish602505")
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 3)
    this:CancelStoryByQuest(110602505)
end

function Quest6025:OnSubStart602507(arg1)
    print("OnSubStart602507")
    this:NpcCreateWithNpcTrigger(npcs.Npc1314.id, 0, 26, 602507)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7098.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7099.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7100.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7105.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16268.alias, 6025):DisableInteeHeadCtrl(true)
end

function Quest6025:OnSubFinish602507(arg1)
    print("OnSubFinish602507")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7098.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7099.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7100.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7105.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16268.alias, 3)
end

function Quest6025:OnSubStart602508(arg1)
    print("OnSubStart602508")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 602508, 30, true)
    this:CreateQuestNpc(arg1, npcs.Npc1018.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
end

function Quest6025:OnSubFinish602508(arg1)
    print("OnSubFinish602508")
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1310.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1320.alias, 1205)
end

function Quest6025:OnSubStart602509(arg1)
    print("OnSubStart602509")
    this:CreateQuestNpc(arg1, npcs.Npc15954.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15955.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DoFreeStyle(1231, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15956.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15959.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15960.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15960.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15961.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15962.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc16057.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1317.alias, 6025):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(602509, 0, 40, 1, npcs.Npc16041_1.id)
    this:DeployStoryByQuest(110602509)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 6025):SitOnChair(0, true)
end

function Quest6025:OnSubFinish602509(arg1)
    print("OnSubFinish602509")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc1317.alias, 1205)
    this:SafeDestroyQuestNpc(npcs.Npc16041_1.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest6025:OnSubStart602510(arg1)
    print("OnSubStart602510")
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DoFreeStyle(1231, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15960.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc16057.id, 0, 15, 602510)
    this:DeployStoryByQuest(110602509)
end

function Quest6025:OnSubFinish602510(arg1)
    print("OnSubFinish602510")
end

function Quest6025:OnSubStart602513(arg1)
    print("OnSubStart602513")
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15960.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DoFreeStyle(1231, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15954.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602509)
end

function Quest6025:OnSubFinish602513(arg1)
    print("OnSubFinish602513")
end

function Quest6025:OnSubStart602514(arg1)
    print("OnSubStart602514")
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15960.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15956.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DoFreeStyle(1231, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602509)
end

function Quest6025:OnSubFinish602514(arg1)
    print("OnSubFinish602514")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest6025:OnSubStart602515(arg1)
    print("OnSubStart602515")
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc15961.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15962.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15960.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15959.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15956.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DoFreeStyle(1231, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15955.alias, 6025):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15954.alias, 6025):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc16041_1.id, 0, 15, 602515)
    this:DeployStoryByQuest(110602509)
end

function Quest6025:OnSubFinish602515(arg1)
    print("OnSubFinish602515")
    this:SafeDestroyQuestNpc(npcs.Npc15961.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15962.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16057.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15960.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15959.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15956.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15955.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15954.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16041_1.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_Black_6025, 2, nil, nil, nil)
    this:CancelStoryByQuest(110602509)
end

function Quest6025:OnSubStart602511(arg1)
    print("OnSubStart602511")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1314.id, 0, 602511, 20, true)
end

function Quest6025:OnSubFinish602511(arg1)
    print("OnSubFinish602511")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:RecycleAllRes()
end

function Quest6025:OnSubStart602512(arg1)
    print("OnSubStart602512")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 602512, 30, true)
end

function Quest6025:OnSubFinish602512(arg1)
    print("OnSubFinish602512")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
end

function Quest6025:OnSubStart602506(arg1)
    print("OnSubStart602506")
end

function Quest6025:OnSubFinish602506(arg1)
    print("OnSubFinish602506")
end

return Quest6025
